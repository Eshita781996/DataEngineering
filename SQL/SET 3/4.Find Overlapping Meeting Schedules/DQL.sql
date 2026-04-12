SELECT DISTINCT m1.employee_id
FROM Meetings m1
JOIN Meetings m2 ON m1.employee_id = m2.employee_id AND m1.id < m2.id
WHERE m1.start_time < m2.end_time AND m1.end_time > m2.start_time;
