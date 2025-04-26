--
-- @lc app=leetcode id=1327 lang=mysql
--
-- [1327] List the Products Ordered in a Period
--

-- @lc code=start
# Write your MySQL query statement below

SELECT p.product_name
, SUM(unit) AS unit
FROM products AS p JOIN orders AS o 
ON p.product_id = o.product_id 
WHERE YEAR(o.order_date) = '2020' AND MONTH(o.order_date) = '02'
GROUP BY p.product_id 
HAVING SUM(unit) >= 100;

-- @lc code=end

