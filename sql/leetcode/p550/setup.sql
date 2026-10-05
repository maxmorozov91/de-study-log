DROP SCHEMA IF EXISTS p550 CASCADE;
CREATE SCHEMA p550;
SET search_path = p550;

CREATE TABLE Activity (
    player_id    int  NOT NULL,
    device_id    int  NOT NULL,
    event_date   date NOT NULL,
    games_played int  NOT NULL,
    PRIMARY KEY (player_id, event_date)
);

-- Example from the problem statement (expected result: 0.33)
INSERT INTO Activity VALUES
    (1, 2, '2016-03-01', 5),
    (1, 2, '2016-03-02', 6),
    (2, 3, '2017-06-25', 1),
    (3, 1, '2016-03-02', 0),
    (3, 4, '2018-07-03', 5);