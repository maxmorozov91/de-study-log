DROP SCHEMA IF EXISTS p1264 CASCADE;
CREATE SCHEMA p1264;
SET search_path = p1264;

CREATE TABLE Friendship (
    user1_id int,
    user2_id int,
    PRIMARY KEY (user1_id, user2_id)
);

CREATE TABLE Likes (
    user_id int,
    page_id int,
    PRIMARY KEY (user_id, page_id)
);

-- Example from the problem statement
-- Expected: 23, 24, 56, 33, 77 (in any order)
INSERT INTO Friendship VALUES
    (1, 2),
    (1, 3),
    (1, 4),
    (2, 3),
    (2, 4),
    (2, 5),
    (6, 1);

INSERT INTO Likes VALUES
    (1, 88),
    (2, 23),
    (3, 24),
    (4, 56),
    (5, 11),
    (6, 33),
    (2, 77),
    (3, 77),
    (6, 88);
