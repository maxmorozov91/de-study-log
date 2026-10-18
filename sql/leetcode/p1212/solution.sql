WITH as_host AS (
    SELECT 
        t.team_id
      , SUM(
            CASE 
                WHEN h.host_goals > h.guest_goals THEN 3
                WHEN h.host_goals = h.guest_goals THEN 1
                ELSE 0
            END
        ) AS scores
    FROM teams t
    LEFT JOIN matches h
        ON t.team_id = h.host_team
    GROUP BY t.team_id
)
, as_guest AS (
    SELECT 
        t.team_id
      , SUM(
            CASE 
                WHEN g.host_goals < g.guest_goals THEN 3
                WHEN g.host_goals = g.guest_goals THEN 1
                ELSE 0
            END
        ) AS scores
    FROM teams t
    LEFT JOIN matches g
        ON t.team_id = g.guest_team
    GROUP BY t.team_id
)
SELECT
    team_id
  , t.team_name
  , ah.scores + ag.scores AS num_points
FROM teams t
LEFT JOIN as_host ah USING (team_id)
LEFT JOIN as_guest ag USING (team_id)
ORDER BY num_points DESC, team_id
;
