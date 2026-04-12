SELECT 
    id,
    sale_date,
    amount,
    SUM(amount) OVER (ORDER BY sale_date, id) AS running_total
FROM Sales
ORDER BY sale_date, id;
