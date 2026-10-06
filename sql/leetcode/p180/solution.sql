SELECT DISTINCT
    num AS ConsecutiveNums
FROM (
    SELECT
        num
      , (num = LAG(num, 1) OVER w)
        AND (num = LAG(num, 2) OVER w) AS flg
    FROM Logs
    WINDOW w AS (ORDER BY id)
)
WHERE flg
;
