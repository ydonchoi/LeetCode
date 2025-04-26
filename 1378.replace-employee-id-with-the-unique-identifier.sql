--
-- @lc app=leetcode id=1378 lang=mysql
--
-- [1378] Replace Employee ID With The Unique Identifier
--

-- @lc code=start
# Write your MySQL query statement below

SELECT unique_id, name 
FROM EmployeeUNI AS UNI right join Employees AS E on UNI.id=E.id;


-- @lc code=end

