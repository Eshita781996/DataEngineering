SELECT DISTINCT product_id
FROM Sales s1
WHERE EXISTS (
    SELECT 1 FROM Sales s2 
    WHERE s2.product_id = s1.product_id 
    AND s2.sale_date < DATEADD(MONTH, -6, GETDATE())
)
AND NOT EXISTS (
    SELECT 1 FROM Sales s3 
    WHERE s3.product_id = s1.product_id 
    AND s3.sale_date >= DATEADD(MONTH, -6, GETDATE())
);
