--
-- @lc app=leetcode id=176 lang=mysql
--
-- [176] Second Highest Salary
--

-- @lc code=start
# Write your MySQL query statement below

SELECT max(E.salary) as 'SecondHighestSalary'
FROM Employee as E
WHERE E.salary < 
    (SELECT max(salary)
     FROM Employee);
     
-- @lc code=end

