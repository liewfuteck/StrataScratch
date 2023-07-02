-- find the budget of the individual projects, and the corresponding time taken (using start_date, end_date)
-- find the total (prorated) sum of the salaries of employees assigned to the project
-- budget is absolute, while salary is on a yearly basis
-- comparison via left join
-- return budgets that are overbudget

with tmp as
(select a.project_id, sum(b.salary) as total_sal
from linkedin_emp_projects a
left join linkedin_employees b
on a.emp_id = b.id
group by a.project_id)

-- select c.title, c.budget, round(datediff(c.end_date, c.start_date) / 365 * tmp.total_sal) as emp_expense
-- from linkedin_projects c
-- left join tmp
-- on c.id = tmp.project_id
-- where (c.end_date - c.start_date) / 365 * tmp.total_sal > c.budget;

select c.title,
        c.budget,
        ceiling(cast(datediff(c.end_date, c.start_date)as float) / 365 * tmp.total_sal) as emp_expense
from linkedin_projects c
left join tmp
on c.id = tmp.project_id
where ceiling(cast(datediff(c.end_date, c.start_date)as float) / 365 * tmp.total_sal) > c.budget;