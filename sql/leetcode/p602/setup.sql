DROP SCHEMA IF EXISTS p602 CASCADE;
CREATE SCHEMA p602;
SET search_path = p602;

CREATE TABLE RequestAccepted (
    requester_id int,
    accepter_id  int,
    accept_date  date,
    PRIMARY KEY (requester_id, accepter_id)
);

-- Example from the problem statement (expected result: id 3, num 3)
INSERT INTO RequestAccepted VALUES
    (1, 2, '2016-06-03'),
    (1, 3, '2016-06-08'),
    (2, 3, '2016-06-08'),
    (3, 4, '2016-06-09');
