DROP SCHEMA IF EXISTS p1164 CASCADE;
CREATE SCHEMA p1164;
SET search_path = p1164;

CREATE TABLE Products (
    product_id  int  NOT NULL,
    new_price   int,
    change_date date NOT NULL,
    PRIMARY KEY (product_id, change_date)
);

-- Example from the problem statement
-- Expected: (1, 35), (2, 50), (3, 10)
INSERT INTO Products VALUES
    (1, 20, '2019-08-14'),
    (2, 50, '2019-08-14'),
    (1, 30, '2019-08-15'),
    (1, 35, '2019-08-16'),
    (2, 65, '2019-08-17'),
    (3, 20, '2019-08-18');
