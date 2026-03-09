WITH ranked_employees AS (
    SELECT *,
           ROW_NUMBER() OVER (PARTITION BY role ORDER BY score DESC) AS rn
    FROM employees
)

SELECT emp_id, name, role, score
FROM ranked_employees
WHERE 
    (role = 'Manager' AND rn <= 1)
    OR
    (role = 'Senior' AND rn <= 2)
    OR
    (role = 'Junior' AND rn <= 3)
ORDER BY role, score DESC;