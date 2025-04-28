--
-- @lc app=leetcode id=1729 lang=mysql
--
-- [1729] Find Followers Count
--

-- @lc code=start
# Write your MySQL query statement below

SELECT user_id
, COUNT(follower_id) AS followers_count 
FROM followers 
GROUP BY user_id 
ORDER BY user_id;

-- @lc code=end

