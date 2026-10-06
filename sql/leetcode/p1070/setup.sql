DROP SCHEMA IF EXISTS p1070 CASCADE;
CREATE SCHEMA p1070;
SET search_path = p1070;

CREATE TABLE Sales (
    sale_id    int NOT NULL,
    product_id int NOT NULL,
    year       int NOT NULL,
    quantity   int NOT NULL,
    price      int NOT NULL,
    PRIMARY KEY (sale_id, year)
);

-- Example from the problem statement
-- Expected: (100, 2008, 10, 5000), (200, 2011, 15, 9000)
INSERT INTO Sales VALUES
    (1, 100, 2008, 10, 5000),
    (2, 100, 2009, 12, 5000),
    (7, 200, 2011, 15, 9000);
