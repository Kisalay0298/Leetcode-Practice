# Write your MySQL query statement below
select 
    b.contest_id,
    round(
        100 * count(b.user_id)/(select count(*) from Users)
    , 2) as percentage
from Register as b
cross join Users as a
on a.user_id = b.user_id
group by b.contest_id
order by percentage desc, contest_id asc