--
-- @lc app=leetcode id=1050 lang=mysql
--
-- [1050] Actors and Directors Who Cooperated At Least Three Times
--

-- @lc code=start
# Write your MySQL query statement below

SELECT actor_id, director_id
FROm ActorDirector
GROUP BY actor_id, director_id
HAVING COUNT(*) >= 3;

-- @lc code=end

