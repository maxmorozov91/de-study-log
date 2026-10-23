DROP SCHEMA IF EXISTS p1699 CASCADE;
CREATE SCHEMA p1699;
SET search_path = p1699;

CREATE TABLE Calls (
    from_id  int,
    to_id    int,
    duration int,
    -- "from_id != to_id"
    CHECK (from_id <> to_id)
);

-- Example from the problem statement
-- Expected: (1, 2, 2, 70), (1, 3, 1, 20), (3, 4, 4, 999)
INSERT INTO Calls VALUES
    (1, 2, 59),
    (2, 1, 11),
    (1, 3, 20),
    (3, 4, 100),
    (3, 4, 200),
    (3, 4, 200),
    (4, 3, 499);
