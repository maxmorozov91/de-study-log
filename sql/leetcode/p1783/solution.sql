WITH union_score AS (
    SELECT
        wimbledon AS player_id
    FROM championships
    UNION ALL
    SELECT
        fr_open
    FROM championships
    UNION ALL
    SELECT
        us_open
    FROM championships
    UNION ALL
    SELECT
        au_open
    FROM championships
) 
SELECT
    player_id
  , p.player_name
  , count(*) as grand_slams_count
FROM players p
JOIN union_score us USING (player_id)
GROUP BY player_id, p.player_name;
