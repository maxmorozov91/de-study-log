DROP SCHEMA IF EXISTS p1445 CASCADE;
CREATE SCHEMA p1445;
SET search_path = p1445;

CREATE TABLE Sales (
    sale_date date,
    fruit     varchar CHECK (fruit IN ('apples', 'oranges')),
    sold_num  int,
    PRIMARY KEY (sale_date, fruit)
);

-- Example from the problem statement
-- Expected: (2020-05-01, 2), (2020-05-02, 0), (2020-05-03, 20), (2020-05-04, -1)
INSERT INTO Sales VALUES
    ('2020-05-01', 'apples',  10),
    ('2020-05-01', 'oranges',  8),
    ('2020-05-02', 'apples',  15),
    ('2020-05-02', 'oranges', 15),
    ('2020-05-03', 'apples',  20),
    ('2020-05-03', 'oranges',  0),
    ('2020-05-04', 'apples',  15),
    ('2020-05-04', 'oranges', 16);
