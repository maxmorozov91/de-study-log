DROP SCHEMA IF EXISTS p1270 CASCADE;
CREATE SCHEMA p1270;
SET search_path = p1270;

CREATE TABLE Employees (
    employee_id   int PRIMARY KEY,
    employee_name varchar,
    manager_id    int
);

-- Example from the problem statement
-- Expected: 2, 4, 7, 77 (in any order). The head (1) is not part of its own result.
INSERT INTO Employees VALUES
    (1,  'Boss',   1),
    (3,  'Alice',  3),
    (2,  'Bob',    1),
    (4,  'Daniel', 2),
    (7,  'Luis',   4),
    (8,  'Jhon',   3),
    (9,  'Angela', 8),
    (77, 'Robert', 1);
