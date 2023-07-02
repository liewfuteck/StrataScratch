select c.first_name, o.order_date, o.order_details, o.total_order_cost
from customers c
join orders o
on c.id = o.cust_id
where c.first_name = 'Jill' or c.first_name = 'Eva'
group by c.id, c.first_name, o.order_date, o.order_details, o.total_order_cost
order by c.id asc;