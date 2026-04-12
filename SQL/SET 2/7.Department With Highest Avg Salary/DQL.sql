SELECT TOP 1 dept, AVG(salary) AS avg_salary
FROM Employees
GROUP BY dept
ORDER BY avg_salary DESC;
