with tmp as
(select sum(cost_in_dollars * units_sold) as total_revenue,
        product_id,
        rank() over (order by sum(cost_in_dollars * units_sold) desc) as rnk
from online_orders
where extract(month from date) between 1 and 6
and extract(year from date) = 2022
group by product_id
)

select product_id, total_revenue
from tmp
where rnk <= 5;