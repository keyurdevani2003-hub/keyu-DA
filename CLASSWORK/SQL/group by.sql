
-- group by
use world
select * from city;
SELECT
    SUM(Population) as sumamt,   
	MAX(Population) as maxamt, 
    MIN(Population) as minamt, 
    AVG(Population) as avgamt
FROM city;



SELECT countrycode,
SUM(Population) AS total FROM city
group by countrycode;



SELECT countrycode,district,
MAX(population) AS max_population,
MIN(POPULATION) AS MIN_POPULATION,
COUNT(Population) AS COUNT
FROM city
GROUP BY countrycode,district;











