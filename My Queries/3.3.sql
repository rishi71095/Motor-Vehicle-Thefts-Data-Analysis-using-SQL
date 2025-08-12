-- 3.3) Do the types of vehicles stolen in the three most dense regions differ from the three least dense regions?

with ranked_regions as (
    select
        location_id,
        case
            when rank() over (order by density desc) <= 3 then 'Most Dense'
            when rank() over (order by density asc) <= 3 then 'Least Dense'
        end as density_group
    from locations
)
select
    r.density_group,
    sv.vehicle_type,
    count(*) as total_stolen
from
	stolen_vehicles sv
inner join 
	ranked_regions r
    on sv.location_id = r.location_id
where r.density_group is not null
group by r.density_group, sv.vehicle_type
order by r.density_group desc, total_stolen desc;
