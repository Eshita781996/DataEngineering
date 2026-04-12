WITH RankedLogins AS (
    SELECT 
        user_id,
        login_date,
        DATEADD(DAY, -ROW_NUMBER() OVER (PARTITION BY user_id ORDER BY login_date), login_date) AS group_date
    FROM Logins
),
Streaks AS (
    SELECT 
        user_id,
        group_date,
        COUNT(*) AS streak_length
    FROM RankedLogins
    GROUP BY user_id, group_date
)
SELECT 
    user_id,
    MAX(streak_length) AS longest_streak
FROM Streaks
GROUP BY user_id;
