-- for max salary
select t.worker_title
from worker w
left join title t
on w.worker_id = t.worker_ref_id
where w.salary = (select max(salary) from worker);