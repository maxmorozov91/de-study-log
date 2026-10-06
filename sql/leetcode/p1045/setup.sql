DROP SCHEMA IF EXISTS p1045 CASCADE;
CREATE SCHEMA p1045;
SET search_path = p1045;

CREATE TABLE Product (
    product_key int PRIMARY KEY
);

CREATE TABLE Customer (
    customer_id int NOT NULL,
    product_key int REFERENCES Product (product_key)
);

-- Example from the problem statement (expected result: customers 1 and 3)
INSERT INTO Product VALUES
    (5),
    (6);

INSERT INTO Customer VALUES
    (1, 5),
    (2, 6),
    (3, 5),
    (3, 6),
    (1, 6);
