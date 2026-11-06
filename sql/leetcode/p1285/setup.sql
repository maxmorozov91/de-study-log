DROP SCHEMA IF EXISTS p1285 CASCADE;
CREATE SCHEMA p1285;
SET search_path = p1285;

CREATE TABLE Logs (
    log_id int UNIQUE
);

-- Example from the problem statement
-- Expected, in this order: (1, 3), (7, 8), (10, 10)
INSERT INTO Logs VALUES
    (1),
    (2),
    (3),
    (7),
    (8),
    (10);
