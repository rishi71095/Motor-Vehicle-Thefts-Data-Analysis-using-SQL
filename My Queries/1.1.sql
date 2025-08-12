-- 1.1 Find the number of vehicles stolen each year
use stolen_vehicles_db;

select
	year(date_stolen) as my_year,
    count(*) as vehicles_stolen
    -- count(vehicle_id) as vehicles_stolen
from 
	stolen_vehicles
group by
	my_year
order by
	my_year