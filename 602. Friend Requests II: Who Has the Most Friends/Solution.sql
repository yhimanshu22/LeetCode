# Write your MySQL query statement below
select id ,round(count(*),2) as num from 
(select requester_id as id from RequestAccepted
union all
select accepter_id from RequestAccepted 
) as a
group by id
order by num desc
limit 1