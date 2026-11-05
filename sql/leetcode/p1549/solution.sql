SELECT
    p.product_name
  , product_id
  , o.order_id
  , o.order_date
FROM (
    SELECT
        order_id
      , order_date
      , product_id
      , rank() OVER (PARTITION BY product_id ORDER BY order_date desc) AS rnk
    FROM orders
) o
JOIN products p USING (product_id)
WHERE o.rnk = 1
order by p.product_name, product_id, order_id
;
