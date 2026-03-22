# Write your MySQL query statement below
with base as (select customer_id,
count(distinct product_key)/ (select count(*) from product) as ratio from customer group by customer_id having ratio =1)
Select  Distinct customer_id

from base