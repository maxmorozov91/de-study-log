SELECT transaction_id
FROM transactions
WHERE ("day"::date, amount) IN (
    SELECT
        "day"::date
      , max(amount)
    FROM transactions
    GROUP BY 1
)
ORDER BY 1
;
