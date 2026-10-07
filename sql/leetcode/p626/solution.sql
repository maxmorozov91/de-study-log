-- Write your PostgreSQL query statement below
SELECT
    id
  , CASE
        WHEN id % 2 = 1 THEN LEAD(student, 1, student) OVER w
        ELSE LAG(student, 1) OVER w
    END AS student
FROM Seat
WINDOW w AS (ORDER BY id)
ORDER BY id
;
