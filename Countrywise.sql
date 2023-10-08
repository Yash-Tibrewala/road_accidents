create database roadaccidents;
use roadaccidents;

-- write a query for types of accidentseverity
SELECT DISTINCT accidentseverity FROM countrywise;

-- write a query where light condition is daylight
SELECT * FROM Countrywise WHERE lightcondition='daylight';

-- write a query selecting accidentmonth and number of accidents
--  took place in scotland in dark when the lights lit
SELECT accidentmonth,accidents FROM Countrywise
WHERE lightcondition='darkness - lights lit'  and country='scotland';

-- write a query where weather is not known 
SELECT * FROM Countrywise WHERE NOT weathercondition= 'unkown';

-- write a query with top 10 data
SELECT * FROM countrywise LIMIT 10;

-- write a query where minimum and maximum accidents happened on Friday
SELECT MIN(accidents) as minaccidents
FROM countrywise where accidentday='Friday';

SELECT MAX(accidents) as maxaccidents
FROM countrywise where accidentday='Friday';

-- write a query to count total number of accidents more than 5 in fine weather
SELECT COUNT(accidents)FROM countrywise
WHERE weathercondition='Fine no high winds' and accidents>5;

-- write a query to calculate teh average no of accidents
SELECT AVG(accidents)FROM countrywise;

-- write a query from scotland which contain a 
SELECT * FROM Countrywise WHERE Country='scotland' LIKE 'a%';

-- write a query to find no of accidents monthwise where
--  accident severity is fatal and is between 10 and 20 
SELECT accidentseverity='Fatal',accidentmonth FROM countrywise
WHERE accidents BETWEEN 10 AND 20;

-- write a query to find no of accidents monthwise happened on Monday
-- in June in desc order 
SELECT COUNT(accidents), Country FROM countrywise
WHERE Accidentday='Monday' and Accidentmonth='June'
GROUP BY Country
ORDER BY COUNT(accidents) DESC;

-- write a query to find no of accidents happened in rainy season with no wind and
 -- with no lighting in darkness in asc order 
SELECT COUNT(accidents) FROM countrywise
WHERE weathercondition ='Raining no high winds' and lightcondition='Darkness - no lighting'
GROUP BY Country
ORDER BY COUNT(accidents) ASC;

-- write a query to find no of accidents happened in rainy season with no wind and
 -- with no lighting in darkness in england in asc order  
SELECT COUNT(accidents) FROM countrywise
WHERE weathercondition ='Raining no high winds' and lightcondition='Darkness - no lighting'
and country='england'
GROUP BY country 
ORDER BY COUNT(accidents) ASC;

-- 
SELECT countrywise.accidentseverity,countrywise.country,regionwise.region from countrywise
LEFT JOIN regionwise ON countrywise.accidents=regionwise.accidents
ORDER BY countrywise.accidentseverity;

-- 
SELECT countrywise.accidentseverity,countrywise.country,regionwise.region from countrywise
LEFT JOIN regionwise ON countrywise.accidents=regionwise.accidents
ORDER BY countrywise.accidentseverity;


