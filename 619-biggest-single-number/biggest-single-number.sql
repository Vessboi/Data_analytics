# Write your MySQL query statement below
With base as (select
num, count(num) as cnt
from mynumbers
group by num)
Select Max(num) as num
From base
where cnt=1