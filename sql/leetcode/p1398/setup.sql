DROP SCHEMA IF EXISTS p1398 CASCADE;
CREATE SCHEMA p1398;
SET search_path = p1398;

CREATE TABLE Customers (
    customer_id   int PRIMARY KEY,
    customer_name varchar
);

CREATE TABLE Orders (
    order_id     int PRIMARY KEY,
    customer_id  int,
    product_name varchar
);

-- Example from the problem statement (expected result: (3, Elizabeth))
INSERT INTO Customers VALUES
    (1, 'Daniel'),
    (2, 'Diana'),
    (3, 'Elizabeth'),
    (4, 'Jhon');

INSERT INTO Orders VALUES
    (10, 1, 'A'),
    (20, 1, 'B'),
    (30, 1, 'D'),
    (40, 1, 'C'),
    (50, 2, 'A'),
    (60, 3, 'A'),
    (70, 3, 'B'),
    (80, 3, 'D'),
    (90, 4, 'C');
