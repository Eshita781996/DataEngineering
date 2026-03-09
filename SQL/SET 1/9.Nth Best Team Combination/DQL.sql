WITH RECURSIVE team_cte AS (
    
    -- Anchor
    SELECT 
        player_id,
        player_name,
        score,
        CAST(player_name AS VARCHAR(100)) AS team,
        1 AS level
    FROM players

    UNION ALL

    -- Recursive
    SELECT
        p.player_id,
        p.player_name,
        p.score,
        CONCAT(t.team, ',', p.player_name),
        level + 1
    FROM team_cte t
    JOIN players p
      ON p.player_id > t.player_id
    WHERE level < 2
)

SELECT team,
       SUM(score) AS total_score
FROM team_cte
WHERE level = 2
GROUP BY team;