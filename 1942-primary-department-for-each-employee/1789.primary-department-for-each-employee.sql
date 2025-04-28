--
-- @lc app=leetcode id=1789 lang=mysql
--
-- [1789] Primary Department for Each Employee
--

-- @lc code=start
# Write your MySQL query statement below

(SELECT employee_id, department_id 
FROM employee 
WHERE primary_flag = "Y")
UNION
(SELECT employee_id, department_id 
FROM employee 
GROUP BY employee_id 
HAVING COUNT(employee_id) < 2);

-- @lc code=end

