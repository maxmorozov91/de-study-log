DROP SCHEMA IF EXISTS p1174 CASCADE;
CREATE SCHEMA p1174;
SET search_path = p1174;

CREATE TABLE Delivery (
    delivery_id                 int  PRIMARY KEY,
    customer_id                 int  NOT NULL,
    order_date                  date NOT NULL,
    customer_pref_delivery_date date NOT NULL,
    -- "on the same order date or after it"
    CHECK (customer_pref_delivery_date >= order_date)
);

-- Example from the problem statement (expected result: 50.00)
INSERT INTO Delivery VALUES
    (1, 1, '2019-08-01', '2019-08-02'),
    (2, 2, '2019-08-02', '2019-08-02'),
    (3, 1, '2019-08-11', '2019-08-12'),
    (4, 3, '2019-08-24', '2019-08-24'),
    (5, 3, '2019-08-21', '2019-08-22'),
    (6, 2, '2019-08-11', '2019-08-13'),
    (7, 4, '2019-08-09', '2019-08-09');