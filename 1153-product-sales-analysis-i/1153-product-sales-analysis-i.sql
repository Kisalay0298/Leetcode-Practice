# Write your MySQL query statement below
-- select a.product_name, b.year, b.price from product as a
-- inner join sales as b
-- using(product_id);


select l.product_name, r.year, r.price from Sales as r
left join Product as l
on l.product_id = r.product_id