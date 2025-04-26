--
-- @lc app=leetcode id=570 lang=mysql
--
-- [570] Managers with at Least 5 Direct Reports
--

-- @lc code=start
# Write your MySQL query statement below

SELECT name
FROM employee
WHERE id IN (
    SELECT managerid 
    FROM employee 
    GROUP BY managerid 
    HAVING COUNT(*) >= 5
    );

-- @lc code=end

