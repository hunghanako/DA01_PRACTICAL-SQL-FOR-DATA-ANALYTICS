--BÀI 1
SELECT NAME FROM CITY
WHERE countrycode='USA'
and population >120000
-- BÀI 2
SELECT * FROM city
Where countrycode ='JPN'
-- BÀI 3
SELECT city, state FROM STATION
-- BÀI 4
SELECT DISTINCT CITY FROM STATION
WHERE CITY LIKE 'i%'
or CITY LIKE 'e%'
or CITY LIKE 'a%'
or CITY LIKE 'e%'
or CITY LIKE 'o%'
or CITY LIKE 'u%'
-- BÀI 5
SELECT Distinct CITY FROM STATION
WHERE CITY LIKE '%a' 
or CITY LIKE '%e'
or CITY LIKE '%i'
or CITY LIKE '%o'
or CITY LIKE '%u'
-- BÀI 6
SELECT Distinct CITY FROM STATION
WHERE NOT CITY LIKE 'a%' 
and NOT CITY LIKE 'e%'
and NOT CITY LIKE 'i%'
and NOT CITY LIKE 'o%'
and NOT CITY LIKE 'u%'
-- BÀI 7
SELECT NAME FROM EMPLOYEE
ORDER BY NAME
-- BÀI 8
SELECT NAME FROM EMPLOYEE
Where salary >2000 and months <10
ORDER BY employee_id ASC
-- BÀI 9
SELECT product_id FROM products
WHERE low_fats ='Y'and recyclable ='Y'
-- BÀI 10 (XEM LẠI)
SELECT name FROM customer
Where referee_id is NULL or referee_id ='1'
--BÀI 11
SELECT name, population, area FROM WORLD
WHERE area >= 3000000 or population >= 25000000
-- BÀI 12 (XEM LẠI)
SELECT distinct author_id AS "id" FROM Views
Where author_id = Viewer_id
ORDER BY author_id ASC
-- BÀI 13
SELECT part, assembly_step FROM parts_assembly
Where finish_date is NULL
--BÀI 14
SELECT * FROM  lyft_drivers
WHERE yearly_salary <=30000 or yearly_salary >=70000
--BÀI 15
SELECT advertising_channel FROM uber_advertising
WHERE money_spent >100000 and year ='2019'

