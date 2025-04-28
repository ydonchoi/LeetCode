# Write your MySQL query statement below

SELECT l.id AS id 
FROM Weather AS l JOIN Weather AS r 
ON DATEDIFF(l.recordDate, r.recordDate)=1 and l.temperature > r.temperature;
