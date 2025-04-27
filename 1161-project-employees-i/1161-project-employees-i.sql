# Write your MySQL query statement below
select a.project_id, round(avg(b.experience_years),2) as average_years
from Project as a
join Employee as b
on a.employee_id = b.employee_id
group by project_id
