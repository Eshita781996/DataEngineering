CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    manager_id INT NULL,
    salary DECIMAL(10,2)
);
INSERT INTO Employee (emp_id, emp_name, manager_id, salary)
VALUES
(1, 'John',   NULL, 12000),   -- CEO (no manager)
(2, 'Maya',    1,    9000),   -- Reports to John
(3, 'Arjun',   1,    15000),  -- Reports to John (earns more)
(4, 'Ravi',    2,    8000),   -- Reports to Maya
(5, 'Neha',    2,    9500),   -- Reports to Maya (earns more)
(6, 'Kiran',   3,    7000);   -- Reports to Arjun

/*-----------------------------------------------------------------------------------------------------------------------*/

CREATE TABLE Sales (
    sale_id INT PRIMARY KEY,
    sale_date DATE,
    customer_id INT,
    amount DECIMAL(10,2)
);

INSERT INTO Sales (sale_id, sale_date, customer_id, amount)
VALUES
(1, '2025-10-01', 101, 200.00),
(2, '2025-10-02', 102, 150.00),
(3, '2025-10-03', 101, 300.00),
(4, '2025-10-04', 103, 100.00),
(5, '2025-10-05', 101, 250.00);

/*-----------------------------------------------------------------------------------------------------------------------*/

CREATE TABLE UserLogins (
    user_id INT,
    login_date DATE
);


INSERT INTO UserLogins (user_id, login_date)
VALUES
(1, '2025-10-01'),
(1, '2025-10-02'),
(1, '2025-10-03'),
(1, '2025-10-05'),
(1, '2025-10-06'),
(2, '2025-10-01'),
(2, '2025-10-03'),
(2, '2025-10-04'),
(2, '2025-10-05');

/*-----------------------------------------------------------------------------------------------------------------------*/


CREATE TABLE Sales_1 (
    sale_date DATE PRIMARY KEY,
    amount DECIMAL(10,2)
);
INSERT INTO Sales_1 (sale_date, amount)
VALUES
('2025-10-01', 100.00),
('2025-10-02', 150.00),
('2025-10-04', 200.00),
('2025-10-05', 250.00),
('2025-10-07', 300.00),
('2025-10-10', 400.00);

/*-----------------------------------------------------------------------------------------------------------------------*/


CREATE TABLE Employee_1 (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    dept_id INT,
    salary DECIMAL(10,2)
);

CREATE TABLE Department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(100)
);


INSERT INTO Department VALUES
(1, 'HR'),
(2, 'Finance'),
(3, 'IT');

INSERT INTO Employee_1 VALUES
(101, 'John', 1, 5000),
(102, 'Maya', 1, 6000),
(103, 'Arjun', 2, 8000),
(104, 'Ravi', 2, 9000),
(105, 'Neha', 3, 7000),
(106, 'Kiran', 3, 6500);

/*-----------------------------------------------------------------------------------------------------------------------*/

CREATE TABLE Sales_2 (
    sale_id INT IDENTITY(1,1) PRIMARY KEY,
    product_name VARCHAR(100),
    sale_date DATE
);
INSERT INTO Sales_2 (product_name, sale_date) VALUES
('Laptop', '2025-01-05'),
('Laptop', '2025-01-10'),
('Mouse',  '2025-01-12'),
('Keyboard', '2025-01-15'),
('Mouse', '2025-02-02'),
('Mouse', '2025-02-10'),
('Laptop', '2025-02-14'),
('Laptop', '2025-03-03'),
('Monitor', '2025-03-05'),
('Monitor', '2025-03-08'),
('Monitor', '2025-03-10');

/*-----------------------------------------------------------------------------------------------------------------------*/

CREATE TABLE AccountLedger (
    account_id INT,
    txn_date DATE,
    balance DECIMAL(10,2)
);

INSERT INTO AccountLedger VALUES
(1, '2024-01-01', 500),
(1, '2024-01-03', 700),
(1, '2024-01-05', 650),
(1, '2024-01-08', 900),
(1, '2024-01-10', 800),
(2, '2024-01-02', 400),
(2, '2024-01-04', 350),
(2, '2024-01-06', 450);

/*-----------------------------------------------------------------------------------------------------------------------*/


CREATE TABLE Sales (
    dept VARCHAR(20),
    emp_name VARCHAR(50),
    revenue INT
);

