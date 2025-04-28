--
-- @lc app=leetcode id=577 lang=mysql
--
-- [577] Employee Bonus
--

-- @lc code=start
# Write your MySQL query statement below

SELECT name, bonus 
FROM Employee AS e left join Bonus AS b 
on e.empID=b.empID
WHERE bonus < 1000 OR bonus IS NULL;


-- @lc code=end

