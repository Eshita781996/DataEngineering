WITH RECURSIVE dependency_path AS (
    
    SELECT 
        parent_task,
        child_task,
        parent_task AS start_node,
        child_task AS current_node,
        parent_task || '->' || child_task AS path
    FROM dependencies

    UNION ALL

    SELECT 
        d.parent_task,
        d.child_task,
        dp.start_node,
        d.child_task,
        dp.path || '->' || d.child_task
    FROM dependency_path dp
    JOIN dependencies d
        ON dp.current_node = d.parent_task
    WHERE dp.path NOT LIKE '%' || d.child_task || '%'
)

SELECT *
FROM dependency_path
WHERE start_node = current_node;