DROP SCHEMA IF EXISTS p1501 CASCADE;
CREATE SCHEMA p1501;
SET search_path = p1501;

CREATE TABLE Person (
    id           int PRIMARY KEY,
    name         varchar,
    -- 'xxx-yyyyyyy': 3-digit country code, a dash, 7 digits (leading zeros allowed)
    phone_number varchar CHECK (phone_number ~ '^\d{3}-\d{7}$')
);

CREATE TABLE Country (
    name         varchar,
    country_code varchar PRIMARY KEY CHECK (country_code ~ '^\d{3}$')
);

CREATE TABLE Calls (
    caller_id int,
    callee_id int,
    duration  int,
    CHECK (caller_id <> callee_id)
);

-- Example from the problem statement (expected result: Peru)
INSERT INTO Person VALUES
    (3,  'Jonathan', '051-1234567'),
    (12, 'Elvis',    '051-7654321'),
    (1,  'Moncef',   '212-1234567'),
    (2,  'Maroua',   '212-6523651'),
    (7,  'Meir',     '972-1234567'),
    (9,  'Rachel',   '972-0011100');

INSERT INTO Country VALUES
    ('Peru',     '051'),
    ('Israel',   '972'),
    ('Morocco',  '212'),
    ('Germany',  '049'),
    ('Ethiopia', '251');

INSERT INTO Calls VALUES
    (1,  9,  33),
    (2,  9,  4),
    (1,  2,  59),
    (3,  12, 102),
    (3,  12, 330),
    (12, 3,  5),
    (7,  9,  13),
    (7,  1,  3),
    (9,  7,  1),
    (1,  7,  7);
