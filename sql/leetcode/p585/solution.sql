SELECT
    ROUND(SUM(tiv_2016)::NUMERIC, 2) AS tiv_2016
FROM Insurance i
WHERE NOT EXISTS (
    SELECT 1
    FROM Insurance i1
    WHERE i.lat = i1.lat
      AND i.lon = i1.lon
      AND i.pid <> i1.pid
) AND EXISTS (
    SELECT 1
    FROM Insurance i1
    WHERE i.tiv_2015 = i1.tiv_2015
      AND i.pid <> i1.pid 
);
