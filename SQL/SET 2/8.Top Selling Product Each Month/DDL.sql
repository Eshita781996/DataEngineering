-- DDL for Product Sales: Table to find top-selling product per month by quantity.
-- Sample: Month 1: Product A 100, B 50; A is top

CREATE TABLE Sales (
    id INT PRIMARY KEY,
    product VARCHAR(50),
    month INT,
    quantity INT
);

INSERT INTO Sales (id, product, month, quantity) VALUES
(1, 'A', 1, 100),
(2, 'B', 1, 50),
(3, 'A', 2, 80),
(4, 'B', 2, 120);
