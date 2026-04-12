-- DDL for Product Sales: Table to track sales dates for products sold before but not in last 6 months.
-- Sample: Product 1 sold in 2022 but not recently; Product 2 sold recently

CREATE TABLE Sales (
    id INT PRIMARY KEY,
    product_id INT,
    sale_date DATE
);

INSERT INTO Sales (id, product_id, sale_date) VALUES
(1, 1, '2022-01-01'),
(2, 1, '2022-06-01'),
(3, 2, '2022-01-01'),
(4, 2, '2023-01-01'),  -- Within last 6 months (assuming current date is 2023-07-01)
(5, 3, '2022-01-01'),
(6, 3, '2022-12-01');
