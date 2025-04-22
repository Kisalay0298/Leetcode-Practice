# Write your MySQL query statement below
-- select v.customer_id, count(*) as count_no_trans from visits as v
-- left join transactions as t using(visit_id) where transaction_id is NULL
-- group by customer_id;



select v.customer_id, count(customer_id) as count_no_trans 
from Visits as v
left join Transactions as t
using (visit_id)
where transaction_id is null
group by(customer_id)