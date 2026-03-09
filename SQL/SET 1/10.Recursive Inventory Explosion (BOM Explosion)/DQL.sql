WITH RECURSIVE bom_cte AS (

    -- Anchor
    SELECT 
        parent_part,
        component_part,
        quantity,
        quantity AS total_qty
    FROM bom
    WHERE parent_part = 'CAR'

    UNION ALL

    -- Recursive part
    SELECT
        b.parent_part,
        b.component_part,
        b.quantity,
        c.total_qty * b.quantity
    FROM bom b
    JOIN bom_cte c
        ON b.parent_part = c.component_part
)

SELECT component_part,
       SUM(total_qty) AS required_quantity
FROM bom_cte
GROUP BY component_part;