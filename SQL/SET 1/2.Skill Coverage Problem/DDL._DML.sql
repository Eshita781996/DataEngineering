-- 2.Skill Coverage Problem
-- Given skills needed by a project and employees with skills, find minimum employees required to cover all skills (set cover flavor).

--Employees(emp_id,emp_name),Skills(skill_id,skill_name), employeeskills (emp_id,skill_id)
--,ProjectSkill(skill_id) --lookup,

CREATE TABLE Employees (
    emp_id INT,
    emp_name VARCHAR(50)
);

CREATE TABLE Skills (
    skill_id INT,
    skill_name VARCHAR(50)
);

CREATE TABLE EmployeeSkills (
    emp_id INT,
    skill_id INT
);

CREATE TABLE ProjectSkills (
    skill_id INT
);

INSERT INTO Employees VALUES
(1,'Amit'),
(2,'Riya'),
(3,'Karan'),
(4,'Sneha');

INSERT INTO Skills VALUES
(1,'SQL'),
(2,'Python'),
(3,'Spark'),
(4,'Azure');

INSERT INTO EmployeeSkills VALUES
(1,1),  -- Amit SQL
(1,2),  -- Amit Python
(2,3),  -- Riya Spark
(3,2),  -- Karan Python
(3,4),  -- Karan Azure
(4,4),  -- Sneha Azure
(4,3);  -- Sneha Spark
-- (1,3),  -- Amit Spark
-- (1,4),  -- Amit Azure
-- (4,1),  -- Sneha SQL

INSERT INTO ProjectSkills VALUES
(1),
(2),
(3),
(4);