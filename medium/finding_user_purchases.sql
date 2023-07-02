select distinct(a1.user_id)
from amazon_transactions a1
join amazon_transactions a2
on a1.user_id = a2.user_id
where abs(a1.created_at - a2.created_at) < 8
and not(a1.id = a2.id)
order by a1.user_id;