DROP SCHEMA IF EXISTS p1212 CASCADE;
CREATE SCHEMA p1212;
SET search_path = p1212;

CREATE TABLE Teams (
    team_id   int PRIMARY KEY,
    team_name varchar
);

CREATE TABLE Matches (
    match_id    int PRIMARY KEY,
    host_team   int,
    guest_team  int,
    host_goals  int,
    guest_goals int,
    -- "a finished match between two different teams"
    CHECK (host_team <> guest_team)
);

-- Example from the problem statement
-- Expected: (10, Leetcode FC, 7), (20, NewYork FC, 3), (50, Toronto FC, 3),
--           (30, Atlanta FC, 1), (40, Chicago FC, 0)
INSERT INTO Teams VALUES
    (10, 'Leetcode FC'),
    (20, 'NewYork FC'),
    (30, 'Atlanta FC'),
    (40, 'Chicago FC'),
    (50, 'Toronto FC');

INSERT INTO Matches VALUES
    (1, 10, 20, 3, 0),
    (2, 30, 10, 2, 2),
    (3, 10, 50, 5, 1),
    (4, 20, 30, 1, 0),
    (5, 50, 30, 1, 0);
