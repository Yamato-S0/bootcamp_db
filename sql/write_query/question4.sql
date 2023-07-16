-- 以下にクエリを書いてください
SELECT id AS post_id,
content
FROM posts
WHERE id IN (
    SELECT post_id
    FROM post_tags
    WHERE tag_id IN (
        SELECT id
        FROM tags
        WHERE name = 'programming'
    )
)
ORDER BY id ASC;