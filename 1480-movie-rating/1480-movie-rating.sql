# Write your MySQL query statement below
(select nt.name results from (select u.name, count(m.title) count from MovieRating mr left outer join Movies m on mr.movie_id = m.movie_id left outer join Users u on mr.user_id = u.user_id group by u.name) nt order by nt.count DESC, nt.name ASC limit 1)

union ALL

(select nt.title results from (select m.title, avg(mr.rating) average from MovieRating mr left outer join Movies m on mr.movie_id = m.movie_id left outer join Users u on mr.user_id = u.user_id where year(mr.created_at) = '2020' and month(mr.created_at) = "02" group by m.title) nt order by nt.average DESC, nt.title ASC limit 1)