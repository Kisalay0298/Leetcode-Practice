# Write your MySQL query statement below
-- 1st
-- SELECT e.name
-- FROM Employee AS e 
-- INNER JOIN Employee AS m ON e.id=m.managerId 
-- GROUP BY m.managerId 
-- HAVING COUNT(m.managerId) >= 5

-- 2nd
select b.name
from Employee as b
inner join (
    select id, managerId from Employee
    group by managerId
    having count(managerId)>=5
) as a
on a.managerId = b.id