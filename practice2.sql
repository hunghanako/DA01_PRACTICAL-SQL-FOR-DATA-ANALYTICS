--BÀI 1
select distinct CITY from station
where ID %2=0
--BÀI 2
Select Count(city) -count(distinct city) from station
-- BÀI 4
Lưu ý: trong postgreSQL thì khi một số nguyên chia cho 1 số nguyên thì nó mặc định kết quả sẽ là 1 số nguyên => sử dụng hàm Cast() sẽ đc học ở buổi 8
SELECT ROUND(CAST(SUM(order_occurrences*item_count)/sum(order_occurrences) as decimal),1) as mean 
from items_per_order 
-- BÀI 5
Select candidate_id From candidates
where skill in ('Python', 'Tableau', 'PostgreSQL')
Group by candidate_id
Having count(skill) >=3
--BÀI 6
SELECT user_id,
DATE(MAX(post_date)) -DATE(MIN(post_date)) as day_between
From posts
Where post_date BETWEEN '01-01-2021'and '01-01-2022'
GROUP BY (user_id)
Having count(post_id)>=2
--BÀI 7
SELECT card_name, 
Max(issued_amount)-min(issued_amount) as difference
From monthly_cards_issued 
GROUP BY card_name
order by difference DESC
--BÀI 8
SELECT manufacturer,
count (drug) as drug_count,
ABS(SUM(cogs - total_sales)) as total_loss
From pharmacy_sales 
Where cogs> total_sales
GROUP BY manufacturer
ORDER BY total_loss DESC
--BÀI 9
SELECT * from Cinema
where id%2 = 1 and description <> 'boring'
order by rating desc
--BÀI 10
Select 
teacher_id, 
COUNT(DISTINCT subject_id ) AS cnt
From teacher
Group by teacher_id
--BÀI 11
SELECT user_id,
count(follower_id) as followers_count
From followers
Group by user_id
Order by user_id
--BÀI 12
SELECT class from  courses
Group by class
Having count(student) >=5

