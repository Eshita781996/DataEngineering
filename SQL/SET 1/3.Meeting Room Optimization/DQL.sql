WITH meeting_events AS (
    SELECT start_time AS time, 1 AS event
    FROM meetings
    
    UNION ALL
    
    SELECT end_time AS time, -1 AS event
    FROM meetings
),

running_meetings AS (
    SELECT 
        time,
        SUM(event) OVER (ORDER BY time) AS active_meetings
    FROM meeting_events
)

SELECT MAX(active_meetings) AS min_meeting_rooms
FROM running_meetings;