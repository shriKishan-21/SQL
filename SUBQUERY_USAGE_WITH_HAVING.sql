-- SUBQUERY USAGE WITH HAVING

-- QUESTION 1
SELECT genre , AVG(score) FROM sql_cx_live.movies
GROUP BY genre
HAVING AVG(score) > (SELECT AVG(score) FROM sql_cx_live.movies)