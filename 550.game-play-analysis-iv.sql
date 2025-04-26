--
-- @lc app=leetcode id=550 lang=mysql
--
-- [550] Game Play Analysis IV
--

-- @lc code=start
# Write your MySQL query statement below

WITH cte_login AS (
  SELECT player_id, 
  DATEDIFF(event_date, MIN(event_date) OVER(PARTITION BY player_id)) = 1 AS login
  FROM activity
)

SELECT ROUND(SUM(login) / COUNT(DISTINCT player_id), 2) AS fraction
FROM cte_login

-- (1st trial)
-- SELECT ROUND(SUM(cont_day)/COUNT(DISTINCT player_id), 2) AS fraction
-- FROM (SELECT a1.player_id, 
--              a1.event_date a1, 
--              a2.event_date a2, 
--              IF(DATEDIFF(a1.event_date, a2.event_date)=1, 1, 0) AS cont_day 
--       FROM activity AS a1, activity AS a2 
--       WHERE a1.player_id = a2.player_id AND a1.event_date >= a2.event_date) AS new_tbl


-- (2nd trial)
-- 문제 잘못 이해했다.. "처음 로그인한 날 다음 날 다시 로그인한 플레이어의 비율을 소수점 둘째 자리까지 반올림하여 보고하는 해법 작성" (연속일수 1일 차이만 가능..)
-- SELECT ROUND(
--              COUNT(*) / (SELECT COUNT(DISTINCT player_id)
--                          FROM activity)
--              , 2) AS fraction
-- FROM activity AS a LEFT JOIN (
--                               SELECT player_id, event_date AS 1st_event_date 
--                               FROM activity 
--                               GROUP BY player_id HAVING MIN(event_date)
--                              ) AS f 
-- ON a.player_id = f.player_id
-- WHERE (a.event_date - f.1st_event_date) = 1

-- @lc code=end

