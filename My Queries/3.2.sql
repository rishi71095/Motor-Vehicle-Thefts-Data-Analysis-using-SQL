-- 3.2) Combine the previous output with the population and density statistics for each region

select
	l.region,
    l.population,
    l.density,
    count(s.vehicle_id) as stolen_car_count
from
	stolen_vehicles s
left join
	locations l
	on s.location_id = l.location_id
group by
	l.region,
    l.population,
    l.density