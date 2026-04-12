-- DDL for Employees Salaries: Table to find 2nd highest unique salary without MAX or TOP.
-- Sample: Salaries 100k,90k,80k,70k; 2nd highest is 90k

CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    salary DECIMAL(10,2)
);

INSERT INTO Employees (emp_id, emp_name, salary) VALUES
(1, 'Alice', 100000),
(2, 'Bob', 90000),
(3, 'Charlie', 80000),
(4, 'David', 70000);
