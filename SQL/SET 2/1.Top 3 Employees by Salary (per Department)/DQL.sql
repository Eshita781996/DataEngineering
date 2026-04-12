WITH RankedEmployees AS (
    SELECT 
        emp_id,
        emp_name,
        dept,
        salary,
        ROW_NUMBER() OVER (PARTITION BY dept ORDER BY salary DESC) AS rn
    FROM Employees
)
SELECT emp_id, emp_name, dept, salary
FROM RankedEmployees
WHERE rn <= 3
ORDER BY dept, rn;
