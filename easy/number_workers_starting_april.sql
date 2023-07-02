select count(first_name) as cnt, department
from worker
where extract(month from joining_date) >= 4
group by department
order by cnt desc;