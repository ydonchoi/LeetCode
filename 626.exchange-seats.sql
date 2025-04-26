--
-- @lc app=leetcode id=626 lang=mysql
--
-- [626] Exchange Seats
--

-- @lc code=start
# Write your MySQL query statement below
SELECT ROW_NUMBER() OVER (ORDER BY new_id ASC) AS id
, new.student 
FROM (
    SELECT IF(MOD(id, 2) = 0, id-1, id+1) AS new_id
    , student 
    FROM seat 
    ORDER BY new_id ASC
    ) AS new;

-- @lc code=end

