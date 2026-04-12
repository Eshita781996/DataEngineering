-- DDL for Account Ledger: Table to track transactions and compute running balances with max.
-- Sample: Account 1 has transactions leading to balances 100, 50, 250, 220, 370; running max 100,100,250,250,370

CREATE TABLE Ledger (
    id INT PRIMARY KEY,
    account_id INT,
    transaction_date DATE,
    amount DECIMAL(10,2)
);

INSERT INTO Ledger (id, account_id, transaction_date, amount) VALUES
(1, 1, '2023-01-01', 100.00),
(2, 1, '2023-01-02', -50.00),
(3, 1, '2023-01-03', 200.00),
(4, 1, '2023-01-04', -30.00),
(5, 1, '2023-01-05', 150.00);
