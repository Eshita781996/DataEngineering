SELECT 
    id,
    account_id,
    transaction_date,
    amount,
    SUM(amount) OVER (PARTITION BY account_id ORDER BY transaction_date, id) AS balance,
    MAX(SUM(amount) OVER (PARTITION BY account_id ORDER BY transaction_date, id)) OVER (PARTITION BY account_id ORDER BY transaction_date, id) AS running_max_balance
FROM Ledger
ORDER BY account_id, transaction_date, id;
