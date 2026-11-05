DROP SCHEMA IF EXISTS p1831 CASCADE;
CREATE SCHEMA p1831;
SET search_path = p1831;

CREATE TABLE Transactions (
    transaction_id int PRIMARY KEY,
    day            timestamp,
    amount         int
);

-- Example from the problem statement (expected result, in order: 1, 5, 6, 8)
INSERT INTO Transactions VALUES
    (8, '2021-04-03 15:57:28', 57),
    (9, '2021-04-28 08:47:25', 21),
    (1, '2021-04-29 13:28:30', 58),
    (5, '2021-04-28 16:39:59', 40),
    (6, '2021-04-29 23:39:28', 58);
