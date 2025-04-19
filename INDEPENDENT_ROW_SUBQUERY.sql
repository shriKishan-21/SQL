-- INDEPENDENT SUBQUERY (ROW SUBQUERY)

-- QUESTION 1
SELECT * FROM zomato.`users (1)`
WHERE user_id NOT IN (SELECT DISTINCT(user_id) FROM zomato.`orders (1)`);

-- QUESTION 2
-- METHOD 1 (NOT WORK IN WORKBENCH)
-- SELECT * FROM sql_cx_live.movies
-- WHERE director IN (SELECT director FROM sql_cx_live.movies
-- GROUP BY director
-- ORDER BY SUM(gross) DESC LIMIT 3)
-- METHOD 2
WITH top_director AS (
SELECT director FROM sql_cx_live.movies
GROUP BY director
ORDER BY SUM(gross) DESC LIMIT 3)

SELECT * FROM sql_cx_live.movies
WHERE director IN (SELECT * FROM top_director);

-- QUESTION 3
USE sql_cx_live;
SELECT * FROM movies
WHERE  star IN (SELECT star
FROM movies
GROUP BY star
HAVING AVG(score) >= 8.5 AND SUM(votes) > 25000 )
