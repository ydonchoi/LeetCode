--
-- @lc app=leetcode id=1484 lang=mysql
--
-- [1484] Group Sold Products By The Date
--

-- @lc code=start
# Write your MySQL query statement below

SELECT sell_date
     , COUNT(DISTINCT product) num_sold
     , GROUP_CONCAT(DISTINCT product ORDER BY product) products
FROM activities
GROUP BY sell_date

-- <GROUP BY로 그룹화 한 데이터 확인시>
-- 1. 특정 칼럼에서 ,(콤마)로 나열하여 조회하기
-- SELECT GROUP_CONCAT(COL2)
-- FROM 테이블명
-- GROUP BY COL1

-- 2. GROUP_CONCAT 내에서 정렬하기
-- SELECT GROUP_CONCAT(COL2 ORDER BY COL2 DESC)
-- FROM 테이블명
-- GROUP BY COL1

-- 3. GROUP_CONCAT 내에서 유일한 값(uniqu) 만 출력하기
-- SELECT GROUP_CONCAT(DISTINCT COL2)
-- FROM 테이블명
-- GROUP BY COL1

-- 참조: http://velog.io/@12aeun/SQL-LeetCod-1484.-Group-Sold-Products-By-The-Date

-- @lc code=end

