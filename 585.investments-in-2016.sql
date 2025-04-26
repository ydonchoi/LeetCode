--
-- @lc app=leetcode id=585 lang=mysql
--
-- [585] Investments in 2016
--

-- @lc code=start
# Write your MySQL query statement below

-- 고민해서 작성해보긴 했는데.. 아니.. 이게 왜 되는 거지?? 맞는 거야?? 신기하게 불안하네;;

SELECT ROUND(SUM(tiv_2016), 2) AS tiv_2016
FROM (
    SELECT pid 
    FROM insurance 
    GROUP BY lat, lon 
    HAVING COUNT(*) < 2
    ) AS tbl1
    LEFT JOIN (
        SELECT DISTINCT i1.pid, i1.tiv_2015, i1.tiv_2016 
        FROM insurance AS i1, insurance AS i2 
        WHERE i1.pid <> i2.pid AND i1.tiv_2015 = i2.tiv_2015
        ) AS tbl2
ON tbl1.pid=tbl2.pid;

-- @lc code=end

