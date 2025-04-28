--
-- @lc app=leetcode id=1934 lang=mysql
--
-- [1934] Confirmation Rate
--

-- @lc code=start
# Write your MySQL query statement below


SELECT user_id, 
ROUND((SELECT COUNT(c.action) FROM Signups_confirmed)/COUNT(action), 2) AS confirmation_rate
FROM Signups LEFT JOIN Signups_confirmed ON Signups.user_id = Signups_confirmed.user_id 
GROUP BY Signups.user_id;

-- @lc code=end

