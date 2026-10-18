DROP SCHEMA IF EXISTS p1112 CASCADE;
CREATE SCHEMA p1112;
SET search_path = p1112;

CREATE TABLE Enrollments (
    student_id int NOT NULL,
    course_id  int NOT NULL,
    grade      int NOT NULL,
    PRIMARY KEY (student_id, course_id)
);

-- Example from the problem statement
-- Expected: (1, 2, 99), (2, 2, 95), (3, 3, 82)
INSERT INTO Enrollments VALUES
    (2, 2, 95),
    (2, 3, 95),
    (1, 1, 90),
    (1, 2, 99),
    (3, 1, 80),
    (3, 2, 75),
    (3, 3, 82);
