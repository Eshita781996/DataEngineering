-- Example:

-- A → B
-- B → C
-- C → A

-- This forms a cycle.

CREATE TABLE dependencies (
    parent_task VARCHAR(10),
    child_task VARCHAR(10)
);

INSERT INTO dependencies VALUES
('A','B'),
('B','C'),
('C','A'),
('D','E'),
('E','F');

