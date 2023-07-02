with tmp as (
select count(distinct(user_id)) as cnt, client_id, extract(month from time_id) as mth
from fact_events
group by 2,3)

select client_id, mth, cnt from tmp;