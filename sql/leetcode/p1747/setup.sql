DROP SCHEMA IF EXISTS p1747 CASCADE;
CREATE SCHEMA p1747;
SET search_path = p1747;

CREATE TABLE LogInfo (
    account_id int,
    ip_address int,
    login      timestamp,
    logout     timestamp,
    -- "It is guaranteed that the logout time is after the login time"
    CHECK (logout > login)
);

-- Example from the problem statement (expected result: accounts 1 and 4)
INSERT INTO LogInfo VALUES
    (1, 1,  '2021-02-01 09:00:00', '2021-02-01 09:30:00'),
    (1, 2,  '2021-02-01 08:00:00', '2021-02-01 11:30:00'),
    (2, 6,  '2021-02-01 20:30:00', '2021-02-01 22:00:00'),
    (2, 7,  '2021-02-02 20:30:00', '2021-02-02 22:00:00'),
    (3, 9,  '2021-02-01 16:00:00', '2021-02-01 16:59:59'),
    (3, 13, '2021-02-01 17:00:00', '2021-02-01 17:59:59'),
    (4, 10, '2021-02-01 16:00:00', '2021-02-01 17:00:00'),
    (4, 11, '2021-02-01 17:00:00', '2021-02-01 17:59:59');
