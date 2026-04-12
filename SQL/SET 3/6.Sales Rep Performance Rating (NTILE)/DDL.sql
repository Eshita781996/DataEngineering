-- DDL for Sales Reps: Table to store revenues for NTILE-based performance bucketing.
-- Sample: 6 reps with revenues from 50k to 100k, split into 3 buckets

CREATE TABLE SalesReps (
    rep_id INT PRIMARY KEY,
    revenue DECIMAL(10,2)
);

INSERT INTO SalesReps (rep_id, revenue) VALUES
(1, 100000),
(2, 90000),
(3, 80000),
(4, 70000),
(5, 60000),
(6, 50000);
