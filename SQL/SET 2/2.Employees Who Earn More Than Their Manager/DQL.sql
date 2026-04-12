SELECT e.emp_name AS employee, e.salary AS emp_salary, m.emp_name AS manager, m.salary AS mgr_salary
FROM Employees e
JOIN Employees m ON e.manager_id = m.emp_id
WHERE e.salary > m.salary;
