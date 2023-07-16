-- 以下にクエリを書いてください
SELECT
    u.username AS username,
    p.content AS latest_post_content
FROM users u
INNER JOIN posts p ON u.id = p.user_id
INNER JOIN
    (
        SELECT
            user_id,
            MAX(posted_at) AS latest_posted_at
        FROM posts
        GROUP BY user_id
    ) AS latest_posts ON p.user_id = latest_posts.user_id AND p.posted_at = latest_posts.latest_posted_at
ORDER BY
    u.username ASC;