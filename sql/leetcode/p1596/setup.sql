DROP SCHEMA IF EXISTS p1596 CASCADE;
CREATE SCHEMA p1596;
SET search_path = p1596;

CREATE TABLE Customers (
    customer_id int PRIMARY KEY,
    name        varchar
);

CREATE TABLE Products (
    product_id   int PRIMARY KEY,
    product_name varchar,
    price        int
);

CREATE TABLE Orders (
    order_id    int PRIMARY KEY,
    order_date  date,
    customer_id int,
    product_id  int,
    -- "No customer will order the same product more than once in a single day"
    UNIQUE (customer_id, product_id, order_date)
);

-- Example from the problem statement
-- Expected: (1, 2, mouse), (2, 1, keyboard), (2, 2, mouse), (2, 3, screen),
--           (3, 3, screen), (4, 1, keyboard)
INSERT INTO Customers VALUES
    (1, 'Alice'),
    (2, 'Bob'),
    (3, 'Tom'),
    (4, 'Jerry'),
    (5, 'John');

INSERT INTO Products VALUES
    (1, 'keyboard',  120),
    (2, 'mouse',      80),
    (3, 'screen',    600),
    (4, 'hard disk', 450);

INSERT INTO Orders VALUES
    (1,  '2020-07-31', 1, 1),
    (2,  '2020-07-30', 2, 2),
    (3,  '2020-08-29', 3, 3),
    (4,  '2020-07-29', 4, 1),
    (5,  '2020-06-10', 1, 2),
    (6,  '2020-08-01', 2, 1),
    (7,  '2020-08-01', 3, 3),
    (8,  '2020-08-03', 1, 2),
    (9,  '2020-08-07', 2, 3),
    (10, '2020-07-15', 1, 2);
