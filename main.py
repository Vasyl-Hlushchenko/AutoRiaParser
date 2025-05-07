import logging
import os
from apscheduler.schedulers.blocking import BlockingScheduler
from apscheduler.triggers.cron import CronTrigger
from dotenv import load_dotenv

from src.database.connection import get_db
from src.database.models import Base, engine
from src.scraper import AutoRiaScraper
from src.dump import create_dump

load_dotenv()
logging.basicConfig(level=logging.INFO)
logger = logging.getLogger(__name__)

START_URL = os.getenv('START_URL')


def process_and_store() -> None:
    scraper = AutoRiaScraper(START_URL)
    scraper.scrape()
    scraper.process_and_store(next(get_db()))


def run_daily_tasks() -> None:
    try:
        logger.info("Running daily scraping and storing process")
        process_and_store()

        logger.info("Creating database dump")
        create_dump()

    except Exception as e:
        logger.error(f"An error occurred: {e}")



if __name__ == "__main__":
    Base.metadata.create_all(bind=engine)
    logger.info("Tables checked/created")
    
    scheduler = BlockingScheduler()
    scheduler.add_job(run_daily_tasks, CronTrigger(hour=12, minute=0, second=0))
    logger.info("Scheduler started. Waiting for scheduled tasks")
    scheduler.start()
