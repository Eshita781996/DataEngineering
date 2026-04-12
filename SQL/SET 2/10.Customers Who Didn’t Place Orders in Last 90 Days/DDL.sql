-- DDL for Customers and Orders: Tables to find customers without recent orders.
-- Sample: Customer 1 ordered 100 days ago, 2 ordered recently; 1 is inactive

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100)
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

INSERT INTO Customers (customer_id, customer_name) VALUES
(1, 'Alice'),
(2, 'Bob');

INSERT INTO Orders (order_id, customer_id, order_date) VALUES
(1, 1, '2022-12-01'),
(2, 2, '2023-03-01');
