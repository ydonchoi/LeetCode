--
-- @lc app=leetcode id=1633 lang=mysql
--
-- [1633] Percentage of Users Attended a Contest
--

-- @lc code=start
# Write your MySQL query statement below

SELECT contest_id, 
ROUND(COUNT(r.user_id)/(
    SELECT COUNT(DISTINCT user_id) 
    FROM users
)*100, 2) AS percentage 
FROM users AS u INNER JOIN register AS r 
ON u.user_id=r.user_id 
GROUP BY contest_id
ORDER BY percentage DESC, contest_id ASC


-- @lc code=end

