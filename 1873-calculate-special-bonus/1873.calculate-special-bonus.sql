--
-- @lc app=leetcode id=1873 lang=mysql
--
-- [1873] Calculate Special Bonus
--

-- 직원의 ID가 홀수이고 직원의 이름이 'M'으로 시작하지 않는 경우 직원의 보너스는 급여의 100%입니다. 그렇지 않으면 직원의 보너스는 0입니다

-- @lc code=start
# Write your MySQL query statement below

SELECT employee_id,
CASE WHEN MOD(employee_id, 2) = 1 AND name NOT LIKE 'M%' THEN salary
ELSE 0 END AS bonus
FROM Employees
ORDER BY employee_id;

-- @lc code=end

