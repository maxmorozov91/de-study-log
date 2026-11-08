SELECT
    task_id
  , generate_series(1, subtasks_count) AS subtask_id
FROM tasks
EXCEPT
SELECT 
    task_id
  , subtask_id
FROM executed
;
