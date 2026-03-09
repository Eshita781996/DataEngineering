CREATE TABLE followers (
    user_id INT,
    follower_id INT
);

INSERT INTO followers VALUES
(1,2),
(1,3),
(2,4),
(2,5),
(3,6),
(6,7);

-- 1
-- ├──2
-- │  ├──4
-- │  └──5
-- ├──3
--    └──6
--        └──7

--1,2,3,4,5,6,7