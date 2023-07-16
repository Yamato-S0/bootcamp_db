-- 以下にクエリを書いてください
SELECT username, content, posted_at FROM users INNER JOIN posts ON users.id = posts.user_id ORDER BY posted_at DESC LIMIT 20;