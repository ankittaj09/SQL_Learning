-- 1. How many movies were released between 2015 and 2022
select * from movies where release_year between 2015 and 2022; 

-- 2. Print the max and min movie release year
select 
	min(release_year),
    max(release_year)
from movies;
		
-- 3. Print each year along with the number of movies released in that year, starting from the most recent year
select 
	release_year as Released,
    count(*) as Count
from movies
group by release_year
order by release_year desc; 