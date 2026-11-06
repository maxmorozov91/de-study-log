WITH proj_emp AS (
    SELECT
        employee_id
      , p.project_id
      , rank() OVER (PARTITION BY project_id ORDER BY e.experience_years desc) AS rnk
    FROM project p
    JOIN employee e
    USING (employee_id)
    where e.experience_years is not null
)
SELECT
    project_id
  , employee_id
FROM proj_emp
WHERE rnk = 1
;
