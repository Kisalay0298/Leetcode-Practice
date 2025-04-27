# Write your MySQL query statement below
-- SELECT
--   DATE_FORMAT(trans_date, '%Y-%m') AS month,
--   country,
--   COUNT(*) AS trans_count,
--   SUM(state = 'approved') AS approved_count,
--   SUM(amount) AS trans_total_amount,
--   SUM(IF(state = 'approved', amount, 0)) AS approved_total_amount
-- FROM Transactions
-- GROUP BY 1, 2;

select
    DATE_FORMAT(trans_date, '%Y-%m') AS month,
    country,
    count(state) as trans_count,
    sum(if(state='approved', 1, 0)) as approved_count,
    sum(amount) as trans_total_amount,
    sum(if(state='approved', amount, 0)) as approved_total_amount
from Transactions
group by month, country
