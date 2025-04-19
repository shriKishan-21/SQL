-- FILTERING COLUMNS IN SQL JOINS

-- QUESTION 1
SELECT t1.order_id , t1.amount , t1.profit , t3.name , t3.user_id
FROM flipkart.order_details t1
JOIN flipkart.orders t2
ON t1.order_id = t2.order_id
JOIN flipkart.users t3
ON t3.user_id = t2.user_id;

-- QUESTION 2
SELECT t1.order_id , t2.name , t2.city
FROM flipkart.orders t1
JOIN flipkart.users t2
ON t1.user_id = t2.user_id;

-- QUESTION 3
SELECT t2.order_id , t1.category
FROM flipkart.category t1
JOIN flipkart.order_details t2
ON t1.category_id = t2.category_id;