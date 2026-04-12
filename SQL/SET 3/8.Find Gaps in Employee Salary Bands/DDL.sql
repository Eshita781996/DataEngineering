-- DDL for Salary Bands: Table to define salary ranges and detect gaps between them.
-- Sample: Bands 0-50k, 50k-100k, 100k-150k, 160k-200k; gap between 150k and 160k

CREATE TABLE SalaryBands (
    id INT PRIMARY KEY,
    min_salary INT,
    max_salary INT
);

INSERT INTO SalaryBands (id, min_salary, max_salary) VALUES
(1, 0, 50000),
(2, 50001, 100000),
(3, 100001, 150000),
(4, 160000, 200000);  -- Gap between 150000 and 160000
