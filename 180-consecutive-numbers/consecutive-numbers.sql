# Write your MySQL query statement below
with base as(Select num,
Lag(num,1) over (order by id) as lag1,
Lag(num,2) over (order by id) as lag2
from logs)

Select distinct num as ConsecutiveNums from base
where num = lag1 and num = lag2