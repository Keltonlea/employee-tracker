

INSERT INTO department (name)
VALUES 
('IT'),
('Finance'),
('Sales'),
('Operations');

INSERT INTO role (title, salary, department_id)
VALUES
('Developer', 70000, 1),
('Software Engineer', 130000, 1),
('Accountant', 50000, 2), 
('Finanical Advisor', 80000, 2),
('Marketing Director', 120000, 3), 
('Sales Manager', 90000, 3),
('Project Manager', 100000, 4),
('Operations Manager', 90000, 4);


INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES 
('David', 'Davidson', 2, null),
('Carter', 'Smith', 1, 1),
('Michelle', 'Smith', 4, null),
('Ashley', 'Jones', 3, 3),
('Tyler', 'Poole', 6, null),
('Jessica', 'Sanchez', 5, 5),
('Mickey', 'Geller', 7, null),
('John', 'Hardy', 8, 7);
