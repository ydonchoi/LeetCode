--
-- @lc app=leetcode id=1907 lang=mysql
--
-- [1907] Count Salary Categories
--

-- @lc code=start
# Write your MySQL query statement below

(SELECT 'Low Salary' AS category
, SUM(IF(income < 20000, 1, 0)) AS accounts_count
FROM Accounts) 
UNION
(SELECT 'Average Salary' AS category
, SUM(IF(income BETWEEN 20000 AND 50000, 1, 0)) AS accounts_count
FROM Accounts)
UNION
(SELECT 'High Salary' AS category
, SUM(IF(income > 50000, 1, 0)) AS accounts_count
FROM Accounts);

-- @lc code=end

