import os
import re
import pandas as pd
import logging
import requests
from bs4 import BeautifulSoup
from dotenv import load_dotenv
from sqlalchemy.orm import Session
from sqlalchemy import select

from src.database.connection import get_db
from src.database.models import CarDB, CarPhoneDB
from src.schemas import CarDetail

load_dotenv()
logging.basicConfig(level=logging.INFO)

START_URL = os.getenv('START_URL')
PHONE_URL = os.getenv('PHONE_URL')
CAR_PHOTOS_URL = os.getenv('CAR_PHOTOS_URL')
HEADERS = {'User-Agent': 'Mozilla/5.0'}


def clean_phone_number(phone_number: str | None) -> str | None:
    if not phone_number:
        return None
    digits_only = re.sub(r'\D', '', phone_number)
    return '+3' + digits_only


def get_odometer(raw_text: str) -> int | None:
    odometer = re.sub(r'[^\d]', '', raw_text)
    return 1000 * int(odometer) if odometer else None


def get_seller_id(url: str) -> str:
    match = re.search(r'(\d+)(?=\.html$)', url)
    return match.group(1) if match else ''


class AutoRiaScraper:
    def __init__(self, start_url: str) -> None:
        self.start_url = start_url
        self.car_list = []

    def get_soup(self, url: str) -> BeautifulSoup | None:
        try:
            response = requests.get(url)
            response.raise_for_status()
            return BeautifulSoup(response.text, 'html.parser')
        except requests.exceptions.HTTPError as e:
            if response.status_code == 404:
                logging.warning(f"Page not found (404): {url}")
                return None
            else:
                logging.error(f"HTTP error at {url}: {e}")
                return None
        except requests.exceptions.RequestException as e:
            logging.error(f"Request failed at {url}: {e}")
            return None

    def scrape(self) -> None:
        page = 1
        while True:
            url = f"{self.start_url}?page={page}"
            logging.info(f"Scraping page: {url}")
            soup = self.get_soup(url)
            
            if not soup:
                break

            listings = soup.select('.ticket-item')
            if not listings:
                break

            for item in listings:
                car_url = item.select_one('.address').get('href')
                if not car_url or 'newauto' in car_url:
                    continue
                car = self.scrape_car_detail(car_url)
                if car:
                    self.car_list.append(car.model_dump())
            page += 1
        
    def process_and_store(self, session: Session):
        if not self.car_list:
            logging.info("No cars scraped; skipping database processing")
            return

        df_new = pd.DataFrame(self.car_list)

        existing_urls = session.scalars(select(CarDB.url)).all()
        existing_urls_set = set(existing_urls)

        new_records_df = df_new[~df_new['url'].isin(existing_urls_set)]

        if new_records_df.empty:
            logging.info("No new records to add")
            return

        new_objects = []
        new_records = new_records_df.to_dict(orient='records')
        for new_record_dict in new_records:
            car_detail = CarDetail(**new_record_dict)
            car_data = car_detail.model_dump(exclude={'phone_numbers'}, exclude_none=True)
            car_obj = CarDB(**car_data)
            car_obj.phones = [CarPhoneDB(phone_number=phone) for phone in car_detail.phone_numbers]

            new_objects.append(car_obj)
            
        session.add_all(new_objects)
        session.commit()
        logging.info(f"Added {len(new_objects)} new records to the database")

    def scrape_car_detail(self, car_url: str) -> CarDetail | None:
        try:
            soup = self.get_soup(car_url)

            title = soup.select_one('h1').text.strip()
            price_usd = int(re.sub(r'[^\d]', '', soup.select_one('.price_value').text))
            odometer_text = soup.select_one('div.bold.dhide').text
            odometer = get_odometer(odometer_text)
            username = self.parse_seller_name(soup)
            car_id = get_seller_id(car_url)

            script_tag = soup.find('script', class_=re.compile(r'js-user-secure-\d+'))
            if not script_tag:
                logging.warning(f"No script tag for {car_url}")
                return None

            data_hash = script_tag.get('data-hash')
            data_expires = script_tag.get('data-expires')

            phone_numbers = self.get_phone_numbers(car_id, data_hash, data_expires)
            image_count, image_url = self.get_car_images_info(int(car_id))

            car_number = self.get_car_number(soup)
            car_vin = self.get_vin_code(soup)

            return CarDetail(
                url=car_url,
                title=title,
                price_usd=price_usd,
                odometer=odometer,
                username=username,
                phone_numbers=phone_numbers,
                image_url=image_url,
                image_count=image_count,
                car_number=car_number,
                car_vin=car_vin,
            )

        except Exception as e:
            logging.error(f"Error scraping {car_url}: {e}")
            return None

    def parse_seller_name(self, soup: BeautifulSoup) -> str:
        img_tag = soup.select_one('.seller_info_img img')
        if img_tag:
            raw_title = img_tag.get('title', '') or img_tag.get('alt', '')
            clean_name = raw_title.replace(': «', '').strip()
            return clean_name
        return ''

    def get_phone_numbers(self, seller_id: str, hash_value: str, expires: str) -> list[str]:
        url = PHONE_URL.format(seller_id=seller_id)
        params = {"hash": hash_value, "expires": expires}
        response = requests.get(url, params=params, headers=HEADERS)
        if response.ok:
            data = response.json()
            phones = data.get("phones", [])
            return [clean_phone_number(phone["phoneFormatted"]) for phone in phones]
        else:
            logging.warning(f"Failed to get phones for seller {seller_id}, status: {response.status_code}")
            return []

    def get_car_images_info(self, car_id: int) -> tuple[int, str | None]:
        url = CAR_PHOTOS_URL.format(car_id=car_id)

        try:
            response = requests.get(url, timeout=10)
            response.raise_for_status()
        except requests.RequestException as e:
            logging.warning(f"Failed to fetch data: {e}")
            return 0, None

        data = response.json()
        photo_list = data.get("photo", [])
        large_image_urls = [photo.get("large") for photo in photo_list if photo.get("large")]
        image_count = len(large_image_urls)
        image_url = large_image_urls[1] if image_count > 1 else None
        return image_count, image_url

    def get_car_number(self, soup: BeautifulSoup) -> str | None:
        state_num_tag = soup.select_one('span.state-num.ua')
        if state_num_tag:
            raw_number = state_num_tag.find(string=True, recursive=False).strip()
            clean_number = re.sub(r'\s+', '', raw_number)
            return clean_number
        return None

    def get_vin_code(self, soup: BeautifulSoup) -> str | None:
        vin_tag = soup.select_one('span.label-vin')
        if vin_tag:
            vin = vin_tag.find(string=True, recursive=False).strip()
            return vin
        return None


if __name__ == '__main__':
    scraper = AutoRiaScraper(START_URL)
    scraper.scrape()
    scraper.process_and_store(next(get_db()))
