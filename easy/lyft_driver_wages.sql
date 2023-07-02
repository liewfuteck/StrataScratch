select *
from lyft_drivers d
where d.yearly_salary <= 30000
or d.yearly_salary >= 70000;