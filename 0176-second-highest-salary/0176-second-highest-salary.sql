# Write your MySQL query statement below
SELECT max(E.salary) as 'SecondHighestSalary'
FROM Employee as E
WHERE E.salary < 
    (SELECT max(salary)
     FROM Employee)
     