INSERT INTO Sales VALUES
('A', 'John', 500),
('A', 'Maya', 400),
('A', 'Ravi', 400),
('A', 'Arjun', 300),
('B', 'Neha', 800),
('B', 'Kiran', 700),
('B', 'Rohit', 700),
('B', 'Isha', 650);

/*-----------------------------------------------------------------------------------------------------------------------*/

CREATE TABLE Meetings (
    emp_id INT,
    meeting_id INT,
    start_time DATETIME,
    end_time DATETIME
);

INSERT INTO Meetings VALUES
(1, 101, '2024-10-01 09:00', '2024-10-01 10:00'),
(1, 102, '2024-10-01 09:30', '2024-10-01 11:00'), -- overlaps with 101
(1, 103, '2024-10-01 11:00', '2024-10-01 12:00'), -- does not overlap
(2, 201, '2024-10-01 13:00', '2024-10-01 14:00'),
(2, 202, '2024-10-01 14:30', '2024-10-01 15:00'), -- no overlap
(3, 301, '2024-10-01 10:00', '2024-10-01 11:00'),
(3, 302, '2024-10-01 10:45', '2024-10-01 12:00'); -- overlaps with 301

/*-----------------------------------------------------------------------------------------------------------------------*/

CREATE TABLE Sales (
    product_id INT,
    sale_date DATE,
    amount DECIMAL(10,2)
);

INSERT INTO Sales VALUES
(1, '2024-01-10', 100),
(1, '2024-04-15', 200),
(2, '2024-02-01', 150),
(3, '2025-01-01', 300),
(4, '2023-12-20', 250),
(4, '2024-02-20', 200),
(5, '2025-08-01', 400);  -- recently sold

/*-----------------------------------------------------------------------------------------------------------------------*/

CREATE TABLE SalesReps (
    rep_id INT,
    rep_name VARCHAR(50),
    total_revenue DECIMAL(10,2)
);

INSERT INTO SalesReps VALUES
(1, 'John', 95000),
(2, 'Maya', 87000),
(3, 'Ravi', 55000),
(4, 'Arjun', 72000),
(5, 'Kiran', 48000),
(6, 'Neha', 103000),
(7, 'Isha', 65000),
(8, 'Rohit', 89000);

/*-----------------------------------------------------------------------------------------------------------------------*/

CREATE TABLE UserActivity (
    user_id INT,
    activity_date DATE,
    status VARCHAR(20)
);

INSERT INTO UserActivity VALUES
(1, '2024-01-01', 'Active'),
(1, '2024-01-02', NULL),
(1, '2024-01-03', NULL),
(1, '2024-01-04', 'Inactive'),
(1, '2024-01-05', NULL),
(2, '2024-01-01', NULL),
(2, '2024-01-02', 'Active'),
(2, '2024-01-03', NULL);


/*-----------------------------------------------------------------------------------------------------------------------*/


CREATE TABLE SalaryBands (
    band_id INT,
    min_salary INT,
    max_salary INT
);

INSERT INTO SalaryBands VALUES
(1, 0,     30000),
(2, 30001, 50000),
(3, 60001, 80000),   -- 👈 notice the gap between 50000–60001
(4, 80001, 100000),
(5, 100001, 120000);


/*-----------------------------------------------------------------------------------------------------------------------*/


CREATE TABLE Sales (
    product_id INT,
    product_name VARCHAR(50),
    sale_month VARCHAR(10),
    revenue DECIMAL(10,2)
);

INSERT INTO Sales VALUES
(1, 'Laptop',   'Jan', 12000),
(1, 'Laptop',   'Feb', 15000),
(1, 'Laptop',   'Mar', 13000),
(2, 'Tablet',   'Jan', 8000),
(2, 'Tablet',   'Feb', 9500),
(2, 'Tablet',   'Mar', 9000),
(3, 'Phone',    'Jan', 15000),
(3, 'Phone',    'Feb', NULL),
(3, 'Phone',    'Mar', 17000);

/*-----------------------------------------------------------------------------------------------------------------------*/

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

/*-----------------------------------------------------------------------------------------------------------------------*/
CREATE TABLE EmployeeSkill (
    emp_id INT,
    emp_name VARCHAR(50),
    skill VARCHAR(50)
);

