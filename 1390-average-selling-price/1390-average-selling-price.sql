# Write your MySQL query statement below
-- select a.product_id, IFNULL(round(sum(b.units * a.price)/sum(b.units),2), 0) as average_price 
-- from prices as a
-- left join UnitsSold as b 
-- on (a.product_id=b.product_id and (b.purchase_date between a.start_date and a.end_date))
-- group by a.product_id;



select product_id, ifnull(round(sum(price * units)/sum(units), 2), 0) as average_price
from(
    select a.*, b.purchase_date, b. units
    from Prices as a
    left join
    UnitsSold as b
    ON a.product_id = b.product_id
    AND b.purchase_date BETWEEN a.start_date AND a.end_date
    -- using(product_id)
    -- where b.purchase_date <= a.end_date and b.purchase_date >= a.start_date
)as c
group by product_id