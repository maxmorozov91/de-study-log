DROP SCHEMA IF EXISTS p1440 CASCADE;
CREATE SCHEMA p1440;
SET search_path = p1440;

CREATE TABLE Variables (
    name  varchar PRIMARY KEY,
    value int
);

CREATE TABLE Expressions (
    left_operand  varchar,
    operator      varchar CHECK (operator IN ('<', '>', '=')),
    right_operand varchar,
    PRIMARY KEY (left_operand, operator, right_operand)
);

-- Example from the problem statement
-- Expected: (x > y false), (x < y true), (x = y false),
--           (y > x true), (y < x false), (x = x true)
INSERT INTO Variables VALUES
    ('x', 66),
    ('y', 77);

INSERT INTO Expressions VALUES
    ('x', '>', 'y'),
    ('x', '<', 'y'),
    ('x', '=', 'y'),
    ('y', '>', 'x'),
    ('y', '<', 'x'),
    ('x', '=', 'x');
