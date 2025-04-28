--
-- @lc app=leetcode id=1667 lang=mysql
--
-- [1667] Fix Names in a Table
--

-- @lc code=start
# Write your MySQL query statement below

SELECT user_id
, CONCAT(UPPER(SUBSTR(name,1,1)), LOWER(SUBSTR(name,2))) AS name 
FROM users 
ORDER BY user_id ASC;

-- 오라클에는 대문자로 변환해주는 initcap() 함수가 있지만, mysql에는 없다는 점을 알게 됨
-- 첫글자 대문자 변환하려면 upper와 lower를 합쳐서 이용해야!

-- @lc code=end

