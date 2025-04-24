# Write your MySQL query statement below

select query_name, round(sum(rating/position)/count(query_name), 2) quality, round(sum(if(rating < 3, 1, 0))/count(query_name)*100, 2) poor_query_percentage
from queries
group by query_name
