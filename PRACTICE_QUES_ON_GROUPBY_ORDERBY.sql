-- PRACTICE QUESTION ON GROUP BY AND SORT BY

-- QUESTION 1
SELECT batter,SUM(batsman_run) AS 'Run' FROM campusx.ipl
GROUP BY batter
ORDER BY Run DESC LIMIT 5;

-- QUESTION 2
SELECT batter,COUNT(*) AS 'num_sixes' FROM campusx.ipl
WHERE batsman_run = 6 
GROUP BY batter
ORDER BY num_sixes DESC LIMIT 1,1;

-- QUESTION 3
SELECT ID , batter , SUM(batsman_run ) AS 'total_runs'
FROM campusx.ipl
GROUP BY ID , batter 
HAVING total_runs >= 100
ORDER BY total_runs DESC;

-- QUESTION 4
SELECT batter , 
SUM(batsman_run) AS 'run' , 
COUNT(batsman_run) AS 'balls' , 
(SUM(total_run) / COUNT(batsman_run)) * 100 AS 'strike_rate'
FROM campusx.ipl
GROUP BY batter 
HAVING balls > 1000
ORDER BY strike_rate DESC LIMIT 5;
