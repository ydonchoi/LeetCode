# Write your MySQL query statement below

SELECT actor_id, director_id
FROm ActorDirector
GROUP BY actor_id, director_id
HAVING COUNT(*) >= 3;
