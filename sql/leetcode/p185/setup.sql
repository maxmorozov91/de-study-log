DROP SCHEMA IF EXISTS p185 CASCADE;
CREATE SCHEMA p185;
SET search_path = p185;

CREATE TABLE Department (
    id   int PRIMARY KEY,
    name varchar
);

CREATE TABLE Employee (
    id           int PRIMARY KEY,
    name         varchar,
    salary       int,
    departmentId int REFERENCES Department (id)
);

-- Example from the problem statement
-- Expected: (IT, Max, 90000), (IT, Joe, 85000), (IT, Randy, 85000), (IT, Will, 70000),
--           (Sales, Henry, 80000), (Sales, Sam, 60000)
INSERT INTO Department VALUES
    (1, 'IT'),
    (2, 'Sales');

INSERT INTO Employee VALUES
    (1, 'Joe',   85000, 1),
    (2, 'Henry', 80000, 2),
    (3, 'Sam',   60000, 2),
    (4, 'Max',   90000, 1),
    (5, 'Janet', 69000, 1),
    (6, 'Randy', 85000, 1),
    (7, 'Will',  70000, 1);
