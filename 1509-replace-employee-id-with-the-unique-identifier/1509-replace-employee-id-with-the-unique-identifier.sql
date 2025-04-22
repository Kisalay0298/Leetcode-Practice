# Write your MySQL query statement below
select l.unique_id, r.name from Employees as r 
left join EmployeeUNI as l
on l.id = r.id