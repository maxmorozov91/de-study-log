SELECT user_id, max(w) AS  biggest_window
FROM (
    SELECT 
        user_id
      , visit_date
      , lead(visit_date, 1, '2021-01-01'::date)
        OVER (PARTITION BY user_id ORDER BY visit_date) - visit_date AS w
    FROM uservisits
    where visit_date is not null
) as t
GROUP BY user_id
ORDER BY user_id
;
