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
