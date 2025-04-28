--
-- @lc app=leetcode id=196 lang=mysql
--
-- [196] Delete Duplicate Emails
--

-- @lc code=start
# Write your MySQL query statement below
-- delete 문으로 중복 데이터 삭제 문제

DELETE p1 
FROM person AS p1, person AS p2 
WHERE p1.email = p2.email AND p1.id > p2.id;

-- @lc code=end

