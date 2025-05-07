# AutoRiaScraper:

Це застосунок для парсингу оголошень з AutoRia і збереження їх у базу даних PostgreSQL.
Додаток також підтримує створення дампів бази даних для резервного копіювання.
Застосунок налаштовано на автоматичний запуск щодня о 12:00, після чого виконується парсинг нових оголошень і створення дампу бази даних.

## 📂 Структура проєкту:

AutoRiaScraper/
  dumps/                   # Папка для збереження дампів бази даних
  src/
    scraper.py             # Модуль для парсингу оголошень
    schemas.py             # Модуль зі схемами даних (Pydantic)
    dump.py                # Модуль для створення дампів бази даних
    database/
      models.py            # Опис ORM-моделей для SQLAlchemy
      connection.py        # Налаштування підключення до бази даних
    main.py                # Головний скрипт для запуску застосунку
  requirements.txt         # Список Python-залежностей
  .gitignore               # Файл для виключення зайвих файлів з Git
  Dockerfile               # Dockerfile для контейнеризації застосунку
  docker-compose.yml       # Docker Compose файл для запуску додатку з базою даних
  .env                     # Конфігураційний файл для змінних середовища
  README.md                # Опис проєкту та інструкції


## 🚀 Швидкий старт:

### Клонування репозиторію:
git clone https://github.com/Vasyl-Hlushchenko/AutoRiaParser
cd AutoRiaScraper

### Запустіть додаток у Docker:
docker-compose up --build


### Чи локальний запуск (без Docker):
#### Створіть віртуальне середовище:
python -m venv venv
#### Активуйте його:
.\venv\Scripts\activate
#### Встановіть залежності:
pip install -r requirements.txt
#### Локальний запуск:
python -m src.main
