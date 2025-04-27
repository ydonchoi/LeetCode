--
-- @lc app=leetcode id=1965 lang=mysql
--
-- [1965] Employees With Missing Information
--

-- @lc code=start
# Write your MySQL query statement below

SELECT *
FROM Employees AS e CROSS JOIN Salaries AS s
-- WHERE e.name IS NULL OR s.salary IS NULL;

-- @lc code=end

