-- selecty  employees with the budget of 100 rupees
CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    cost INT,            -- Cost to allocate this employee
    productivity INT     -- Productivity score (value)
);

INSERT INTO Employee VALUES
(1, 'John',  60, 100),
(2, 'Maya',  40,  90),
(3, 'Arjun', 30,  50),
(4, 'Neha',  20,  40),
(5, 'Ravi',  10,  25);
