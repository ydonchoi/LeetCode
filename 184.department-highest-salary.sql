--
-- @lc app=leetcode id=184 lang=mysql
--
-- [184] Department Highest Salary
--

-- @lc code=start
# Write your MySQL query statement below

SELECT Department, Employee, Salary
FROM (
    SELECT d.id, d.name AS Department, e.name AS Employee, e.salary AS Salary
    FROM Employee AS e LEFT JOIN Department AS d 
    ON e.departmentId = d.id
    ) AS tbl
WHERE Salary = (SELECT MAX(Salary) FROM Employee WHERE departmentId = tbl.id);

-- @lc code=end

