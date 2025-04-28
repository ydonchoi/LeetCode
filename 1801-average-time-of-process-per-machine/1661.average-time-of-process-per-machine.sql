--
-- @lc app=leetcode id=1661 lang=mysql
--
-- [1661] Average Time of Process per Machine
--

-- @lc code=start
# Write your MySQL query statement below

SELECT machine_id, 
ROUND(SUM(IF(activity_type='start', timestamp*-1.0, timestamp))/(SELECT COUNT(DISTINCT process_id)), 3) AS processing_time 
FROM Activity 
GROUP BY machine_id;

-- @lc code=end

