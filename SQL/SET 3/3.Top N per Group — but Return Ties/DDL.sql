-- DDL for Sales by Group: Table for ranking values per group, including ties.
-- Sample: Group 1 has values 100,90,80,80,70; top 3 with ties includes both 80s

CREATE TABLE Sales (
    id INT PRIMARY KEY,
    group_id INT,
    value INT
);

INSERT INTO Sales (id, group_id, value) VALUES
(1, 1, 100),
(2, 1, 90),
(3, 1, 80),
(4, 1, 80),  -- Tie for 3rd
(5, 1, 70),
(6, 2, 200),
(7, 2, 150),
(8, 2, 150),  -- Tie for 2nd
(9, 2, 100);
