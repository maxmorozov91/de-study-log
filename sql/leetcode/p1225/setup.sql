DROP SCHEMA IF EXISTS p1225 CASCADE;
CREATE SCHEMA p1225;
SET search_path = p1225;

CREATE TABLE Failed (
    fail_date date PRIMARY KEY
);

CREATE TABLE Succeeded (
    success_date date PRIMARY KEY
);

-- Example from the problem statement
-- Expected, in this order: (succeeded, 2019-01-01, 2019-01-03),
--                          (failed,    2019-01-04, 2019-01-05),
--                          (succeeded, 2019-01-06, 2019-01-06)
INSERT INTO Failed VALUES
    ('2018-12-28'),
    ('2018-12-29'),
    ('2019-01-04'),
    ('2019-01-05');

INSERT INTO Succeeded VALUES
    ('2018-12-30'),
    ('2018-12-31'),
    ('2019-01-01'),
    ('2019-01-02'),
    ('2019-01-03'),
    ('2019-01-06');
