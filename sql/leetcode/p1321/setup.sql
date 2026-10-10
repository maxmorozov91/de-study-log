DROP SCHEMA IF EXISTS p1321 CASCADE;
CREATE SCHEMA p1321;
SET search_path = p1321;

CREATE TABLE Customer (
    customer_id int,
    name        varchar,
    visited_on  date,
    amount      int,
    PRIMARY KEY (customer_id, visited_on)
);

-- Example from the problem statement
-- Expected: (2019-01-07, 860, 122.86), (2019-01-08, 840, 120.00),
--           (2019-01-09, 840, 120.00), (2019-01-10, 1000, 142.86)
INSERT INTO Customer VALUES
    (1, 'Jhon',    '2019-01-01', 100),
    (2, 'Daniel',  '2019-01-02', 110),
    (3, 'Jade',    '2019-01-03', 120),
    (4, 'Khaled',  '2019-01-04', 130),
    (5, 'Winston', '2019-01-05', 110),
    (6, 'Elvis',   '2019-01-06', 140),
    (7, 'Anna',    '2019-01-07', 150),
    (8, 'Maria',   '2019-01-08',  80),
    (9, 'Jaze',    '2019-01-09', 110),
    (1, 'Jhon',    '2019-01-10', 130),
    (3, 'Jade',    '2019-01-10', 150);
