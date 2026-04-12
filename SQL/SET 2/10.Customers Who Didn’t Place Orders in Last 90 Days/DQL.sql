SELECT c.customer_id, c.customer_name
FROM Customers c
WHERE NOT EXISTS (
    SELECT 1 FROM Orders o
    WHERE o.customer_id = c.customer_id
    AND o.order_date >= DATEADD(DAY, -90, GETDATE())
);
