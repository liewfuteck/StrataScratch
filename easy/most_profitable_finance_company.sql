with tmp as
(select company, max(profits) as max_profits, continent
from forbes_global_2010_2014
where sector = 'Financials'
group by company, continent
order by max_profits desc)

select company, continent from tmp
limit 1;