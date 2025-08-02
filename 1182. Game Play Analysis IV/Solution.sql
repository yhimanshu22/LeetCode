# Write your MySQL query statement below
select round(count(a.player_id)/ (SELECT COUNT(DISTINCT player_id) FROM Activity),2) as fraction from (select player_id ,min(event_date) as first_login from Activity
group by player_id) as a
join Activity as b
on a.player_id = b.player_id and b.event_date = date_add(a.first_login,interval 1 day)

