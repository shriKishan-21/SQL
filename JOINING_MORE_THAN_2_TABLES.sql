-- JOINING MORE THAN 2 TABLES

SELECT * FROM flipkart.order_details t1
JOIN flipkart.orders t2
ON t1.order_id = t2.order_id
JOIN flipkart.users t3
ON t3.user_id = t2.user_id