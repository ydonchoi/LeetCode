--
-- @lc app=leetcode id=1193 lang=mysql
--
-- [1193] Monthly Transactions I
--

-- @lc code=start
# Write your MySQL query statement below

SELECT DATE_FORMAT(trans_date, '%Y-%m') AS month, 
country, 
COUNT(state) AS trans_count, 
SUM(IF(state="approved", 1, 0)) AS approved_count, 
SUM(amount) AS trans_total_amount, 
SUM(if(state='approved', amount, 0)) AS approved_total_amount

FROM transactions
GROUP BY DATE_FORMAT(trans_date, '%Y-%m'), country

-- @lc code=end

