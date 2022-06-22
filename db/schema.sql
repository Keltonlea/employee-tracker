

DROP DATABASE IF EXISTS employee_db;
CREATE DATABASE employee_db;
USE employee_db; 

CREATE TABLE department (
    id INT AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(30),
);

CREATE TABLE role (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(30), 
    salary DECIMAL (8, 2),
    department_id INT, 
    INDEX dep_ind (department_id),
    FOREIGN KEY (department_id) REFERENCES department(id) ON DELETE SET NULL
    
);

CREATE TABLE employee (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INT, 
    INDEX role_ind (role_id),
    FOREIGN KEY (role_id) REFERENCES role(id) ON DELETE SET NULL,
    manager_id INT,
    INDEX manager_ind (manager_id),
    FOREIGN KEY (manager_id) REFERENCES employee(id) ON DELETE SET NULL
);