# Write your MySQL query statement below
select customer_id 
from (
    select customer_id, count(distinct product_key) as count
    from Customer
    group by customer_id
    having count = (select count(*) from product)
) as result
