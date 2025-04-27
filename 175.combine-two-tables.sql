--
-- @lc app=leetcode id=175 lang=mysql
--
-- [175] Combine Two Tables
--

-- @lc code=start
# Write your MySQL query statement below

SELECT firstName, lastName, city, state
FROM Person AS p LEFT JOIN Address AS a
ON p.personId = a.personId;

-- @lc code=end

