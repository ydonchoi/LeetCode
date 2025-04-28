--
-- @lc app=leetcode id=1587 lang=mysql
--
-- [1587] Bank Account Summary II
--

-- @lc code=start
# Write your MySQL query statement below

SELECT name
, SUM(amount) AS balance
FROM Users AS u LEFT JOIN Transactions AS t
ON u.account = t.account
GROUP BY u.account
HAVING SUM(amount) > 10000;


-- @lc code=end

