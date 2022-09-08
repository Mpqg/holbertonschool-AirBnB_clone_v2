--Creates a MySQL database for the application:
-- 1. Creates a database hbnb_dev_db
-- 2. Creates a user hbnb_dev with password hbnb_dev_pwd in localhost
-- 3. Grants all privileges on hbnb_dev_db to hbnb_dev
-- 4. Grants SELECT privilege for hbnb_dev on performance_schema.

CREATE DATABASE IF NOT EXISTS hbnb_dev_db;
CREATE USER 
	IF NOT EXISTS 'hbnb_dev'@'localhost' 
	IDENTIFIED BY 'hbnb_dev_pwd';
GRANT ALL PRIVILEGES ON `hbnb_dev_db`.* TO 'hbnb_dev'@'localhost' IDENTIFIED BY 'hbnb_dev_pwd';
GRANT SELECT ON `performance_schema`.* TO 'hbnb_dev'@'localhost' IDENTIFIED BY 'hbnb_dev_pwd';
FLUSH PRIVILEGES;
