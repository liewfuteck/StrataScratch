select to_char(shipment_date, 'YYYY-MM') as shipment_year_month,
count(to_char(shipment_date, 'YYYY-MM')) as cnt
from amazon_shipment
group by 1;