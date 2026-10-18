-- Write your PostgreSQL query statement below
SELECT *
FROM Customers c
WHERE EXISTS (
    SELECT 1
    FROM Orders o
    WHERE c.customer_id = o.customer_id
      AND o.product_name = 'A'
) AND EXISTS (
    SELECT 1
    FROM Orders o
    WHERE c.customer_id = o.customer_id
      AND o.product_name = 'B'
) AND NOT EXISTS (
    SELECT 1
    FROM Orders o
    WHERE c.customer_id = o.customer_id
      AND o.product_name = 'C'
)
;
