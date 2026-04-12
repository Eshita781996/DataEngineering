-- DDL for Records Table: Table with potential exact duplicates to identify.
-- Sample: Two identical rows for name='Alice', value=100

CREATE TABLE Records (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    value INT
);

INSERT INTO Records (id, name, value) VALUES
(1, 'Alice', 100),
(2, 'Alice', 100),
(3, 'Bob', 200);
