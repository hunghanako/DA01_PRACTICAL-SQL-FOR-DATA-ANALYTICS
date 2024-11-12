--Bài 1
SELECT
Sum(CASE
    When device_type ='laptop' then 1
    ELSE 0
End) laptop_views,
Sum(Case 
    when device_type In('tablet','phone') then 1
    Else 0
End) Mobie_views
From viewership
--BÀI 2
Select *,
Case
    When x+y<=z or x+z<=y or Y+z<=x then 'No'
    Else 'Yes'
End Triangle
From Triangle
--BÀI 3 (đề bài sai nên bỏ qua)
SELECT 
Round(Cast(
(Sum(Case When call_category is Null or call_category ='n/a' then 1 Else 0 END)
/sum(CASE When call_category is not Null and call_category <>'n/a' then 1 Else 0 End))*100 as decimal),1) 
as uncategoried_call_pct
--BÀI 4 làm rồi
--BÀi 5
Select survived,
Sum(Case When pclass ='1' then 1 else 0 End) first_class,
Sum(Case when pclass ='2' then 1 else 0 end) as second_class,
Sum(case when pclass ='3' then 1 else 0 end) as third_class
From titanic
Group by survived
