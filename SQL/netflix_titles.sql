--Select all from london_houses table 
SELECT * FROM netflix_titles;




--Select all the movies released between 2010 and 2020
SELECT title FROM netflix_titles WHERE release_year BETWEEN 2010 AND 2020;


--Select the total number of series and tv-shows from netflix
SELECT type,COUNT(Type) AS total FROM netflix_titles 
GROUP BY type 


--Select all Steven Spielberg movies ordered by the length of their descriptions
SELECT title,description FROM netflix_titles 
WHERE director == "Steven Spielberg" AND duration > 100
ORDER BY LENGTH(description)

--Select all animes series
SELECT DISTINCT(title) FROM netflix_titles 
WHERE country IN ("Japan","China")
AND listed_in == "Anime Series"





--Select all american series with a big number of seasons

SELECT title,date_added FROM netflix_titles WHERE type="TV Show" AND duration ="7 Seasons" AND country= "United States"
ORDER BY release_year ASC

































