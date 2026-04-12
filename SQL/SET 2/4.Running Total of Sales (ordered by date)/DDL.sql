-- DDL for Sales Transactions: Table to compute cumulative sales over time.
-- Sample: Sales on dates with amounts 100,200,50; running totals 100,300,350

CREATE TABLE Sales (
    id INT PRIMARY KEY,
    sale_date DATE,
    amount DECIMAL(10,2)
);

INSERT INTO Sales (id, sale_date, amount) VALUES
(1, '2023-01-01', 100.00),
(2, '2023-01-02', 200.00),
(3, '2023-01-03', 50.00);
