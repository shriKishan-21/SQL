-- HAVING CLAUSE

-- 1. QUESTION 1
SELECT brand_name,
COUNT(model) AS 'total_phones', 
ROUND(AVG(rating),2) AS 'avg_rating'
FROM campusx.smartphones
GROUP BY brand_name HAVING total_phones > 20;

-- 2. QUESTION 2
SELECT brand_name,
AVG(ram_capacity) AS 'avg_ram'
FROM campusx.smartphones
WHERE refresh_rate >= 90 AND fast_charging_available = 1
GROUP BY brand_name
HAVING COUNT(*) > 10
ORDER BY avg_ram DESC LIMIT 3;

-- 3. QUESTION 4
SELECT brand_name ,
AVG(price) AS 'avg_price',
AVG(rating) AS 'avg_rating'
FROM campusx.smartphones
WHERE has_5g = 'True'
GROUP BY brand_name
HAVING COUNT(*) > 10 AND avg_rating > 70;