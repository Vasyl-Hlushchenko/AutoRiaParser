from datetime import datetime
from pydantic import BaseModel


class BaseModelPopulated(BaseModel):
    class Config:
        validate_by_name = True
        from_attributes = True
        
        
class CarDetail(BaseModelPopulated):
    url: str
    title: str
    price_usd: int | None = None
    odometer: float | None = None
    username: str | None = None
    phone_numbers: list[str]
    image_url: str | None = None
    image_count: int | None = None
    car_number: str | None = None
    car_vin: str | None = None
    datetime_found: datetime = datetime.now()
    