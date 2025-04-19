-- SQL SET OPERATIONS

-- 1. UNION SET OPERATION
SELECT * FROM sql_cx_live.person1
UNION
SELECT * FROM sql_cx_live.person2;

-- 2. UNION ALL SET OPERATION
SELECT * FROM sql_cx_live.person1
UNION ALL
SELECT * FROM sql_cx_live.person2;

-- 3. INTERSECT SET OPERATION
SELECT * FROM sql_cx_live.person1
INTERSECT
SELECT * FROM sql_cx_live.person2;

-- 4. EXECPT SET OPERATION
SELECT * FROM sql_cx_live.person1
EXCEPT
SELECT * FROM sql_cx_live.person2;



