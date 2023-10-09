use roadaccidents;

-- write a query for types of region
SELECT DISTINCT region FROM regionwise;

-- write a query where light condition is Darkness - no lighting
SELECT * FROM regionwise WHERE lightcondition='Darkness - no lighting';

-- write a query selecting accidentmonth and number of accidents
--  took place in northeast region in day 
SELECT accidentmonth,accidents FROM regionwise
WHERE lightcondition='daylight'  and region='daylight';

-- write a query where weather is other 
SELECT * FROM regionwise WHERE NOT weathercondition= 'other';

-- write a query with top 20 data
SELECT * FROM regionwise LIMIT 20 ;

-- write a query where minimum and maximum accidents happened on Friday in East Midlands
SELECT MIN(accidents) as minaccidents
FROM regionwise where accidentday='Friday'and region ='East Midlands';

SELECT MAX(accidents) as maxaccidents
FROM regionwise where accidentday='Friday' and region ='East Midlands';

-- write a query to count total number of accidents more than 15 during fog in December
SELECT COUNT(accidents)FROM regionwise
WHERE weathercondition='Fog' and accidents>15 and accidentmonth='December'


-- write a query from scotland which contain a 
SELECT * FROM regionwise WHERE accidentmonth='june' LIKE 'j%';

-- write a query to find accidents >20 monthwise where
--  accident severity is fatal in london 
SELECT accidentseverity,accidentmonth,accidents FROM regionwise
WHERE accidents >20 and region='london'

-- write a query to find no of accidents monthwise happened on Monday
-- in June and weather is fine but high wind is blowing in desc order 
select COUNT(accidents), region FROM regionwise
WHERE Accidentday='Monday' and Accidentmonth='June' and weathercondition='Fine + high winds'
GROUP BY region
ORDER BY COUNT(accidents) DESC;

-- write a query to find no of accidents happened in snowing time in
 -- daylight in  in asc order  
SELECT COUNT(accidents) FROM regionwise
WHERE weathercondition ='snowing' and lightcondition='Daylight'
and region='scotland'
GROUP BY region
ORDER BY COUNT(accidents) ASC;

-- write a query to join 2 tables on the basis of accidents
SELECT countrywise.accidentseverity,countrywise.country,regionwise.region from countrywise
LEFT JOIN regionwise ON countrywise.accidents=regionwise.accidents
ORDER BY countrywise.accidentseverity;





