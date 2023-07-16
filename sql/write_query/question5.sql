-- 以下にクエリを書いてください
SELECT 
    p.id AS post_id,
    p.content,
    COUNT(l.post_id) AS likes_count
FROM posts p
LEFT JOIN
    likes l ON p.id = l.post_id
GROUP BY
    p.id,
    p.content
ORDER BY likes_count DESC, posted_at DESC;