-- SORTING DATA

-- QUESTION 1
SELECT model,screen_size FROM campusx.smartphones WHERE brand_name = 'samsung'
ORDER BY screen_size DESC LIMIT 5;

-- QUESTION 2
SELECT brand_name,num_front_cameras + num_rear_cameras AS 'Total_Cameras' FROM campusx.smartphones
ORDER BY Total_Cameras DESC;

-- QUESTION 3
SELECT brand_name,
SQRT(resolution_width * resolution_width + resolution_height * resolution_height)/screen_size AS 'PPI' 
FROM campusx.smartphones
ORDER BY PPI DESC;

-- QUESTION 4
SELECT model,battery_capacity FROM campusx.smartphones
ORDER BY battery_capacity DESC LIMIT 1,1;

-- QUESTION 5
SELECT model,rating FROM campusx.smartphones
WHERE brand_name = 'apple'
ORDER BY rating ASC LIMIT 1;

-- QUESTION 6
SELECT * FROM campusx.smartphones
ORDER BY brand_name ASC , rating DESC;

-- QUESTION 7
SELECT * FROM campusx.smartphones
ORDER BY brand_name ASC , price ASC;
