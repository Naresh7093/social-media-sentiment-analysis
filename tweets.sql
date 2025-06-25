create database social_media_sentiment_analysis;
use social_media_sentiment_analysis;

CREATE TABLE tweets (
    tweet_id INT PRIMARY KEY,
    airline VARCHAR(50),
    airline_sentiment VARCHAR(20),
    text TEXT
);
select * from tweets;
--total tweets by sentiment
select airline_sentiment, count(*) as total_tweets
FROM tweets
Group by airline_sentiment;
-- total tweets per airline
select airline, count(*) as total_tweets
from tweets
group by airline
order by total_tweets desc;

--airline wise sentiment
SELECT 
  airline,
  airline_sentiment,
  COUNT(*) AS sentiment_count
FROM tweets
GROUP BY airline, airline_sentiment
ORDER BY airline, sentiment_count DESC;

--most positive airline
SELECT airline, COUNT(*) AS positive_count
FROM tweets
WHERE airline_sentiment = 'positive'
GROUP BY airline
ORDER BY positive_count DESC
LIMIT 1;
--most negative airline
SELECT airline, COUNT(*) AS negative_count
FROM tweets
WHERE airline_sentiment = 'negative'
GROUP BY airline
ORDER BY negative_count DESC
LIMIT 1;

