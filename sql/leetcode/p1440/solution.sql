SELECT
    e.left_operand
  , e.OPERATOR
  , e.right_operand
  , (CASE
      WHEN e.OPERATOR = '<' THEN (l.value < r.value)
      WHEN e.OPERATOR = '=' THEN (l.value = r.value)
      WHEN e.OPERATOR = '>' THEN (l.value > r.value)
  END)::text AS value
FROM expressions e
JOIN variables l ON l.name = e.left_operand
JOIN variables r ON r.name = e.right_operand
;
