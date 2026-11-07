WITH RECURSIVE subs AS (
    SELECT employee_id
    FROM employees
    WHERE manager_id = 1 AND employee_id <> 1
    UNION
    SELECT e.employee_id
    FROM employees e
    JOIN subs s
    ON e.manager_id = s.employee_id
)
SELECT * FROM subs;
