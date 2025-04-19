-- FILTERING ROWS IN SQL JOINS

-- QUESTION 1
SELECT * FROM flipkart.orders t1
JOIN flipkart.users t2
ON t1.user_id = t2.user_id
WHERE t2.city = 'Pune';

-- QUESTION 2
SELECT * FROM flipkart.order_details t1
JOIN flipkart.category t2
ON t1.category_id = t2.category_id
WHERE t2.vertical = 'chairs'