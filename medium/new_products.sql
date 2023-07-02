with year_2020 as (
select company_name, count(company_name) as cnt
from car_launches
where year = 2020
group by company_name),

year_2019 as (
select company_name, count(company_name) as cnt
from car_launches
where year = 2019
group by company_name)

select year_2020.company_name, year_2020.cnt - year_2019.cnt as net_cnt
from year_2020
left join year_2019
on year_2020.company_name = year_2019.company_name;