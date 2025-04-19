-- INDEPENDENT SUBQUERY (TABLE SUBQUERY)

-- QUESTION 1
SELECT * FROM sql_cx_live.movies
WHERE (year,gross-budget) IN (
SELECT year , MAX(gross - budget) FROM sql_cx_live.movies
GROUP BY year);

-- QUESTION 2
SELECT * FROM sql_cx_live.movies
WHERE (genre,score) IN 
(SELECT genre , MAX(score) FROM sql_cx_live.movies
WHERE votes > 25000
GROUP BY genre)
AND votes > 25000;

-- QUESTION 3
WITH top_star_director AS (SELECT star , director , MAX(gross) FROM sql_cx_live.movies
GROUP BY star , director
ORDER BY SUM(gross) DESC LIMIT 5)
SELECT * FROM sql_cx_live.movies
WHERE (star , director , gross) IN
(SELECT * FROM top_star_director);

