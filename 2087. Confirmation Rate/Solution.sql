select a.user_id ,round(avg(if(b.action = 'confirmed',1.00,0)),2) as confirmation_rate
from Signups as a
left join Confirmations as b
on a.user_id = b.user_id
group by user_id