SELECT
    s1.sale_date,
    SUM(s2.amount) AS total_30_day_sales
FROM sales s1
JOIN sales s2
ON s2.sale_date BETWEEN s1.sale_date 
                    AND DATEADD(day, 30, s1.sale_date)
GROUP BY s1.sale_date
ORDER BY total_30_day_sales DESC
LIMIT 1;