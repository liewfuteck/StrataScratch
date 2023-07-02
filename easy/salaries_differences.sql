with tmp1 as (select max(salary) as max_sal
from db_employee e
left join db_dept d
on e.department_id = d.id
where d.department = 'marketing'),

tmp2 as (select max(salary) as max_sal
from db_employee e
left join db_dept d
on e.department_id = d.id
where d.department = 'engineering')

select abs(tmp2.max_sal - tmp1.max_sal) from tmp1, tmp2;