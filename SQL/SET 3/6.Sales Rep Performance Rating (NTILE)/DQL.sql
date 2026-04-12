SELECT 
    rep_id,
    revenue,
    NTILE(3) OVER (ORDER BY revenue DESC) AS performance_bucket
FROM SalesReps;
