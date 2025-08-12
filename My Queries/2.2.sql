-- 2.2) For each vehicle type, find the average age of the cars that are stolen

select
	vehicle_type,
    round(avg(year(date_stolen) - model_year), 2) as age 
from 
	stolen_vehicles
group by
	vehicle_type
order by
	age desc