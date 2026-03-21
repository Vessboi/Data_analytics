# Write your MySQL query statement below
select unique_id, name
From Employees as e
left join EmployeeUNI as u
on e.id = u.id
