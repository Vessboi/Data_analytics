# Write your MySQL query statement below
select s.student_id , student_name , b.subject_name, count(e.student_id) as attended_exams

From students s
cross join subjects b
left join examinations e
on s.student_id = e.student_id
 AND b.subject_name = e.subject_name
group by subject_name, student_id
order by student_id, subject_name