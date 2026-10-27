DROP SCHEMA IF EXISTS p1795 CASCADE;
CREATE SCHEMA p1795;
SET search_path = p1795;

CREATE TABLE Products (
    product_id int PRIMARY KEY,
    store1     int,
    store2     int,
    store3     int
);

-- Example from the problem statement
-- Expected: (0, store1, 95), (0, store2, 100), (0, store3, 105),
--           (1, store1, 70), (1, store3, 80)
INSERT INTO Products VALUES
    (0, 95, 100,  105),
    (1, 70, NULL, 80);
