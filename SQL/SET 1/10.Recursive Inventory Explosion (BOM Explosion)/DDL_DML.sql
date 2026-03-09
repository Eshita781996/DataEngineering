CREATE TABLE bom (
    parent_part VARCHAR(50),
    component_part VARCHAR(50),
    quantity INT
);

INSERT INTO bom VALUES ('CAR', 'ENGINE', 1);
INSERT INTO bom VALUES ('CAR', 'WHEEL', 4);
INSERT INTO bom VALUES ('CAR', 'DOOR', 4);

INSERT INTO bom VALUES ('ENGINE', 'PISTON', 4);
INSERT INTO bom VALUES ('ENGINE', 'SPARK_PLUG', 4);

INSERT INTO bom VALUES ('DOOR', 'HANDLE', 1);
INSERT INTO bom VALUES ('DOOR', 'GLASS', 1);

-- CAR
--  ├── ENGINE
--  │    ├── PISTON
--  │    └── SPARK_PLUG
--  ├── WHEEL
--  └── DOOR
--       ├── HANDLE
--       └── GLASS

-- | component_part | required_quantity |
-- | -------------- | ----------------- |
-- | ENGINE         | 1                 |
-- | WHEEL          | 4                 |
-- | DOOR           | 4                 |
-- | PISTON         | 4                 |
-- | SPARK_PLUG     | 4                 |
-- | HANDLE         | 4                 |
-- | GLASS          | 4                 |
