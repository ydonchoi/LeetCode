# Write your MySQL query statement below

select contest_id, round(count(r.user_id)/(
    select count(distinct user_id) from users
)*100, 2) percentage 
from users u inner join register r on u.user_id=r.user_id 
group by contest_id
order by percentage DESC, contest_id ASC