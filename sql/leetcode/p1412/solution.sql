WITH bounds AS (
    SELECT 
        exam_id
      , min(score) AS lo
      , max(score) AS hi
    FROM exam
    GROUP BY exam_id
)
SELECT
    student_id
  , student_name
FROM student s
WHERE EXISTS (SELECT 1 FROM exam e WHERE e.student_id = s.student_id)
  AND NOT EXISTS (
    SELECT 1
    FROM exam e
    JOIN bounds b USING (exam_id)
    WHERE e.student_id = s.student_id
      AND e.score IN (b.lo, b.hi)
  )
ORDER BY student_id
;
