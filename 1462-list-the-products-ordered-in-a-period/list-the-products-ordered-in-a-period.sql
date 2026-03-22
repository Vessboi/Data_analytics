# Write your MySQL query statement below
with orderss as (
select product_id, unit
from orders
where order_date between '2020-02-01' and '2020-02-29'
)

select product_name,
sum(unit) as unit
from products p
join orderss o on
p.product_id = o.product_id
group by product_name
having unit >=100