--
-- @lc app=leetcode id=1068 lang=mysql
--
-- [1068] Product Sales Analysis I
--

-- @lc code=start
# Write your MySQL query statement below

SELECT product_name, year, price 
FROM Product AS P left join Sales AS S 
on P.product_id = S.product_id
WHERE year IS NOT NULL AND price IS NOT NULL;


-- @lc code=end

