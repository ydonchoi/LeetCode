# Write your MySQL query statement below

select visited_on, cum_sum amount, round(cum_sum/7, 2) average_amount
from (
    select distinct visited_on, sum(amount) over (ORDER BY visited_on RANGE BETWEEN INTERVAL 6 DAY PRECEDING AND CURRENT ROW) cum_sum from customer
    ) a
WHERE visited_on >= (SELECT DATE_ADD(MIN(visited_on), INTERVAL 6 DAY) FROM customer)
