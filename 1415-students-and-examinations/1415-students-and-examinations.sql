# Write your MySQL query statement below

-- select a.* , b.subject_name, count(c.student_id) as attended_exams from students as a
-- cross join subjects as b
-- left join Examinations as c
-- on c.student_id=a.student_id and c.subject_name=b.subject_name
-- group by subject_name, student_id
-- order by student_id, subject_name, attended_exams desc



select d.student_id, d.student_name, d.subject_name, count(c.subject_name)as attended_exams
from(
    select a.student_id, a.student_name, b.subject_name 
    from Students as a
    cross join Subjects as b
) as d
left join Examinations as c
using(student_id, subject_name)
group by subject_name, student_name, student_id
order by student_id, subject_name


