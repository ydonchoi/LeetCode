--
-- @lc app=leetcode id=1581 lang=mysql
--
-- [1581] Customer Who Visited but Did Not Make Any Transactions
--

-- @lc code=start
# Write your MySQL query statement below

SELECT customer_id, COUNT(customer_id) AS count_no_trans 
FROM Visits AS v LEFT JOIN Transactions AS t 
ON v.visit_id = t.visit_id 
WHERE transaction_id IS NULL 
GROUP BY customer_id;

-- @lc code=end

