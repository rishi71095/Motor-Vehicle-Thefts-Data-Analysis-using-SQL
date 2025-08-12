-- 2.1 Find the vehicle types that are most often and least often stolen
select
	vehicle_type,
	count(vehicle_id) as stolen_count
from
	stolen_vehicles
group by
	vehicle_type
order by
	stolen_count desc
limit 5

/*
with ranked_vehicles AS (
  select
    vehicle_type,
    count(vehicle_id) as stolen_count,
    RANK() OVER (ORDER BY COUNT(vehicle_id) ASC) as min_rank,
    RANK() OVER (ORDER BY COUNT(vehicle_id) DESC) as max_rank
  from
    stolen_vehicles
  group by
    vehicle_type
)
select
  vehicle_type,
  stolen_count,
  case
    when min_rank = 1 then 'Least Stolen'
    when max_rank = 1 then 'Most Stolen'
  end as category
from
  ranked_vehicles
where
  min_rank = 1 or max_rank = 1;
*/
    
