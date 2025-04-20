-- Active: 1745078467906@@127.0.0.1@3306@zomato
-- CORRELATED SUBQUERY

-- QUESTION 1
SELECT * FROM sql_cx_live.movies m1
WHERE score > (
SELECT AVG(score) FROM sql_cx_live.movies m2
WHERE m2.genre = m1.genre
);

-- QUESTION 2   
USE zomato;
WITH fav_food AS (
SELECT   t2.user_id , name , f_name , COUNT(*) AS 'frequency'
FROM userss t1
JOIN orderss t2 ON t1.user_id = t2.user_id
JOIN order_detailss t3 ON t2.order_id = t3.order_id
JOIN food t4 ON t3.f_id = t4.f_id
GROUP BY t2.user_id , t3.f_id , name , f_name
ORDER BY t2.user_id)

SELECT * FROM fav_food f1
WHERE frequency  = (SELECT MAX(frequency) FROM fav_food f2 WHERE 
f2.user_id = f1.user_id);