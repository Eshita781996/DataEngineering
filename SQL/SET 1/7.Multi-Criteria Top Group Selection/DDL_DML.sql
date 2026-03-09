CREATE TABLE employees (
    emp_id INT,
    name VARCHAR(50),
    role VARCHAR(20),
    score INT
);

INSERT INTO employees VALUES
(1,'Alice','Manager',95),
(2,'Bob','Manager',88),

(3,'Charlie','Senior',90),
(4,'David','Senior',85),
(5,'Eva','Senior',80),

(6,'Frank','Junior',78),
(7,'Grace','Junior',75),
(8,'Helen','Junior',82),
(9,'Ian','Junior',70),
(10,'Jack','Junior',68);

-- Pick:

-- Role	Required
-- Manager	1
-- Senior	2
-- Junior	3

-- | emp_id | name    | role    | score |
-- | ------ | ------- | ------- | ----- |
-- | 1      | Alice   | Manager | 95    |
-- | 3      | Charlie | Senior  | 90    |
-- | 4      | David   | Senior  | 85    |
-- | 8      | Helen   | Junior  | 82    |
-- | 6      | Frank   | Junior  | 78    |
-- | 7      | Grace   | Junior  | 75    |
