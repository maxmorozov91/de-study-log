DROP SCHEMA IF EXISTS p608 CASCADE;
CREATE SCHEMA p608;
SET search_path = p608;

CREATE TABLE Tree (
    id   int PRIMARY KEY,
    p_id int
);

-- Example from the problem statement
-- Expected: (1, Root), (2, Inner), (3, Leaf), (4, Leaf), (5, Leaf)
INSERT INTO Tree VALUES
    (1, NULL),
    (2, 1),
    (3, 1),
    (4, 2),
    (5, 2);
