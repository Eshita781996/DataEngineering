WITH RECURSIVE Hierarchy AS (
    -- Anchor: Top-level employees (no manager)
    SELECT 
        emp_id, 
        emp_name, 
        manager_id, 
        CAST(emp_name AS VARCHAR(1000)) AS hierarchy_chain, 
        0 AS level
    FROM Employees
    WHERE manager_id IS NULL
    
    UNION ALL
    
    -- Recursive: Add subordinates
    SELECT 
        e.emp_id, 
        e.emp_name, 
        e.manager_id, 
        CAST(h.hierarchy_chain + ' -> ' + e.emp_name AS VARCHAR(1000)), 
        h.level + 1
    FROM Employees e
    INNER JOIN Hierarchy h ON e.manager_id = h.emp_id
)
SELECT 
    emp_id,
    emp_name,
    hierarchy_chain,
    level
FROM Hierarchy
ORDER BY emp_id;
