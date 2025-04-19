-- GROUPING DATA

-- QUESTION 1
SELECT brand_name,COUNT(*) AS 'num_phone',
ROUND(AVG(price),2) AS 'avg_price',
MAX(rating) AS 'max_rating',
ROUND(AVG(screen_size),2) AS 'avg_screen_size',  
ROUND(AVG(battery_capacity),2) AS 'avg_battery_capicity'
FROM campusx.smartphones
GROUP BY brand_name
ORDER BY num_phone DESC;

-- QUESTION 2
SELECT has_nfc , ROUND(AVG(price),2) AS 'Avg Price' , ROUND(AVG(rating),2) AS 'Avg Rating'
FROM campusx.smartphones
GROUP BY has_nfc;

-- QUESTION 3
SELECT extended_memory_available , ROUND(AVG(price),2) 
FROM campusx.smartphones
GROUP BY extended_memory_available;

-- QUESTION 4
SELECT brand_name , 
processor_brand , 
COUNT(model) AS 'model_count', 
ROUND(AVG(primary_camera_rear),2)
FROM campusx.smartphones
GROUP BY brand_name , processor_brand;

-- QUESTION 5
 SELECT brand_name,
ROUND(AVG(price),2) AS 'Avg_price'
FROM campusx.smartphones
GROUP BY brand_name
ORDER BY Avg_price DESC LIMIT 5;

-- QUESTION 6
SELECT brand_name,
ROUND(AVG(screen_size),2) AS 'avg_screen'
FROM campusx.smartphones
GROUP BY brand_name
ORDER BY avg_screen ASC LIMIT 1;

-- QUESTION 7
SELECT has_5g ,
ROUND(AVG(price),2) AS 'avg_price'
FROM campusx.smartphones
GROUP BY has_5g;

-- QUESTION 8
SELECT brand_name ,
COUNT(model) AS 'model_count'
FROM campusx.smartphones
WHERE has_nfc = 'True' AND has_ir_blaster = 'True'
GROUP BY brand_name;

-- QUESTION 9
SELECT has_nfc ,
ROUND(AVG(price),2) AS 'avg_price'
FROM campusx.smartphones
WHERE has_5g = 'True' AND brand_name = 'samsung'
GROUP BY has_nfc;

-- QUESTION 10
SELECT model , price
FROM campusx.smartphones
ORDER BY price DESC LIMIT 1;
