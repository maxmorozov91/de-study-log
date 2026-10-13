WITH emp_rnks AS (
    SELECT
        name
      , salary
      , departmentId
      , DENSE_RANK() OVER (
            PARTITION BY departmentId
            ORDER BY salary DESC NULLS LAST
        ) AS rnk
    FROM Employee
)
SELECT
    d.name    AS "Department"
  , er.name   AS "Employee"
  , er.salary AS "Salary"
FROM Department d
JOIN emp_rnks er
    ON d.id = er.departmentId
WHERE er.rnk <= 3
;
