# Write your MySQL query statement below
-- to judge whether triangle, the longest line is longer than sum of the others.

select x, y, z, if(chk1>0 and chk2>0 and chk3>0, 'Yes', 'No') triangle
from (select *, (x+y+z)-2*x chk1, (x+y+z)-2*y chk2,(x+y+z)-2*z chk3 from triangle) new
