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
	test VARCHAR(10)
);

CREATE TABLE appointments (
	test VARCHAR(10)
);