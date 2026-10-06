-- Write your PostgreSQL query statement below
WITH first_year AS (
    SELECT
        product_id
      , MIN(year) AS year
    FROM Sales
    GROUP BY product_id
)
SELECT
    s.product_id
  , fy.year AS first_year
  , s.quantity
  , s.price
FROM Sales s
INNER JOIN first_year fy
    USING (product_id, year)
;
