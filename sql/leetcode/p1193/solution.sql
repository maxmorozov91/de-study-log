SELECT 
    TO_CHAR(t.trans_date, 'YYYY-MM')             AS month
  , t.country
  , COUNT(*)                                     AS trans_count
  , COUNT(*) FILTER (WHERE t.state = 'approved') AS approved_count
  , SUM(t.amount)                                AS trans_total_amount
  , COALESCE(
        SUM(t.amount) FILTER (WHERE t.state = 'approved')
      , 0
    )                                            AS approved_total_amount
FROM p1193.transactions t
GROUP BY
    TO_CHAR(t.trans_date, 'YYYY-MM')
  , t.country;