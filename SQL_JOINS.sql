-- SQL JOINS

-- 1. CROSS JOIN
SELECT * FROM sql_cx_live.users1 t1
CROSS JOIN sql_cx_live.groups t2;

-- 2. INNER JOIN
SELECT * FROM sql_cx_live.users1 t1
INNER JOIN sql_cx_live.membership t2
ON t1.user_id = t2.user_id;

-- 3. LEFT JOIN
-- membership is left table and users1 is the right
SELECT * FROM sql_cx_live.membership t1
LEFT JOIN sql_cx_live.users1 t2
ON t1.user_id = t2.user_id;

-- 4. RIGHT JOIN
-- membership is left table and users1 is the right
SELECT * FROM sql_cx_live.membership t1
RIGHT JOIN sql_cx_live.users1 t2
ON t1.user_id = t2.user_id;

-- 5. FULL OUTER JOIN 
-- membership is left table and users1 is the right
SELECT * FROM sql_cx_live.membership t1
LEFT JOIN sql_cx_live.users1 t2
ON t1.user_id = t2.user_id
UNION
SELECT * FROM sql_cx_live.membership t1
RIGHT JOIN sql_cx_live.users1 t2
ON t1.user_id = t2.user_id;

-- 6. SELF JOIN
SELECT * FROM sql_cx_live.users1 t1
JOIN sql_cx_live.users1 t2
ON t1.emergency_contact = t2.user_id


