--BÀI 1
SELECT COUNTRY.Continent, Floor(AVG(CITY.POPULATION))
from city
JOIN country on CITY.Countrycode=COUNTRY.CODE
Group by COUNTRY.Continent
--BÀI 2
SELECT 
  ROUND(CAST(COUNT(texts.email_id) AS DECIMAL)
  /COUNT(DISTINCT emails.email_id),2) AS activation_rate
FROM emails
LEFT JOIN texts
  ON emails.email_id = texts.email_id
  AND texts.signup_action = 'Confirmed'
-- Bài 3 (xem lại filter)
SELECT age_breakdown.age_bucket,
ROUND(SUM(activities.time_spent) FILTER (WHERE activities.activity_type = 'send') / SUM(activities.time_spent) *100, 2)
AS send_perc, --- = time spent sending / (Time spent sending + Time spent opening)
ROUND (SUM(activities.time_spent) FILTER (WHERE activities.activity_type = 'open') / SUM(activities.time_spent)
 *100 , 2) AS open_perc  --- = time spent opening / (Time spent sending + Time spent opening)
FROM activities
INNER JOIN age_breakdown
ON activities.user_id = age_breakdown.user_id --- chung 2 bang
WHERE activities.activity_type IN ('open', 'send') --- dieu kien loc
GROUP BY age_breakdown.age_bucket --- cot chinh

--Bài 4
Select customer_contracts.customer_id
FROM
customer_contracts INNER JOIN products
ON customer_contracts.product_id=products.product_id
Group by customer_contracts.customer_id
HAVING COUNT(DISTINCT product_category) = 
  (SELECT COUNT(DISTINCT product_category) FROM products)

--BÀI 5 (SEFL JOIN)
Select employees.employee_id, employees.name, count(mng.name) as reports_count,
Ceiling(AVG(mng.age)) as average_age
From employees JOIN employees as mng
ON employees.employee_id=mng.reports_to
Group by employees.employee_id, employees.name

--BÀI 6:
Select products.product_name, Sum(orders.unit) as unit
FROM Orders JOIN Products
ON Orders.product_id=Products.product_id
Where Month(orders.order_date)='2' and Year(orders.order_date)='2020'
Group by products.product_name
Having Sum(orders.unit) >=100

--BÀI 7
SELECT pages.page_id
From Pages LEFT JOIN page_likes
ON Pages.page_id=page_likes.page_id
Where page_likes.user_id is NULL
Order by pages.page_id ASC











