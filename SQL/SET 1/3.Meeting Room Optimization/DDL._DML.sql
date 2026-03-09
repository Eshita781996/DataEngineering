CREATE TABLE meetings (
    meeting_id INT,
    start_time TIME,
    end_time TIME
);

--DML
INSERT INTO meetings (meeting_id, start_time, end_time) VALUES
(1, '09:00:00', '10:30:00'),
(2, '09:30:00', '11:00:00'),
(3, '10:30:00', '12:00:00'),
(4, '11:00:00', '12:30:00');