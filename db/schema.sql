DROP DATABASE IF EXISTS employee_db;
CREATE DATABASE employee_db;
USE employee_db; 

CREATE TABLE department (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL
);

CREATE TABLE role (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(30) NOT NULL, 
    salary INTEGER NOT NULL,
    department_id INTEGER, 
    INDEX dep_ind (department_id),
   FOREIGN KEY (department_id) REFERENCES department(id) 
);

CREATE TABLE employee (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INTEGER, 
    INDEX role_ind (role_id),
   FOREIGN KEY (role_id) REFERENCES role(id) ,
    manager_id INTEGER,
    FOREIGN KEY (manager_id) REFERENCES employee(id) 
);