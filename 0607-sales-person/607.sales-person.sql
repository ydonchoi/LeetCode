--
-- @lc app=leetcode id=607 lang=mysql
--
-- [607] Sales Person
--

-- @lc code=start
# Write your MySQL query statement below

SELECT s.name
FROM SalesPerson AS s
LEFT OUTER JOIN (
    SELECT sales_id, c.name
    FROM Orders AS o
    LEFT JOIN Company AS c
    ON o.com_id = c.com_id
    WHERE c.name = 'RED'
) AS tbl
ON s.sales_id = tbl.sales_id
WHERE tbl.name IS NULL;

-- @lc code=end

