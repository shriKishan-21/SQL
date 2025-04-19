-- DML COMMAND

-- 1. INSERT
INSERT INTO campusx.users (user_id , name , email , password)
VALUES (null,'nitish','nitish@gmail.com','1234');

-- 2. SELECT
SELECT DISTINCT(processor_brand) FROM campusx.smartphones;

-- 3. UPDATE
UPDATE campusx.smartphones
SET processor_brand = 'dimensity'
WHERE processor_brand = 'mediatek';

-- 4. DELETE
DELETE FROM campusx.smartphones
WHERE price > 200000;