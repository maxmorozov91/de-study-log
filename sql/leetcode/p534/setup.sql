DROP SCHEMA IF EXISTS p534 CASCADE;
CREATE SCHEMA p534;
SET search_path = p534;

CREATE TABLE Activity (
    player_id    int,
    device_id    int,
    event_date   date,
    games_played int,
    PRIMARY KEY (player_id, event_date)
);

-- Example from the problem statement
-- Expected: (1, 2016-03-01, 5), (1, 2016-05-02, 11), (1, 2017-06-25, 12),
--           (3, 2016-03-02, 0), (3, 2018-07-03, 5)
INSERT INTO Activity VALUES
    (1, 2, '2016-03-01', 5),
    (1, 2, '2016-05-02', 6),
    (1, 3, '2017-06-25', 1),
    (3, 1, '2016-03-02', 0),
    (3, 4, '2018-07-03', 5);
