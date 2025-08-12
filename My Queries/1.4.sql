-- 1.4 Replace the numeric day of week values with the full 
-- name of each day of the week (Sunday, Monday, Tuesday, etc.)

select
	dayofweek(date_stolen) as my_day,
	dayname(date_stolen) as my_dayname,
    count(*) as vehicles_stolen
from 
	stolen_vehicles
group by
	my_day,
    my_dayname
order by
	my_day,
    my_dayname