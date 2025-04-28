--
-- @lc app=leetcode id=1211 lang=mysql
--
-- [1211] Queries Quality and Percentage
--

-- @lc code=start
# Write your MySQL query statement below

SELECT query_name, 
ROUND(SUM(rating/position)/COUNT(query_name), 2) AS quality, 
ROUND(SUM(IF(rating < 3, 1, 0))/COUNT(query_name)*100, 2) AS poor_query_percentage
FROM queries
GROUP BY query_name;

-- @lc code=end

