WITH countries_duration AS (
    SELECT
        c1.name AS caller_country
      , c2.name AS callee_country
      , c.duration
    FROM calls c
    JOIN person p1
      ON c.caller_id = p1.id
    JOIN person p2
      ON c.callee_id = p2.id
    JOIN country c1
      ON LEFT(p1.phone_number, 3) = c1.country_code
    JOIN country c2
      ON LEFT(p2.phone_number, 3) = c2.country_code
)
, united_durations AS (
    SELECT
        caller_country AS country
      , duration
    FROM countries_duration
    UNION ALL
    SELECT
        callee_country
      , duration
    FROM countries_duration
)
SELECT country
FROM united_durations
GROUP BY country
HAVING avg(duration) > (SELECT avg(duration) FROM united_durations)
;
