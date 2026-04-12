WITH LaggedPrices AS (
    SELECT 
        id,
        date,
        price,
        LAG(price) OVER (ORDER BY date) AS prev_price
    FROM StockPrices
),
Grouped AS (
    SELECT 
        id,
        date,
        price,
        CASE WHEN price > prev_price OR prev_price IS NULL THEN 0 ELSE 1 END AS is_reset,
        SUM(CASE WHEN price > prev_price OR prev_price IS NULL THEN 0 ELSE 1 END) OVER (ORDER BY date) AS group_id
    FROM LaggedPrices
),
Streaks AS (
    SELECT 
        group_id,
        COUNT(*) AS streak_length,
        MIN(date) AS start_date,
        MAX(date) AS end_date
    FROM Grouped
    GROUP BY group_id
)
SELECT TOP 1 *
FROM Streaks
ORDER BY streak_length DESC;
