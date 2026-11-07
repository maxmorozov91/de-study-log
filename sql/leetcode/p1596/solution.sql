WITH counter AS (
    SELECT
        customer_id
      , product_id
      , COUNT(*) AS cnt
    FROM orders
    GROUP BY 1, 2
)
, ranked AS (
    SELECT
        customer_id
      , product_id
      , rank() OVER (PARTITION BY customer_id ORDER BY cnt desc) AS rnk
    FROM counter
)
SELECT
    r.customer_id
  , product_id
  , p.product_name
FROM ranked r
JOIN products p USING (product_id)
WHERE r.rnk = 1
;
