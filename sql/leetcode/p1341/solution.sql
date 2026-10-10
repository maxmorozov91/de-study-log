(
    SELECT
        u.name AS results
    FROM Users u
    INNER JOIN MovieRating mr
        USING (user_id)
    GROUP BY u.user_id
    ORDER BY COUNT(mr.user_id) DESC, u.name
    LIMIT 1
)
UNION ALL
(
    SELECT
        m.title
    FROM Movies m
    INNER JOIN MovieRating mr
        USING (movie_id)
    WHERE mr.created_at BETWEEN '2020-02-01'::DATE AND '2020-02-29'::DATE
    GROUP BY m.movie_id
    ORDER BY AVG(mr.rating) DESC, m.title
    LIMIT 1
)
;
