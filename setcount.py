import config
import db
import utils

db_connection = db.DbAccess(config.DATABASE_FILE_PATH)
connection = db_connection.get_connection()
db_connection.set_count(connection, 'pass.vaccine-ontario.ca', 21)