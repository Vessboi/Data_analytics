# Write your MySQL query statement below
With alsl as(
(Select accepter_id as id, count(accepter_id) as num
from RequestAccepted 
group by accepter_id) 
Union all

(Select requester_id as id , count(requester_id ) as num
from RequestAccepted 
group by requester_id))

Select id, sum(num) as num

from alsl
group by id
order by num desc
limit 1