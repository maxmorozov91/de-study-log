DROP SCHEMA IF EXISTS p1341 CASCADE;
CREATE SCHEMA p1341;
SET search_path = p1341;

CREATE TABLE Movies (
    movie_id int     PRIMARY KEY,
    title    varchar UNIQUE
);

CREATE TABLE Users (
    user_id int     PRIMARY KEY,
    name    varchar UNIQUE
);

CREATE TABLE MovieRating (
    movie_id   int,
    user_id    int,
    rating     int,
    created_at date,
    PRIMARY KEY (movie_id, user_id)
);

-- Example from the problem statement
-- Expected: Daniel, Frozen 2
INSERT INTO Movies VALUES
    (1, 'Avengers'),
    (2, 'Frozen 2'),
    (3, 'Joker');

INSERT INTO Users VALUES
    (1, 'Daniel'),
    (2, 'Monica'),
    (3, 'Maria'),
    (4, 'James');

INSERT INTO MovieRating VALUES
    (1, 1, 3, '2020-01-12'),
    (1, 2, 4, '2020-02-11'),
    (1, 3, 2, '2020-02-12'),
    (1, 4, 1, '2020-01-01'),
    (2, 1, 5, '2020-02-17'),
    (2, 2, 2, '2020-02-01'),
    (2, 3, 2, '2020-03-01'),
    (3, 1, 3, '2020-02-22'),
    (3, 2, 4, '2020-02-25');
