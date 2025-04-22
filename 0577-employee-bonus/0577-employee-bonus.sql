# Write your MySQL query statement below
select a.name, b.bonus
from Employee as a
left join Bonus as b
using(empId)
where b.bonus<1000 or bonus is null


