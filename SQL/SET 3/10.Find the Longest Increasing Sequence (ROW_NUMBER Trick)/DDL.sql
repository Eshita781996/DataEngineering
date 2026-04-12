-- DDL for Stock Prices: Table to track daily prices and find longest increasing streaks.
-- Sample: Prices 100,105,102,110,115,120,118; longest streak is 4 days (102-120)

CREATE TABLE StockPrices (
    id INT PRIMARY KEY,
    date DATE,
    price DECIMAL(10,2)
);

INSERT INTO StockPrices (id, date, price) VALUES
(1, '2023-01-01', 100.00),
(2, '2023-01-02', 105.00),
(3, '2023-01-03', 102.00),
(4, '2023-01-04', 110.00),
(5, '2023-01-05', 115.00),
(6, '2023-01-06', 120.00),
(7, '2023-01-07', 118.00);
