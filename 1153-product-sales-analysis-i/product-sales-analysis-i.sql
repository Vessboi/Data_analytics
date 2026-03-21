# Write your MySQL query statement below
Select product_name, year, price

From sales
left join product
on  sales.product_id = product.product_id