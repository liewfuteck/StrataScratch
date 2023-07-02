select count(worker_id) as cnt
from worker
where extract(month from joining_date) >= 4
and department = 'Admin';