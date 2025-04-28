--
-- @lc app=leetcode id=610 lang=mysql
--
-- [610] Triangle Judgement
--

-- @lc code=start
# Write your MySQL query statement below
-- to judge whether triangle, the longest line is longer than sum of the others.

SELECT x
, y
, z
, IF(chk1 > 0 AND chk2 > 0 AND chk3 > 0, 'Yes', 'No') AS triangle
FROM (
    SELECT *
    , (x+y+z)-2*x AS chk1
    , (x+y+z)-2*y AS chk2
    ,(x+y+z)-2*z AS chk3 
    FROM triangle
    ) AS new;
    
-- @lc code=end

