-- INDEPENDENT SUBQUERY (SCALAR SUBQUERY)

-- QUESTION 1
USE sql_cx_live;
SELECT * FROM movies
WHERE (gross-budget) = (SELECT MAX(gross - budget) FROM movies);

-- QUESTION 2
SELECT COUNT(*) FROM sql_cx_live.movies
WHERE score > (SELECT AVG(score) FROM sql_cx_live.movies);

-- QUESTION 3
SELECT * FROM sql_cx_live.movies 
WHERE year = 2000 AND score = (SELECT MAX(score) FROM sql_cx_live.movies WHERE year = 2000);

-- QUESTION 4
SELECT * FROM sql_cx_live.movies
WHERE score = (SELECT MAX(score) FROM sql_cx_live.movies
WHERE votes > (SELECT AVG(votes) FROM sql_cx_live.movies));
