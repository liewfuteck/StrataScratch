select e.location, avg(s.popularity) as pop
from facebook_employees e
left join facebook_hack_survey s
on e.id = s.employee_id
group by e.location;