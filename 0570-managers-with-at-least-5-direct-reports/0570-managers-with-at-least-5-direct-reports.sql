# Write your MySQL query statement below
select name from Employee e join (select managerId, count(managerId) num from Employee group by managerId) re on e.id=re. managerId where num >= 5;