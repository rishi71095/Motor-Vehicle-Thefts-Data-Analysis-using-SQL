-- 1.2 Find the number of vehicles stolen each month
select
	year(date_stolen) as my_year,
    month(date_stolen) as my_month,
    count(*) as vehicles_stolen
from 
	stolen_vehicles
group by
	my_year,
    my_month
order by
	my_year,
    my_month
    
/*
select
    year(date_stolen)*100 + month(date_stolen) as yr_month,
    count(*) as vehicles_stolen
from 
	stolen_vehicles
group by
	yr_month
order by
	my_year,
    my_month
*/