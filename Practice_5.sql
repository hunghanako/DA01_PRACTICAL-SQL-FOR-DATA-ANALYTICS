--BÀI 1
SELECT COUNTRY.Continent, Floor(AVG(CITY.POPULATION))
from city
JOIN country on CITY.Countrycode=COUNTRY.CODE
Group by COUNTRY.Continent
--BÀI 2
