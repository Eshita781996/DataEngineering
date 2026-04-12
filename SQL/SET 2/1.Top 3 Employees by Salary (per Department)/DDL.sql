-- DDL for Employees by Department: Table to store employee salaries for ranking top 3 per department.
-- Sample: Dept A has salaries 100k,90k,80k,70k; top 3 are 100k,90k,80k

CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    dept VARCHAR(50),
    salary DECIMAL(10,2)
);

INSERT INTO Employees (emp_id, emp_name, dept, salary) VALUES
(1, 'Alice', 'A', 100000),
(2, 'Bob', 'A', 90000),
(3, 'Charlie', 'A', 80000),
(4, 'David', 'A', 70000),
(5, 'Eve', 'B', 95000),
(6, 'Frank', 'B', 85000),
(7, 'Grace', 'B', 75000);
