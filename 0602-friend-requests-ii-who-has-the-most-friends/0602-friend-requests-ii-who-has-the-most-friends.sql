# Write your MySQL query statement below
# 이제 max 값만 찾아서 출력되도록 하면 되는데..

select *
from (
    select *, count(id) num
    from (
        (select requester_id id from requestaccepted)
        union ALL
        (select accepter_id id from requestaccepted)
        ) 1st
    group by id
) 2nd
order by num DESC limit 1
