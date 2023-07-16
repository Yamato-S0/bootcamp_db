-- 以下にクエリを書いてください
SELECT id, SUBSTRING(content, 1, 20) AS content, posted_at FROM posts WHERE user_id = 5 ORDER BY posted_at DESC LIMIT 10;