select avg(bathrooms) as avg_bath, avg(bedrooms) as avg_bed, property_type, city
from airbnb_search_details
group by property_type, city;