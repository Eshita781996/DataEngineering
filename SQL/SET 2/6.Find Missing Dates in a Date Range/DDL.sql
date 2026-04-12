-- DDL for Sales by Date: Table to find dates with no sales in the range of existing dates.
-- Sample: Sales on 1st,3rd,5th; missing 2nd,4th

CREATE TABLE Sales (
    id INT PRIMARY KEY,
    sale_date DATE,
    amount DECIMAL(10,2)
);

INSERT INTO Sales (id, sale_date, amount) VALUES
(1, '2023-01-01', 100.00),
(2, '2023-01-03', 200.00),
(3, '2023-01-05', 50.00);
