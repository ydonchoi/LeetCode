--
-- @lc app=leetcode id=1341 lang=mysql
--
-- [1341] Movie Rating
--

-- @lc code=start
# Write your MySQL query statement below

(SELECT new_tbl1.name AS results 
FROM (
    SELECT u.name
    , COUNT(m.title) AS count 
    FROM MovieRating AS mr 
    LEFT OUTER JOIN Movies AS m 
    ON mr.movie_id = m.movie_id 
    LEFT OUTER JOIN Users AS u 
    ON mr.user_id = u.user_id 
    GROUP BY u.name
    ) AS new_tbl1 
    ORDER BY new_tbl1.count DESC, new_tbl1.name ASC LIMIT 1)
UNION ALL
(SELECT new_tbl2.title AS results 
FROM (
    SELECT m.title
    , AVG(mr.rating) AS average 
    FROM MovieRating AS mr 
    LEFT OUTER JOIN Movies AS m 
    ON mr.movie_id = m.movie_id 
    LEFT OUTER JOIN Users AS u 
    ON mr.user_id = u.user_id 
    WHERE YEAR(mr.created_at) = '2020' AND MONTH(mr.created_at) = "02" 
    GROUP BY m.title
    ) AS new_tbl2 
    ORDER BY new_tbl2.average DESC, new_tbl2.title ASC LIMIT 1);

-- @lc code=end

