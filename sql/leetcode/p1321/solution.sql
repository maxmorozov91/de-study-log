WITH daily_agg AS (
    SELECT
        visited_on
      , SUM(amount) AS amt
    FROM Customer
    GROUP BY visited_on
)
SELECT *
FROM (
    SELECT
        visited_on
      , SUM(amt) OVER w AS amount
      , ROUND(AVG(amt) OVER w, 2) AS average_amount
    FROM daily_agg
    WINDOW w AS (ORDER BY visited_on RANGE BETWEEN '6 days'::INTERVAL PRECEDING AND CURRENT ROW)
)
WHERE visited_on >= (SELECT MIN(visited_on) FROM daily_agg) + 6
ORDER BY visited_on
;
