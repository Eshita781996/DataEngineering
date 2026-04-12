-- DDL for Monthly Sales: Table to store sales by product and month for pivoting into columns.
-- Sample: Product 1 has sales in Jan, Feb, Mar; Product 2 in Jan, Feb

CREATE TABLE MonthlySales (
    id INT PRIMARY KEY,
    product_id INT,
    month INT,
    sales DECIMAL(10,2)
);

INSERT INTO MonthlySales (id, product_id, month, sales) VALUES
(1, 1, 1, 100.00),
(2, 1, 2, 150.00),
(3, 1, 3, 200.00),
(4, 2, 1, 50.00),
(5, 2, 2, 75.00);
