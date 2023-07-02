select bike_number, max(end_time) as end_time
from dc_bikeshare_q1_2012
group by bike_number
order by end_time desc;