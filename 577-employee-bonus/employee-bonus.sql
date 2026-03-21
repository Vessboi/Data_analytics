# Write your MySQL query statement below

Select name, bonus
From employee e
left join bonus b on
e.empid = b.empid
where bonus <1000 or bonus is null