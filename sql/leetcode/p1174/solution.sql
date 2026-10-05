WITH first_orders AS (
    SELECT DISTINCT ON (d.customer_id)
        d.customer_id
      , d.order_date
      , d.customer_pref_delivery_date
    FROM Delivery d
    ORDER BY d.customer_id, d.order_date
)
SELECT
    ROUND(
        AVG((fo.order_date = fo.customer_pref_delivery_date)::INT) * 100.0
      , 2
    ) AS immediate_percentage
FROM first_orders fo
;