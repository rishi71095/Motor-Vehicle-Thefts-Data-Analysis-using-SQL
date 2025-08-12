-- 1.3 Find the number of vehicles stolen each day of the week

select
	dayofweek(date_stolen) as my_day,
    count(*) as vehicles_stolen
from 
	stolen_vehicles
group by
	my_day
order by
	my_day