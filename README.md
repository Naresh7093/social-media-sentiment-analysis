# 💬 Social Media Sentiment Analysis (SQL Project)

This project analyzes customer sentiment toward different airlines based on tweets, using SQL for data storage and querying. It showcases the ability to structure, explore, and derive insights from unstructured text-based feedback data — valuable for business and product strategy teams.

---

## 📌 Objectives

- Analyze customer sentiment (positive, neutral, negative)
- Find the most loved or criticized airline
- Break down sentiment by airline for performance insights
- Demonstrate SQL skills in grouping, filtering, and aggregating real-world data

---

## 🗂️ Database Schema

### Table: `tweets`

| Column            | Type           | Description                         |
|------------------|----------------|-------------------------------------|
| tweet_id         | INT (PK)       | Unique tweet identifier             |
| airline          | VARCHAR(50)    | Airline name (Delta, United, etc.) |
| airline_sentiment| VARCHAR(20)    | Sentiment label                     |
| text             | TEXT           | Tweet content                       |

---

## 📊 Key SQL Queries

### 1. Total Tweets by Sentiment
```sql
SELECT airline_sentiment, COUNT(*) AS total_tweets
FROM tweets
GROUP BY airline_sentiment;
```
---
### 2. Total Tweets per Airline
```sql
SELECT airline, COUNT(*) AS total_tweets
FROM tweets
GROUP BY airline
ORDER BY total_tweets DESC;

```
---
### 3. Sentiment Breakdown by Airline
```sql
SELECT airline, airline_sentiment, COUNT(*) AS sentiment_count
FROM tweets
GROUP BY airline, airline_sentiment
ORDER BY airline, sentiment_count DESC;

```
---
### 4. Most Positive Airline
```sql
SELECT airline, COUNT(*) AS positive_count
FROM tweets
WHERE airline_sentiment = 'positive'
GROUP BY airline
ORDER BY positive_count DESC
LIMIT 1;

```
---
### 5. Most Negative Airline
```sql
SELECT airline, COUNT(*) AS negative_count
FROM tweets
WHERE airline_sentiment = 'negative'
GROUP BY airline
ORDER BY negative_count DESC
LIMIT 1;

```
---

### 🔗 Author
-📧 naresh.tallapaka@protonmail.com
-🔗 LinkedIn
-🔗 GitHub Portfolio

---