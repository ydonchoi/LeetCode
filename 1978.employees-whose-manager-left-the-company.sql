--
-- @lc app=leetcode id=1978 lang=mysql
--
-- [1978] Employees Whose Manager Left the Company
--

-- @lc code=start
# Write your MySQL query statement below

SELECT e1.employee_id 
FROM Employees AS e1 LEFT JOIN employees AS e2 
ON e1.manager_id = e2.employee_id 
WHERE e1.salary < 30000 AND e1.manager_id IS NOT NULL AND e2.employee_id IS NULL 
ORDER BY e1.employee_id ASC;

-- @lc code=end

