select id, first_name, last_name, department_id, max(salary)
from ms_employee_salary s
group by id, first_name, last_name, department_id
order by id, first_name, last_name, department_id;