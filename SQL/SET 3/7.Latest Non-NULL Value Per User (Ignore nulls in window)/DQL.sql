WITH FilledValues AS (
    SELECT 
        id,
        user_id,
        date,
        value,
        CASE WHEN value IS NOT NULL THEN value ELSE NULL END AS non_null_value,
        ROW_NUMBER() OVER (PARTITION BY user_id ORDER BY date) AS rn
    FROM UserValues
),
LatestNonNull AS (
    SELECT 
        f1.id,
        f1.user_id,
        f1.date,
        f1.value,
        (
            SELECT TOP 1 f2.non_null_value
            FROM FilledValues f2
            WHERE f2.user_id = f1.user_id AND f2.rn <= f1.rn AND f2.non_null_value IS NOT NULL
            ORDER BY f2.rn DESC
        ) AS latest_non_null
    FROM FilledValues f1
)
SELECT id, user_id, date, value, latest_non_null
FROM LatestNonNull
ORDER BY user_id, date;
