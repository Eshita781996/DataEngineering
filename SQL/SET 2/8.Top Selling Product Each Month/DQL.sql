WITH RankedProducts AS (
    SELECT 
        product,
        month,
        SUM(quantity) AS total_quantity,
        ROW_NUMBER() OVER (PARTITION BY month ORDER BY SUM(quantity) DESC) AS rn
    FROM Sales
    GROUP BY product, month
)
SELECT product, month, total_quantity
FROM RankedProducts
WHERE rn = 1;
