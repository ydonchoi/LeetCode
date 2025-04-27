--
-- @lc app=leetcode id=1965 lang=mysql
--
-- [1965] Employees With Missing Information
--

-- @lc code=start
# Write your MySQL query statement below

SELECT employee_id
FROM (
    (SELECT e.employee_id
    FROM Employees AS e left outer join Salaries AS s
    on e.employee_id = s.employee_id
    where s.employee_id IS NULL
    ORDER BY e.employee_id)
    UNION
    (SELECT s.employee_id
    FROM Employees AS e right outer join Salaries AS s
    on e.employee_id = s.employee_id
    where e.employee_id IS NULL)
) AS tbl
ORDER BY employee_id;

-- @lc code=end

