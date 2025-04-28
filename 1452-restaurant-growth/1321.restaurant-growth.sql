--
-- @lc app=leetcode id=1321 lang=mysql
--
-- [1321] Restaurant Growth
--

-- @lc code=start
# Write your MySQL query statement below

SELECT visited_on
, cum_sum amount
, ROUND(cum_sum/7, 2) AS average_amount
FROM (
    SELECT DISTINCT visited_on
    , SUM(amount) OVER (ORDER BY visited_on RANGE BETWEEN INTERVAL 6 DAY PRECEDING AND CURRENT ROW) AS cum_sum 
    FROM customer
    ) AS tbl
WHERE visited_on >= (SELECT DATE_ADD(MIN(visited_on), INTERVAL 6 DAY) FROM customer);

-- @lc code=end

