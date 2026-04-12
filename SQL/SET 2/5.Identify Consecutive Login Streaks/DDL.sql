-- DDL for User Logins: Table to track login dates for finding consecutive streaks.
-- Sample: User 1 logged in 3 consecutive days, then gap; longest streak 3

CREATE TABLE Logins (
    id INT PRIMARY KEY,
    user_id INT,
    login_date DATE
);

INSERT INTO Logins (id, user_id, login_date) VALUES
(1, 1, '2023-01-01'),
(2, 1, '2023-01-02'),
(3, 1, '2023-01-03'),
(4, 1, '2023-01-05'),
(5, 2, '2023-01-01'),
(6, 2, '2023-01-02');
