--
-- @lc app=leetcode id=1517 lang=mysql
--
-- [1517] Find Users With Valid E-Mails
--

-- @lc code=start
# Write your MySQL query statement below
-- 내가 약한 문자열 처리 부분이다.. 이상하게 regex가 어렵더라..

SELECT *
FROM users
WHERE mail regexp '^[A-Za-z][A-Za-z0-9_.-]*@leetcode\\.com$';

-- @lc code=end

