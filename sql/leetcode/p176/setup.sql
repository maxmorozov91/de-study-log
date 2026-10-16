DROP SCHEMA IF EXISTS p176 CASCADE;
CREATE SCHEMA p176;
SET search_path = p176;

CREATE TABLE Employee (
    id     int PRIMARY KEY,
    salary int
);

-- Example 1 from the problem statement (expected result: 200)
INSERT INTO Employee VALUES
    (1, 100),
    (2, 200),
    (3, 300);
