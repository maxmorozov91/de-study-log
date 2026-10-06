DROP SCHEMA IF EXISTS p180 CASCADE;
CREATE SCHEMA p180;
SET search_path = p180;

CREATE TABLE Logs (
    id  int     PRIMARY KEY,
    num varchar NOT NULL
);

-- Example from the problem statement (expected result: 1)
INSERT INTO Logs VALUES
    (1, '1'),
    (2, '1'),
    (3, '1'),
    (4, '2'),
    (5, '1'),
    (6, '2'),
    (7, '2');
