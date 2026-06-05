CREATE DATABASE netflix_sentiment;
USE netflix_sentiment;
CREATE TABLE netflix_reviews (
    reviewId              VARCHAR(255) PRIMARY KEY,
    userName              VARCHAR(255),
    content               TEXT,
    clean_review          TEXT,
    score                 INT,
    sentiment             VARCHAR(20),
    thumbsUpCount         INT,
    reviewCreatedVersion  VARCHAR(50),
    appVersion            VARCHAR(50),
    at                    DATE
);

USE netflix_sentiment;
SELECT * FROM netflix_reviews LIMIT 10;

SELECT COUNT(*) AS total_reviews;

SELECT sentiment, COUNT(*) AS review_count
FROM netflix_reviews
GROUP BY sentiment
ORDER BY review_count DESC;


SELECT sentiment, ROUND(AVG(score), 2) AS avg_score
FROM netflix_reviews
GROUP BY sentiment
ORDER BY avg_score DESC;

SELECT 
    DATE_FORMAT(at, '%Y-%m') AS month,
    sentiment,
    COUNT(*) AS review_count
FROM netflix_reviews
GROUP BY month, sentiment
ORDER BY month, sentiment;


SELECT appVersion, sentiment, COUNT(*) AS review_count
FROM netflix_reviews
GROUP BY appVersion, sentiment
ORDER BY appVersion, sentiment;

SELECT 
    appVersion,
    COUNT(*) AS negative_count
FROM netflix_reviews
WHERE sentiment = 'negative'
GROUP BY appVersion
ORDER BY negative_count DESC;

SELECT 
    appVersion,
    COUNT(*) AS negative_count
FROM netflix_reviews
WHERE sentiment = 'negative'
GROUP BY appVersion
HAVING negative_count < 50
ORDER BY negative_count ASC;

SELECT 
    reviewId,
    userName,
    content,
    sentiment,
    score,
    thumbsUpCount,
    appVersion,
    at
FROM netflix_reviews
ORDER BY thumbsUpCount DESC
LIMIT 20;

SELECT 
    reviewId,
    userName,
    content,
    score,
    thumbsUpCount,
    appVersion,
    at
FROM netflix_reviews
WHERE sentiment = 'negative'
ORDER BY thumbsUpCount DESC
LIMIT 20;





