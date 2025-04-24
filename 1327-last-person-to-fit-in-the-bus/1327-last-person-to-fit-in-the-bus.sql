# Write your MySQL query statement below
-- 이거 누적합 문제 같은데..

select person_name
from (select *, sum(weight) over (order by turn ASC) summation from queue) ntbl
where ntbl.summation <= 1000
order by ntbl.turn DESC limit 1
