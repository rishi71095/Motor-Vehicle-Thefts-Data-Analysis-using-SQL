-- 3.1) Find the number of vehicles that were stolen in each region

select
	l.region,
    count(vehicle_id) as stolen_car_count
from
	stolen_vehicles s
left join
	locations l
    on s.location_id = l.location_id
group by
	l.region
order by
	l.region