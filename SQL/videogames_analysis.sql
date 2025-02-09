--Selecting all from games dataset 
SELECT * FROM games_data

--Selecting all Playstation titles
SELECT name,score FROM games_data WHERE platform == "PlayStation"


--Selecting title with the highest score 

SELECT name FROM games_data 
ORDER BY score DESC 
LIMIT 1



--Selecting all offline games with more than 4000 users

SELECT name,score FROM games_data WHERE users > 4000
GROUP BY genre 
HAVING players == "No Online Multiplayer"
ORDER BY name ASC

--Selecting count of games grouped by platform and ordered by score
SELECT platform,COUNT(name) FROM games_data 
GROUP BY platform 
ORDER BY score ASC

--Total users of PC offline games
SELECT name,SUM(users) AS total_users FROM games_data WHERE players == "No Online Multiplayer"
GROUP BY name 
HAVING platform == "PC"


--Total count users of the titles with the highest score
SELECT name,MAX(score) AS best_score,Sum(users) AS Total_Users FROM games_data 
GROUP BY platform 
ORDER BY name ASC


--Select title and total count of critics for each title and order them by score in descending order.
SELECT name AS title,COUNT(critics) AS total_critics FROM games_data 
GROUP BY name 
ORDER BY score DESC 
LIMIT 10


--Creating a temporary table which contains titles with more than 9000 users
CREATE TEMP TABLE best_titles AS 
SELECT name,platform FROM games_data WHERE users > 9000

--We select the games,their company and their platform and give them a calification based on their score  
SELECT UPPER(Developer) AS Company,name AS game,platform,
CASE 
 WHEN critics > 90 THEN "Excellent"
 ELSE "Good" 
END AS "Calification"
FROM games_data 
WHERE  platform IN ("PlayStation4","XboxOne")



SELECT name,r_date,MAX(score) AS best_score,platform FROM games_data
WHERE YEAR(r_date) > 2010
GROUP BY r_date,platform
HAVING critics > 100







































