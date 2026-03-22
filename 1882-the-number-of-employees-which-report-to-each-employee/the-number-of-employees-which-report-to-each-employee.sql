# Write your MySQL query statement below
Select
e2.employee_id, 
e2.name,
count(e1.reports_to) reports_count, 
Round(avg(e1.age)) as average_age
from employees e1
join employees e2
on e1.reports_to = e2.employee_id
Group by e2.employee_id
Order by e2.employee_id