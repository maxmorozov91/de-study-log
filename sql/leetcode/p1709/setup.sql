DROP SCHEMA IF EXISTS p1709 CASCADE;
CREATE SCHEMA p1709;
SET search_path = p1709;

CREATE TABLE UserVisits (
    user_id    int,
    visit_date date
);

-- Example from the problem statement ("today" is fixed at 2021-01-01)
-- Expected, in this order: (1, 39), (2, 65), (3, 51)
INSERT INTO UserVisits VALUES
    (1, '2020-11-28'),
    (1, '2020-10-20'),
    (1, '2020-12-03'),
    (2, '2020-10-05'),
    (2, '2020-12-09'),
    (3, '2020-11-11');
