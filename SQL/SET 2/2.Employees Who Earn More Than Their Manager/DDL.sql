-- DDL for Employees with Managers: Table for hierarchy to compare salaries with managers.
-- Sample: Alice (manager) earns 100k, Bob (subordinate) earns 110k > Alice

CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    manager_id INT,
    salary DECIMAL(10,2),
    FOREIGN KEY (manager_id) REFERENCES Employees(emp_id)
);

INSERT INTO Employees (emp_id, emp_name, manager_id, salary) VALUES
(1, 'Alice', NULL, 100000),
(2, 'Bob', 1, 110000),
(3, 'Charlie', 1, 90000),
(4, 'David', 2, 105000);
