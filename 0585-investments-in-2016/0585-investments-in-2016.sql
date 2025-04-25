# Write your MySQL query statement below

-- 고민해서 작성해보긴 했는데.. 아니.. 이게 왜 되는 거지??
-- 내 생각이 맞는 거야??

select round(sum(tiv_2016), 2) tiv_2016
from
(select pid from insurance group by lat, lon having count(*) < 2) a
left join
(select distinct i1.pid, i1.tiv_2015, i1.tiv_2016 from insurance i1, insurance i2 where i1.pid <> i2.pid and i1.tiv_2015 = i2.tiv_2015) b
on a.pid=b.pid
