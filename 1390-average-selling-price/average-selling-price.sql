# Write your MySQL query statement below
Select p.product_id,
coalesce(round(sum(units * price) / sum(units), 2),0) as average_price
from prices p 
left join unitssold u
on p.product_id = u.product_id
and purchase_date between start_date and end_date
Group by p.product_id
