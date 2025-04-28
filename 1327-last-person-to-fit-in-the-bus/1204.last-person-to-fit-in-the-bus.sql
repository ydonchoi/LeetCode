--
-- @lc app=leetcode id=1204 lang=mysql
--
-- [1204] Last Person to Fit in the Bus
--

-- @lc code=start
# Write your MySQL query statement below

-- 이거 누적합 문제 같은데..

SELECT person_name
FROM (
    SELECT *
    , SUM(weight) OVER (ORDER BY turn ASC) AS summation 
    FROM Queue
    ) AS ntbl
WHERE ntbl.summation <= 1000
ORDER BY ntbl.turn DESC LIMIT 1;

-- @lc code=end

