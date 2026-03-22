# Write your MySQL query statement below
With base as(
select *,
Rank() over(partition by customer_id order by order_date asc) as ranking
from delivery
)
select 
ROUND(
        SUM(CASE WHEN order_date = customer_pref_delivery_date THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 
        2
    ) AS immediate_percentage
    from base
    where ranking=1