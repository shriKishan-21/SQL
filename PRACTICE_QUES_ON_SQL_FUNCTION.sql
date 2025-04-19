-- PRACTICE QUESTION ON SQL FUNCTIONS

-- QUESTION 1
SELECT AVG(battery_capacity),AVG(primary_camera_rear) FROM campusx.smartphones WHERE price >= 100000;

-- QUESTION 2
SELECT AVG(internal_memory) FROM campusx.smartphones
WHERE refresh_rate >= 120 AND primary_camera_front >= 20;

-- QUESTION 3
SELECT COUNT(brand_name) FROM campusx.smartphones WHERE has_5g = 'True';

-- QUESTION 4
SELECT brand_name,MAX(price) FROM campusx.smartphones WHERE brand_name = 'samsung';