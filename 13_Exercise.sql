# 1.Select all Hollywood movies released after the year 2000 that made more than 500 million $ profit or more profit. 
# Note that all Hollywood movies have millions as a unit hence you don't need to do the unit conversion. 
# Also, you can write this query without CTE as well but you should try to write this using CTE only

with x as (
	select 
		* 
	from movies 
    where release_year>2000 and industry="Hollywood"
    ),
	y as (
	select 
		*,
		(revenue-budget)*100/budget as Profit_Pct 
	from financials
    )
select
	x.movie_id,
    x.title,
    x.release_year,
    x.industry,
    y.Profit_Pct
from x
join y
using (movie_id)
where Profit_Pct>=500
order by Profit_Pct;