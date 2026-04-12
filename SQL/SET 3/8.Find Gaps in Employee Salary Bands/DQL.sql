SELECT 
    id,
    min_salary,
    max_salary,
    LEAD(min_salary) OVER (ORDER BY min_salary) AS next_min,
    CASE WHEN LEAD(min_salary) OVER (ORDER BY min_salary) > max_salary + 1 THEN 'Gap' ELSE 'No Gap' END AS gap_status
FROM SalaryBands
ORDER BY min_salary;
