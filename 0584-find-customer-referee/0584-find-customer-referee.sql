# Write your MySQL query statement below
-- select name from customer where referee_id <> 2 or referee_id is NULL;

select name from Customer where referee_id != 2 or referee_id is NULL;