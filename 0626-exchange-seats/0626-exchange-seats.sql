# Write your MySQL query statement below
select row_number() over (order by new_id ASC) id, new.student from (select if(mod(id, 2)=0, id-1, id+1) new_id, student from seat order by new_id ASC) new