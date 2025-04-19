-- SQL FUNCTIONS

-- AGGREAGATE FUNCTION
-- 1. MAX
SELECT MAX(price) FROM campusx.smartphones;

-- 2. MIN
SELECT MIN(price) FROM campusx.smartphones;

-- 3. AVG
SELECT AVG(price) FROM campusx.smartphones WHERE brand_name = 'apple';

-- 4. SUM
SELECT SUM(price) FROM campusx.smartphones;

-- 5. COUNT
SELECT COUNT(*) FROM campusx.smartphones WHERE brand_name = 'oneplus';

-- 6. COUNT(DISTINCT)
SELECT COUNT(DISTINCT(brand_name)) FROM campusx.smartphones;

-- 7. STD
SELECT STD(screen_size) FROM campusx.smartphones;

-- 8. VARIANCE
SELECT VARIANCE(price) FROM campusx.smartphones WHERE brand_name = 'xiaomi';

-- SCALAR FUNCTION
-- 1. ABS
SELECT ABS(price - 100000) AS 'temp' FROM campusx.smartphones;

-- 2. ROUND
SELECT model,
ROUND(sqrt(resolution_width*resolution_width + resolution_height*resolution_height)/screen_size,1)
AS 'PPI' 
FROM campusx.smartphones;

-- 3. CEIL
SELECT CEIL(screen_size) FROM campusx.smartphones;

-- 4. FLOOR
SELECT FLOOR(screen_size) FROM campusx.smartphones;

