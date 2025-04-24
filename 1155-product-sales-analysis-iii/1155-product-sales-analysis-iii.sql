# Write your MySQL query statement below
# 이거 아까 풀다가 패스한 문제.. 그룹화해서 오름차순으로 정렬하는 문제.. 어렵다..
# 찾아보니 공통되는 solution.. 다들 아래 방식을 정답으로 설명하고 있음

SELECT product_id,year AS first_year,quantity,price
FROM Sales
WHERE (product_id,year) IN (SELECT product_id,MIN(year) AS year FROM Sales GROUP BY product_id)