# Write your MySQL query statement below

SELECT s.user_id, 
ROUND(SUM(IF(action="confirmed", 1, 0))/COUNT(IFNULL(action, 0)), 2) AS confirmation_rate
FROM Signups AS s LEFT OUTER JOIN Confirmations AS c ON s.user_id=c.user_id
GROUP BY s.user_id;
