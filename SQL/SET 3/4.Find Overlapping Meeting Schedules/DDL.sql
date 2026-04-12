-- DDL for Meetings: Table to store meeting times per employee for overlap detection.
-- Sample: Employee 1 has overlapping meetings at 9-10 and 9:30-11

CREATE TABLE Meetings (
    id INT PRIMARY KEY,
    employee_id INT,
    start_time DATETIME,
    end_time DATETIME
);

INSERT INTO Meetings (id, employee_id, start_time, end_time) VALUES
(1, 1, '2023-01-01 09:00:00', '2023-01-01 10:00:00'),
(2, 1, '2023-01-01 09:30:00', '2023-01-01 11:00:00'),  -- Overlap
(3, 2, '2023-01-01 10:00:00', '2023-01-01 11:00:00'),
(4, 2, '2023-01-01 12:00:00', '2023-01-01 13:00:00');   -- No overlap
