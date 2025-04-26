--
-- @lc app=leetcode id=183 lang=mysql
--
-- [183] Customers Who Never Order
--

-- @lc code=start
# Write your MySQL query statement below
SELECT name AS Customers
FROM Customers
WHERE id NOT IN (SELECT DISTINCT CustomerId FROM Orders)

-- @lc code=end

