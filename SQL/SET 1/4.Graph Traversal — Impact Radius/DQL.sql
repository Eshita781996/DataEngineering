WITH RECURSIVE impact_graph AS (

    -- Start with the removed user
    SELECT 
        user_id,
        follower_id
    FROM followers
    WHERE user_id = 1

    UNION ALL

    -- Find followers of followers
    SELECT 
        f.user_id,
        f.follower_id
    FROM followers f
    JOIN impact_graph ig
        ON f.user_id = ig.follower_id
)

SELECT DISTINCT follower_id AS impacted_users
FROM impact_graph;