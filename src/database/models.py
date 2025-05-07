import logging
from datetime import datetime
from sqlalchemy import ForeignKey
from sqlalchemy.orm import Mapped, mapped_column, relationship, DeclarativeBase

from src.database.connection import engine

logging.basicConfig(level=logging.INFO, format="%(asctime)s - %(levelname)s - %(message)s")


class Base(DeclarativeBase):
    pass


class CarDB(Base):
    __tablename__ = "cars"

    id: Mapped[int] = mapped_column(primary_key=True, index=True)
    url: Mapped[str] = mapped_column(unique=True, index=True)
    title: Mapped[str]
    price_usd: Mapped[int | None] = mapped_column(nullable=True)
    odometer: Mapped[float | None] = mapped_column(nullable=True)
    username: Mapped[str | None] = mapped_column(nullable=True)
    image_url: Mapped[str | None] = mapped_column(nullable=True)
    image_count: Mapped[int | None] = mapped_column(nullable=True)
    car_number: Mapped[str | None] = mapped_column(nullable=True)
    car_vin: Mapped[str | None] = mapped_column(nullable=True)
    datetime_found: Mapped[datetime] = mapped_column(default=datetime.utcnow)

    phones: Mapped[list["CarPhoneDB"]] = relationship(
        back_populates="car", cascade="all, delete-orphan"
    )


class CarPhoneDB(Base):
    __tablename__ = "car_phones"

    id: Mapped[int] = mapped_column(primary_key=True, index=True)
    car_id: Mapped[int] = mapped_column(ForeignKey("cars.id", ondelete="CASCADE"))
    phone_number: Mapped[str]

    car: Mapped["CarDB"] = relationship(back_populates="phones")