INSERT INTO EmployeeSkill VALUES
(1, 'John',  'Python'),
(1, 'John',  'SQL'),
(2, 'Maya',  'Azure'),
(2, 'Maya',  'Python'),
(3, 'Arjun', 'SQL'),
(3, 'Arjun', 'Databricks'),
(4, 'Neha',  'PowerBI'),
(4, 'Neha',  'Azure'),
(5, 'Ravi',  'Databricks');


CREATE TABLE ProjectSkill (
    skill VARCHAR(50)
);

INSERT INTO ProjectSkill VALUES
('Python'), ('SQL'), ('Azure'), ('Databricks');


/*-----------------------------------------------------------------------------------------------------------------------*/

CREATE TABLE Meetings (
    meeting_id INT,
    start_time DATETIME,
    end_time DATETIME
);

INSERT INTO Meetings VALUES
(1, '2024-01-01 09:00', '2024-01-01 10:00'),
(2, '2024-01-01 09:30', '2024-01-01 11:00'),
(3, '2024-01-01 10:30', '2024-01-01 12:00'),
(4, '2024-01-01 11:00', '2024-01-01 11:30'),
(5, '2024-01-01 12:00', '2024-01-01 12:30');

/*-----------------------------------------------------------------------------------------------------------------------*/

CREATE TABLE Followers (
    follower_id INT,
    followed_id INT
);

INSERT INTO Followers VALUES
(2, 1),   -- User 2 follows User 1
(3, 1),   -- User 3 follows User 1
(4, 2),   -- User 4 follows User 2
(5, 2),   -- User 5 follows User 2
(6, 4),   -- User 6 follows User 4
(7, 5);   -- User 7 follows User 5


/*-----------------------------------------------------------------------------------------------------------------------*/


CREATE TABLE Dependency (
    parent VARCHAR(10),
    child VARCHAR(10)
);

INSERT INTO Dependency VALUES
('A', 'B'),
('B', 'C'),
('C', 'D'),
('D', 'B'),  -- ← creates a cycle B → C → D → B
('E', 'F');

/*-----------------------------------------------------------------------------------------------------------------------*/


CREATE TABLE Sales (
    sale_date DATE,
    amount DECIMAL(10,2)
);

INSERT INTO Sales VALUES
('2024-01-01', 200),
('2024-01-05', 150),
('2024-01-15', 400),
('2024-01-25', 100),
('2024-02-01', 300),
('2024-02-10', 500),
('2024-02-15', 250),
('2024-02-20', 600);


/*-----------------------------------------------------------------------------------------------------------------------*/


CREATE TABLE EmployeeScore (
    emp_id INT,
    emp_name VARCHAR(50),
    role VARCHAR(20),
    score INT
);

INSERT INTO EmployeeScore VALUES
(1, 'John',   'Manager', 95),
(2, 'Maya',   'Manager', 90),
(3, 'Arjun',  'Senior', 88),
(4, 'Ravi',   'Senior', 85),
(5, 'Neha',   'Senior', 80),
(6, 'Kiran',  'Junior', 75),
(7, 'Raj',    'Junior', 72),
(8, 'Tina',   'Junior', 70),
(9, 'Meera',  'Junior', 68),
(10, 'Amit',  'Junior', 60);



/*-----------------------------------------------------------------------------------------------------------------------*/

CREATE TABLE TaxSlab (
    slab_id INT,
    slab_from DECIMAL(10,2),
    slab_to   DECIMAL(10,2),
    rate      DECIMAL(5,2)
);

INSERT INTO TaxSlab VALUES
(1, 0,     250000, 0.00),
(2, 250000, 500000, 0.05),
(3, 500000, 1000000, 0.20),
(4, 1000000, NULL, 0.30);  -- NULL = no upper limit

CREATE TABLE Income (
    emp_id INT,
    emp_name VARCHAR(50),
    annual_income DECIMAL(10,2)
);

INSERT INTO Income VALUES
(1, 'John', 180000),
(2, 'Maya', 300000),
(3, 'Ravi', 750000),
(4, 'Neha', 1200000);


/*-----------------------------------------------------------------------------------------------------------------------*/

CREATE TABLE EmployeeScore (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    score INT
);

INSERT INTO EmployeeScore VALUES
(1, 'John', 90),
(2, 'Maya', 85),
(3, 'Arjun', 80),
(4, 'Ravi', 75),
(5, 'Neha', 70);

/*-----------------------------------------------------------------------------------------------------------------------*/





