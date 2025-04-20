-- SUBQUERY USAGE WITH FROM

-- QUESTION 1
SELECT r_name , avg_rating
FROM (SELECT r_id , AVG(restaurant_rating) AS 'avg_rating'
FROM zomato.orderss
GROUP BY r_id) t1
JOIN zomato.restaurants t2
ON t1.r_id = t2.r_id