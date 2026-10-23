SELECT 
    least(from_id, to_id)    AS person1
  , greatest(from_id, to_id) AS person2
  , count(*)                 AS call_count
  , sum(duration)            AS total_duration
FROM calls
GROUP BY 1, 2
;
