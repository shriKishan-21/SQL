-- SUBQUERY USAGE WITH SELECT

-- QUESTION 1
SELECT name , 
(votes/(SELECT SUM(votes) FROM sql_cx_live.movies))*100 AS 'Percentage'  
FROM sql_cx_live.movies

-- QUESTION 2
SELECT name , genre , score , (SELECT AVG(score) FROM sql_cx_live.movies m2 WHERE m2.genre = m1.genre)
FROM sql_cx_live.movies m1;
