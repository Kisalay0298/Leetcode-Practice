# Write your MySQL query statement below
-- select a.id as Id from weather as a, weather as b
-- where datediff(a.recordDate, b.recordDate)=1 and a.temperature > b.temperature;


select a.id as Id 
from Weather as a
inner join Weather as b
where (a.temperature > b.temperature) and datediff(a.recordDate, b.recordDate)=1