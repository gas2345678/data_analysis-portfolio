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











