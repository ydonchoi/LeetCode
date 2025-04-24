# Write your MySQL query statement below

select s.user_id, round(sum(if(action="confirmed", 1, 0))/count(ifnull(action, 0)), 2) confirmation_rate
from signups s left outer join confirmations c on s.user_id=c.user_id
group by s.user_id
