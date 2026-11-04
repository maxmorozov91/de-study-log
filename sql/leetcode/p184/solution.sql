SELECT 
    d.name   as "Department"
  , e.name   as "Employee"
  , e.salary as "Salary"
FROM employee e
JOIN department d
  ON e.departmentid = d.id
WHERE (e.departmentid, e.salary) IN (
    SELECT
        departmentid
      , max(salary)
    FROM employee
    GROUP BY departmentid
)
;
