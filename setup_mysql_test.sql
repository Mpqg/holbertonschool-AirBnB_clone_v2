-- Creates a MySQL database for the application:
-- 1. Creates a database hbnb_test_db
-- 2. Creates a user hbnb_test with password hbnb_test_pwd in localhost
-- 3. Grants all privileges on hbnb_test to hbnb_test_db
-- 4. Grants SELECT privilege for hbnb_test on performance_schema.
-- User hbnb_test has all permissions on hbnb_test_db

CREATE DATABASE IF NOT EXISTS hbnb_test_db;
CREATE USER 
	IF NOT EXISTS 'hbnb_test'@'localhost' 
	IDENTIFIED BY 'hbnb_test_pwd';
GRANT ALL PRIVILEGES 
ON `hbnb_test_db`.* TO 'hbnb_test'@'localhost' IDENTIFIED BY 'hbnb_test_pwd';
GRANT SELECT ON `performance_schema`.* TO 'hbnb_test'@'localhost' IDENTIFIED BY 'hbnb_test_pwd';
FLUSH PRIVILEGES;
