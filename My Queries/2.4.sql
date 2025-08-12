-- 2.4) Create a table where the rows represent the top 10 vehicle types, the columns represent the top 7 vehicle colors (plus 1 column for all other colors) and the values are the number of vehicles stolen

select
	vehicle_type,
	sum(case when color = "Silver" then 1 else 0 end) as Silver,
	sum(case when color = "White" then 1 else 0 end) as White,
	sum(case when color = "Black" then 1 else 0 end) as Black,
	sum(case when color = "Blue" then 1 else 0 end) as Blue,
	sum(case when color = "Red" then 1 else 0 end) as Red,
	sum(case when color = "Grey" then 1 else 0 end) as Grey,
	sum(case when color = "Green" then 1 else 0 end) as Green,
	sum(case when color not in ("Silver", "White", "Black", "Blue", "Red", "Grey", "Green") then 1 else 0 end) as Others
from
	stolen_vehicles
group by
	vehicle_type
order by
	count(*) desc
limit 10