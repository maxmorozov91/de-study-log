SELECT DISTINCT l.page_id as recommended_page
FROM likes l
JOIN friendship f
  ON f.user2_id = l.user_id OR f.user1_id = l.user_id
WHERE (f.user1_id = 1
   OR f.user2_id = 1)
  AND l.page_id NOT in (SELECT page_id FROM likes WHERE user_id = 1);
