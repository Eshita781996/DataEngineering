SELECT name, value, COUNT(*) AS duplicate_count
FROM Records
GROUP BY name, value
HAVING COUNT(*) > 1;
