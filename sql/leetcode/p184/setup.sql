DROP SCHEMA IF EXISTS p184 CASCADE;
CREATE SCHEMA p184;
SET search_path = p184;

CREATE TABLE Department (
    id   int PRIMARY KEY,
    name varchar NOT NULL
);

CREATE TABLE Employee (
    id           int PRIMARY KEY,
    name         varchar,
    salary       int,
    departmentId int REFERENCES Department (id)
);

-- Example from the problem statement
-- Expected: (IT, Jim, 90000), (IT, Max, 90000), (Sales, Henry, 80000)
INSERT INTO Department VALUES
    (1, 'IT'),
    (2, 'Sales');

INSERT INTO Employee VALUES
    (1, 'Joe',   70000, 1),
    (2, 'Jim',   90000, 1),
    (3, 'Henry', 80000, 2),
    (4, 'Sam',   60000, 2),
    (5, 'Max',   90000, 1);
