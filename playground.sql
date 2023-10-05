\c nc_news_test

SELECT * FROM articles;
SELECT * FROM topics;
SELECT * FROM comments;

SELECT article_id, COUNT(article_id) 
FROM comments
GROUP BY article_id;

SELECT 
articles.author, articles.title, articles.article_id, articles.topic, articles.created_at, articles.votes, articles.article_img_url
, COUNT(comments.article_id) AS comment_count
FROM articles
LEFT JOIN comments ON comments.article_id = articles.article_id
GROUP BY articles.article_id
ORDER BY articles.created_at DESC;

SELECT 
comment_id, votes, created_at, author, body, article_id
FROM comments
WHERE article_id=3;

SELECT article_id FROM articles;