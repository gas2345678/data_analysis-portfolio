--In this case, we will also use CTE(Common Table expressions) to save time with query writting

--We will use two tables which are related each other

--select all from the powerlifting table 

SELECT * FROM meets;


SELECT * FROM openpowerlifting;


--Select the powerlifters with the same MeetId from the "meets" table
SELECT Name, Equipment FROM openpowerlifting as o
JOIN meets as m
ON o.MeetID = m.MeetID;



--Now we will perform a CTE expression as a example for these two tables

WITH fit_powerlifters AS (
Select Name,Sex from openpowerlifting WHERE BodyweightKg BETWEEN 70 AND 90
)

--This will select all from the table expression declared before
SELECT * FROM fit_powerlifters;



--Another CTE with the "meets" table which all the encounters in the USA
WITH usa_meetings AS (
SELECT * FROM meets WHERE MeetCountry = "USA"
)

--From the previous expression, select all the encounters which were made in El Paso town.
SELECT MeetName FROM usa_meetings WHERE MeetTown = "El Paso"




