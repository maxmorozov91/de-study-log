DROP SCHEMA IF EXISTS p1204 CASCADE;
CREATE SCHEMA p1204;
SET search_path = p1204;

CREATE TABLE Queue (
    person_id   int     PRIMARY KEY,
    person_name varchar NOT NULL,
    weight      int     NOT NULL,
    turn        int     NOT NULL UNIQUE
);

-- Example from the problem statement (expected result: John Cena)
-- Running totals by turn: 250, 600, 1000, 1200, 1375, 1875
INSERT INTO Queue VALUES
    (5, 'Alice',     250, 1),
    (4, 'Bob',       175, 5),
    (3, 'Alex',      350, 2),
    (6, 'John Cena', 400, 3),
    (1, 'Winston',   500, 6),
    (2, 'Marie',     200, 4);
