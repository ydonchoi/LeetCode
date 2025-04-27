--
-- @lc app=leetcode id=586 lang=mysql
--
-- [586] Customer Placing the Largest Number of Orders
--

-- @lc code=start
# Write your MySQL query statement below

WITH max_count AS (
    SELECT MAX(cnt_num) AS max_cnt
    FROM (
        SELECT customer_number, COUNT(customer_number) AS cnt_num
        FROM Orders
        GROUP BY customer_number
    ) tbl
)

SELECT customer_number
FROM Orders
GROUP BY customer_number
HAVING COUNT(customer_number) = (SELECT max_cnt FROM max_count);

-- @lc code=end

