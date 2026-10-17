DROP SCHEMA IF EXISTS p1484 CASCADE;
CREATE SCHEMA p1484;
SET search_path = p1484;

CREATE TABLE Activities (
    sell_date date,
    product   varchar
);

-- Example from the problem statement
-- Expected: (2020-05-30, 3, 'Basketball,Headphone,T-Shirt'),
--           (2020-06-01, 2, 'Bible,Pencil'),
--           (2020-06-02, 1, 'Mask')
INSERT INTO Activities VALUES
    ('2020-05-30', 'Headphone'),
    ('2020-06-01', 'Pencil'),
    ('2020-06-02', 'Mask'),
    ('2020-05-30', 'Basketball'),
    ('2020-06-01', 'Bible'),
    ('2020-06-02', 'Mask'),
    ('2020-05-30', 'T-Shirt');
