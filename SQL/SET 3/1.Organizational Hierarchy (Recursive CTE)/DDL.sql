-- DDL for Organizational Hierarchy: Table to store employees with their managers for recursive CTE queries.
-- Sample hierarchy: Alice (CEO) -> Bob/Charlie (Managers) -> David/Eve/Frank/Grace (Employees)

CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    manager_id INT,
    FOREIGN KEY (manager_id) REFERENCES Employees(emp_id)
);

INSERT INTO Employees (emp_id, emp_name, manager_id) VALUES
(1, 'Alice', NULL),  -- CEO, no manager
(2, 'Bob', 1),       -- Manager under Alice
(3, 'Charlie', 1),   -- Manager under Alice
(4, 'David', 2),     -- Employee under Bob
(5, 'Eve', 2),       -- Employee under Bob
(6, 'Frank', 3),     -- Employee under Charlie
(7, 'Grace', 3);     -- Employee under Charlie
