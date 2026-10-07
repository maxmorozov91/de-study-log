DROP SCHEMA IF EXISTS p626 CASCADE;
CREATE SCHEMA p626;
SET search_path = p626;

CREATE TABLE Seat (
    id      int     PRIMARY KEY,
    student varchar
);

-- Example from the problem statement
-- Expected: (1, Doris), (2, Abbot), (3, Green), (4, Emerson), (5, Jeames)
INSERT INTO Seat VALUES
    (1, 'Abbot'),
    (2, 'Doris'),
    (3, 'Emerson'),
    (4, 'Green'),
    (5, 'Jeames');
