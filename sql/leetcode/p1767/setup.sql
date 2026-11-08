DROP SCHEMA IF EXISTS p1767 CASCADE;
CREATE SCHEMA p1767;
SET search_path = p1767;

CREATE TABLE Tasks (
    task_id        int PRIMARY KEY,
    -- "It is guaranteed that 2 <= subtasks_count <= 20"
    subtasks_count int CHECK (subtasks_count BETWEEN 2 AND 20)
);

CREATE TABLE Executed (
    task_id    int,
    subtask_id int,
    PRIMARY KEY (task_id, subtask_id)
);

-- Example from the problem statement
-- Expected: (1, 1), (1, 3), (2, 1), (2, 2) (in any order)
INSERT INTO Tasks VALUES
    (1, 3),
    (2, 2),
    (3, 4);

INSERT INTO Executed VALUES
    (1, 2),
    (3, 1),
    (3, 2),
    (3, 3),
    (3, 4);
