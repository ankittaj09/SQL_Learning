-- 1. Generate a report of all Hindi movies sorted by their revenue amount in millions.Print movie name, revenue, currency, and unit
select 
	movie_id,title,release_year,imdb_rating,studio,budget,revenue,
    'Millions' as unit,
    currency,
    round(
		(case
			when lower(unit) ='thousands' then (revenue-budget)/1000
            when lower(unit) = 'billions' then (revenue-budget)*1000
            else (revenue-budget)
        end),1
    ) as Profit
    from movies
    join financials
    using (movie_id)
    where language_id = '1'
    order by Profit desc;