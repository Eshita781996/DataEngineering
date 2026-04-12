-- DDL for User Values: Table with nullable values to find latest non-null per user over time.
-- Sample: User 1 has values 100, NULL, 200, NULL; latest non-null propagates

CREATE TABLE UserValues (
    id INT PRIMARY KEY,
    user_id INT,
    date DATE,
    value INT
);

INSERT INTO UserValues (id, user_id, date, value) VALUES
(1, 1, '2023-01-01', 100),
(2, 1, '2023-01-02', NULL),
(3, 1, '2023-01-03', 200),
(4, 1, '2023-01-04', NULL),
(5, 2, '2023-01-01', NULL),
(6, 2, '2023-01-02', 150);
