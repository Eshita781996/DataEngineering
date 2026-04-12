-- DDL for Employees by Department: Table to find department with highest average salary.
-- Sample: Dept A avg 85k, Dept B avg 80k; A has highest

CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    dept VARCHAR(50),
    salary DECIMAL(10,2)
);

INSERT INTO Employees (emp_id, emp_name, dept, salary) VALUES
(1, 'Alice', 'A', 100000),
(2, 'Bob', 'A', 80000),
(3, 'Charlie', 'A', 70000),
(4, 'David', 'B', 90000),
(5, 'Eve', 'B', 70000);
