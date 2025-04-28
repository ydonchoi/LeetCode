--
-- @lc app=leetcode id=1075 lang=mysql
--
-- [1075] Project Employees I
--

-- @lc code=start
# Write your MySQL query statement below

SELECT p.project_id, 
ROUND(SUM(experience_years)/COUNT(experience_years), 2) AS average_years 
FROM project AS p LEFT OUTER JOIN employee AS e 
ON p.employee_id=e.employee_id 
GROUP BY p.project_id;

-- @lc code=end

