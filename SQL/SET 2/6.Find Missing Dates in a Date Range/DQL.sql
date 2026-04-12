WITH DateRange AS (
    SELECT MIN(sale_date) AS start_date, MAX(sale_date) AS end_date
    FROM Sales
),
Calendar AS (
    SELECT DATEADD(DAY, number, (SELECT start_date FROM DateRange)) AS date
    FROM master..spt_values
    WHERE type = 'P' AND number >= 0
    AND DATEADD(DAY, number, (SELECT start_date FROM DateRange)) <= (SELECT end_date FROM DateRange)
)
SELECT c.date
FROM Calendar c
LEFT JOIN Sales s ON c.date = s.sale_date
WHERE s.sale_date IS NULL
ORDER BY c.date;
