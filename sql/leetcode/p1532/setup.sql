DROP SCHEMA IF EXISTS p1532 CASCADE;
CREATE SCHEMA p1532;
SET search_path = p1532;

CREATE TABLE Customers (
    customer_id int PRIMARY KEY,
    name        varchar
);

CREATE TABLE Orders (
    order_id    int PRIMARY KEY,
    order_date  date,
    customer_id int,
    cost        int,
    -- "Each customer has one order per day"
    UNIQUE (customer_id, order_date)
);

-- Example from the problem statement
-- Expected, in this order:
--   (Annabelle, 3, 7, 2020-08-01), (Annabelle, 3, 3, 2020-07-31),
--   (Jonathan, 2, 9, 2020-08-07), (Jonathan, 2, 6, 2020-08-01), (Jonathan, 2, 2, 2020-07-30),
--   (Marwan, 4, 4, 2020-07-29),
--   (Winston, 1, 8, 2020-08-03), (Winston, 1, 1, 2020-07-31), (Winston, 1, 10, 2020-07-15)
INSERT INTO Customers VALUES
    (1, 'Winston'),
    (2, 'Jonathan'),
    (3, 'Annabelle'),
    (4, 'Marwan'),
    (5, 'Khaled');

INSERT INTO Orders VALUES
    (1,  '2020-07-31', 1, 30),
    (2,  '2020-07-30', 2, 40),
    (3,  '2020-07-31', 3, 70),
    (4,  '2020-07-29', 4, 100),
    (5,  '2020-06-10', 1, 1010),
    (6,  '2020-08-01', 2, 102),
    (7,  '2020-08-01', 3, 111),
    (8,  '2020-08-03', 1, 99),
    (9,  '2020-08-07', 2, 32),
    (10, '2020-07-15', 1, 2);
