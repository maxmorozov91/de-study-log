DROP SCHEMA IF EXISTS p1077 CASCADE;
CREATE SCHEMA p1077;
SET search_path = p1077;

CREATE TABLE Employee (
    employee_id      int PRIMARY KEY,
    name             varchar,
    experience_years int
);

CREATE TABLE Project (
    project_id  int,
    employee_id int REFERENCES Employee (employee_id),
    PRIMARY KEY (project_id, employee_id)
);

-- Example from the problem statement
-- Expected: (1, 1), (1, 3), (2, 1)
INSERT INTO Employee VALUES
    (1, 'Khaled', 3),
    (2, 'Ali',    2),
    (3, 'John',   3),
    (4, 'Doe',    2);

INSERT INTO Project VALUES
    (1, 1),
    (1, 2),
    (1, 3),
    (2, 1),
    (2, 4);
