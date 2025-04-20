-- PRACTICE QUESTION ON SQL JOINS

-- QUESTION 1
SELECT t1.order_id , SUM(t1.profit) AS 'profit_order' FROM flipkart.order_details t1
JOIN flipkart.orders t2
ON t1.order_id = t2.order_id
GROUP BY order_id
HAVING profit_order > 0;

-- QUESTION 2
SELECT t1.name , COUNT(t2.order_id) AS 'order_count'
FROM flipkart.users t1
JOIN flipkart.orders t2
ON t1.user_id = t2.user_id
GROUP BY t1.name
ORDER BY order_count DESC LIMIT 1 ;

-- QUESTION 3
SELECT SUM(t1.profit) AS 'order_sum' , t2.vertical
FROM flipkart.order_details t1
JOIN flipkart.category t2
ON t1.category_id = t2.category_id
GROUP BY t2.vertical
ORDER BY order_Sum DESC LIMIT 1;

-- QUESTION 4
SELECT t1.state , SUM(t3.profit) AS 'total_profit' 
FROM flipkart.users t1
JOIN flipkart.orders t2
ON t1.user_id = t2.user_id
JOIN flipkart.order_details t3
ON t2.order_id = t3.order_id
GROUP BY state
ORDER BY total_profit DESC LIMIT 1;

-- QUESTION 5
SELECT t1.vertical , SUM(t2.profit) AS 'total_profit' 
FROM flipkart.category t1
JOIN flipkart.order_details t2
ON t1.category_id = t2.category_id
GROUP by vertical
HAVING total_profit > 5000;