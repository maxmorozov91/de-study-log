DROP SCHEMA IF EXISTS p585 CASCADE;
CREATE SCHEMA p585;
SET search_path = p585;

CREATE TABLE Insurance (
    pid      int   PRIMARY KEY,
    tiv_2015 float,
    tiv_2016 float,
    lat      float NOT NULL,
    lon      float NOT NULL
);

-- Example from the problem statement (expected result: 45.00)
INSERT INTO Insurance VALUES
    (1, 10, 5,  10, 10),
    (2, 20, 20, 20, 20),
    (3, 10, 30, 20, 20),
    (4, 10, 40, 40, 40);
