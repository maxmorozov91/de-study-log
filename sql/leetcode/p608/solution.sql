SELECT
    id
  , CASE
      WHEN p_id IS NULL THEN 'Root'
      WHEN NOT EXISTS (SELECT 1 FROM tree t2 WHERE t2.p_id = t1.id) THEN 'Leaf'
      ELSE 'Inner'
  END AS type
FROM tree t1;
