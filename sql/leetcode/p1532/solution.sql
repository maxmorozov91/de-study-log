SELECT
    c.name as customer_name
  , c.customer_id
  , o.order_id
  , o.order_date
FROM customers c
CROSS JOIN LATERAL (
    SELECT
        order_id
      , order_date
      , customer_id
    FROM orders
    WHERE customer_id = c.customer_id
    ORDER BY order_date DESC
    LIMIT 3
) o
ORDER BY c.name, c.customer_id, o.order_date DESC
;
