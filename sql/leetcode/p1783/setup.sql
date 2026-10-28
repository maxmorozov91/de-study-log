DROP SCHEMA IF EXISTS p1783 CASCADE;
CREATE SCHEMA p1783;
SET search_path = p1783;

CREATE TABLE Players (
    player_id   int PRIMARY KEY,
    player_name varchar
);

CREATE TABLE Championships (
    year      int PRIMARY KEY,
    Wimbledon int,
    Fr_open   int,
    US_open   int,
    Au_open   int
);

-- Example from the problem statement
-- Expected: (1, Nadal, 7), (2, Federer, 5). Novak (3) won nothing, so he is not reported.
INSERT INTO Players VALUES
    (1, 'Nadal'),
    (2, 'Federer'),
    (3, 'Novak');

INSERT INTO Championships VALUES
    (2018, 1, 1, 1, 1),
    (2019, 1, 1, 2, 2),
    (2020, 2, 1, 2, 2);
