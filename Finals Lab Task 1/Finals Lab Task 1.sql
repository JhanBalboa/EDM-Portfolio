CREATE DATABASE Multilevel_Company;
USE Multilevel_Company;

## Task 1

CREATE TABLE employees(
employee_id INT AUTO_INCREMENT PRIMARY KEY,
employee_name VARCHAR(255) NOT NULL,
manager_id INT,
FOREIGN KEY (manager_id) REFERENCES employees(employee_id) ON UPDATE CASCADE);

DESCRIBE employees;

## Task 2

CREATE TABLE departments (
department_id INT AUTO_INCREMENT PRIMARY KEY,
department_name VARCHAR (255) NOT NULL);

DESCRIBE departments;

## Task 3

CREATE TABLE employee_departments(employee_id INT, department_id INT,
PRIMARY KEY (employee_id,department_id),
foreign key (employee_id) references employees (employee_id) ON UPDATE CASCADE,
foreign key (department_id) references departments (department_id) ON UPDATE CASCADE);

DESCRIBE employee_departments;

## Task 4

CREATE TABLE employee_projects (
project_id INT AUTO_INCREMENT PRIMARY KEY, 
employee_id INT,
project_name VARCHAR(255) NOT NULL,
FOREIGN KEY (employee_id) REFERENCES employees(employee_id) ON UPDATE CASCADE);

DESCRIBE employee_projects;

## Task 5

CREATE TABLE managers (
manager_id INT AUTO_INCREMENT PRIMARY KEY, employee_id INT,
foreign key (employee_id) references employees (employee_id) on update cascade
);

DESCRIBE managers;





