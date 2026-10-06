DROP SCHEMA IF EXISTS p1907 CASCADE;
CREATE SCHEMA p1907;
SET search_path = p1907;

CREATE TABLE Accounts (
    account_id int PRIMARY KEY,
    income     int
);

-- Example from the problem statement
-- Expected: Low Salary 1, Average Salary 0, High Salary 3
INSERT INTO Accounts VALUES
    (3, 108939),
    (2, 12747),
    (8, 87709),
    (6, 91796);

