with average as (
select department, avg(salary) as averages
from employee
group by department)

select e.department, e.first_name, e.salary, a.averages
from employee e
left join average a
on e.department = a.department
group by e.department, e.first_name, e.salary, a.averages;