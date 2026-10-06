-- Write your PostgreSQL query statement below
WITH categories (category) AS (
    VALUES
        ('Low Salary')
      , ('Average Salary')
      , ('High Salary')
)
, categories_cnt AS (
    SELECT
        category
      , COUNT(*) AS accounts_count 
    FROM (
        SELECT
            CASE
                WHEN income < 20_000 THEN 'Low Salary'
                WHEN income BETWEEN 20_000 AND 50_000 THEN 'Average Salary'
                ELSE 'High Salary'
            END AS category
        FROM Accounts
    )
    GROUP BY category
)
SELECT
    c.category
  , COALESCE(cc.accounts_count, 0) AS accounts_count
FROM categories c
LEFT JOIN categories_cnt cc
    USING (category)
;
