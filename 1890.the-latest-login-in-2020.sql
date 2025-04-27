--
-- @lc app=leetcode id=1890 lang=mysql
--
-- [1890] The Latest Login in 2020
--

-- @lc code=start
# Write your MySQL query statement below

SELECT user_id, MAX(time_stamp) AS last_stamp
FROM Logins
WHERE time_stamp LIKE '2020%'
GROUP BY user_id;


-- @lc code=end

