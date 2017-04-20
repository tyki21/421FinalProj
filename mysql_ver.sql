/* Creates and uses the database 'shop' */
SHOW databases;
CREATE DATABASE shop;
USE shop;

/* Creation of tables */
CREATE TABLE customers (
	cust_id INTEGER NOT NULL AUTO_INCREMENT,
    cust_fname VARCHAR(30) NOT NULL,
    cust_lname VARCHAR(30) NOT NULL,
    cust_phone VARCHAR(10),
    PRIMARY KEY (cust_id)
);

CREATE TABLE employees (
	emp_id INTEGER NOT NULL AUTO_INCREMENT,
    emp_fname VARCHAR(30) NOT NULL,
    emp_lname VARCHAR(30) NOT NULL,
    emp_phone VARCHAR(10),
    PRIMARY KEY (emp_id)
);

CREATE TABLE services (
	service_id INTEGER NOT NULL AUTO_INCREMENT,
    service_name VARCHAR(50) NOT NULL,
    service_price DOUBLE NOT NULL,
    PRIMARY KEY (service_id)
);

CREATE TABLE appointments (
	appointment_id INTEGER NOT NULL AUTO_INCREMENT,
    cust_id INTEGER NOT NULL,
    emp_id INTEGER NOT NULL,
    service_id INTEGER NOT NULL,
    PRIMARY KEY (appointment_id),
    FOREIGN KEY fk_cust_id (cust_id) REFERENCES customers(cust_id),
    FOREIGN KEY fk_emp_id (emp_id) REFERENCES employees(cust_id),
    FOREIGN KEY fk_service_id (service_id) REFERENCES services(cust_id)
);