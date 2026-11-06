WITH "label" AS (
    SELECT
        log_id
      , log_id - row_number() OVER (ORDER BY log_id) AS "group"
    FROM logs
    WHERE log_id IS NOT NULL 
)
SELECT
    min(log_id) AS start_id
  , max(log_id) AS end_id
FROM "label"
GROUP BY "group"
ORDER BY 1
;
