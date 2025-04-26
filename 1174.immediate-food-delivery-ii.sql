--
-- @lc app=leetcode id=1174 lang=mysql
--
-- [1174] Immediate Food Delivery II
--

-- @lc code=start
# Write your MySQL query statement below

select 
ROUND(
    SUM(
    CASE WHEN order_date=customer_pref_delivery_date THEN 1 
    ELSE 0 
    END) / COUNT(*) , 4) * 100 AS immediate_percentage 
FROM Delivery 
WHERE (customer_id, order_date) IN (
    SELECT customer_id, min(order_date) 
    FROM Delivery 
    GROUP BY customer_id);

-- @lc code=end

