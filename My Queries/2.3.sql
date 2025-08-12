-- 2.3) For each vehicle type, find the percent of vehicles stolen that are luxury versus standard

select
	v.vehicle_type,
    round(sum(case when make_type = "Standard" then 1 else 0 end) / count(*) * 100, 2) as Standard,
    round(sum(case when make_type = "Luxury" then 1 else 0 end) / count(*) * 100, 2) as Luxury
from
	stolen_vehicles v
left join
	make_details m
    on v.make_id = m.make_id
group by
	v.vehicle_type
order by
	v.vehicle_type desc