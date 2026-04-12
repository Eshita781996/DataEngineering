WITH RankedSales AS (
    SELECT 
        id,
        group_id,
        value,
        DENSE_RANK() OVER (PARTITION BY group_id ORDER BY value DESC) AS rank
    FROM Sales
)
SELECT id, group_id, value, rank
FROM RankedSales
WHERE rank <= 3
ORDER BY group_id, rank, value DESC;
