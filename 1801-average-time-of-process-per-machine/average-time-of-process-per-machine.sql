# Write your MySQL query statement below
with base as (select a.machine_id as machine_id, 
 round(avg(b.timestamp - a.timestamp) over (partition by machine_id), 3) as processing_time 
From activity a
Join activity b on
a.machine_ID=b.machine_id
and a.process_id = b.process_ID
and a.activity_type = 'start'
and b.activity_type = 'end')

select machine_id,processing_time 

From base
Group by machine_id