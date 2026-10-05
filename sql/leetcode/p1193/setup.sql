DROP SCHEMA IF EXISTS p1193 CASCADE;
CREATE SCHEMA p1193;
SET search_path = p1193;

CREATE TABLE Transactions (
    id         int PRIMARY KEY,
    country    varchar NOT NULL,
    state      text NOT NULL CHECK (state IN ('approved', 'declined')),
    amount     int NOT NULL,
    trans_date date NOT NULL
);

INSERT INTO Transactions VALUES
    (121, 'US', 'approved', 1000, '2018-12-18'),
    (122, 'US', 'declined', 2000, '2018-12-19'),
    (123, 'US', 'approved', 2000, '2019-01-01'),
    (124, 'DE', 'approved', 2000, '2019-01-07');
