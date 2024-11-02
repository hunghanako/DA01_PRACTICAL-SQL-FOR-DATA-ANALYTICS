--BÀI 1
select name
from students
where marks >75
Order by right(name,3), ID ASC
--BÀI 2
Select user_id,
Concat(Upper(left(name,1)), Lower(Right(name, length(name)-1))) as name
From Users
order by user_id
--BÀI 3
SELECT manufacturer,
Concat('$',Round(SUM(total_sales)/1000000),' ','million') as total_sales
from pharmacy_sales 
GROUP BY manufacturer
ORDER BY Round(SUM(total_sales)) DESC, manufacturer 
--BÀI 4
Select EXTRACT(month from submit_date),
product_id,
ROUND(avg(stars),2)
from reviews
Group by EXTRACT(month from submit_date), product_id
ORDER BY EXTRACT(month from submit_date)
--BÀI 5
SELECT sender_id, 
COUNT(message_id)
from messages
Where EXTRACT(month FROM sent_date)=8 and EXTRACT(year FROM sent_date)=2022
GROUP BY(sender_id)
ORDER BY COUNT(message_id) DESC
limit 2
--BÀI 6
Select tweet_id from Tweets
where length(content)>15
--BÀI 7
Select activity_date as day, 
Count(distinct user_id) as active_users
from activity
where activity_date>='2019-06-28' and activity_date<='2019-07-27'
group by activity_date
--BÀI 8
select count(id) from employees
where Extract(month from joining_date) between 1 and 7 
and extract(year from joining_date)=2022
--BÀI 9
select first_name,
position('a' in first_name)
from worker
where first_name='Amitah'
--BÀI 10
Select id, title,
Substring(title from length(winery)+2 for 4)
from winemag_p2
where country='Macedonia'
