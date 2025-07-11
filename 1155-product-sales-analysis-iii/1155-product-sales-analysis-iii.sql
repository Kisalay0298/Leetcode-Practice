# Write your MySQL query statement below

-- select a.product_id, a.year as first_year, a.quantity, a.price
-- from Sales as a
-- inner join
-- (
--     select product_id, min(year) as year
--     from Sales
--     group by product_id
-- ) as b
-- on a.product_id=b.product_id and a.year=b.year


-- another solution

select product_id, year as first_year, quantity, price
from Sales
where(product_id, year)
in(
    select product_id, min(year) as year
    from Sales
    group by product_id
)