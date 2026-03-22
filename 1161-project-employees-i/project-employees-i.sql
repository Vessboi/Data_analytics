# Write your MySQL query statement below
Select p.project_id,
Round(avg(experience_years), 2) as average_years 
From project p
left join employee e
on p.employee_id = e.employee_id
group by project_id