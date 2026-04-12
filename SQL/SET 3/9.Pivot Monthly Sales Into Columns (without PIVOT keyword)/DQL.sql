SELECT 
    product_id,
    SUM(CASE WHEN month = 1 THEN sales ELSE 0 END) AS Jan_Sales,
    SUM(CASE WHEN month = 2 THEN sales ELSE 0 END) AS Feb_Sales,
    SUM(CASE WHEN month = 3 THEN sales ELSE 0 END) AS Mar_Sales
FROM MonthlySales
GROUP BY product_id;
