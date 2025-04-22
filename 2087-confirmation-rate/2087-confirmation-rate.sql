# Write your MySQL query statement below
select 
    a.user_id, 
    ifnull(round(sum(b.action='confirmed')/count(*),2),0) as confirmation_rate
from Signups as a
left join Confirmations as b
using(user_id)
group by user_id
