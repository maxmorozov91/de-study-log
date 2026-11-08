DROP SCHEMA IF EXISTS p1412 CASCADE;
CREATE SCHEMA p1412;
SET search_path = p1412;

CREATE TABLE Student (
    student_id   int PRIMARY KEY,
    student_name varchar
);

CREATE TABLE Exam (
    exam_id    int,
    student_id int,
    score      int,
    PRIMARY KEY (exam_id, student_id)
);

-- Example from the problem statement (expected result: (2, Jade))
INSERT INTO Student VALUES
    (1, 'Daniel'),
    (2, 'Jade'),
    (3, 'Stella'),
    (4, 'Jonathan'),
    (5, 'Will');

INSERT INTO Exam VALUES
    (10, 1, 70),
    (10, 2, 80),
    (10, 3, 90),
    (20, 1, 80),
    (30, 1, 70),
    (30, 3, 80),
    (30, 4, 90),
    (40, 1, 60),
    (40, 2, 70),
    (40, 4, 80);
