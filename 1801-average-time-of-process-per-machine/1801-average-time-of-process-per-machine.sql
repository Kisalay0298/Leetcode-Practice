# Write your MySQL query statement below
select a.machine_id, round(avg(a.timestamp - b.timestamp),3) as processing_time
from Activity as a
inner join Activity as b
using(process_id)
where a.machine_id = b.machine_id and a.timestamp > b.timestamp
group by(machine_id)
