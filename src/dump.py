import os
import subprocess
import logging
from datetime import datetime
from dotenv import load_dotenv

load_dotenv()
logging.basicConfig(level=logging.INFO)
logger = logging.getLogger(__name__)

DATABASE_URL = os.getenv('DATABASE_URL')


def create_dump() -> None:
    dump_dir = os.path.join(os.getcwd(), 'dumps')
    os.makedirs(dump_dir, exist_ok=True)

    dump_filename = f"db_dump_{datetime.now().strftime('%Y_%m_%d_%H_%M')}.sql"
    dump_path = os.path.join(dump_dir, dump_filename)

    command = [
        "pg_dump", DATABASE_URL, "-f", dump_path
    ]

    try:
        subprocess.run(command, check=True)
        logger.info(f"Dump created successfully at {dump_path}")
    except subprocess.CalledProcessError as e:
        logger.error(f"Error occurred while creating the dump: {e}")
