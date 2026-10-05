WITH first_login AS (
    SELECT
        a.player_id
      , MIN(a.event_date) AS first_login_date
    FROM Activity a
    GROUP BY a.player_id
)
SELECT
    ROUND(
        COUNT(a.player_id)::NUMERIC / COUNT(*)
      , 2
    ) AS fraction
FROM first_login fl
LEFT JOIN Activity a
    ON a.player_id = fl.player_id
   AND a.event_date = fl.first_login_date + 1
;