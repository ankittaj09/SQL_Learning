# print all the years where more than 2 movies were released
# In the where clause if i am using column that column doesn't have to be in my select statement
# But in having,whatever column you are referringh to has to be there in select statement
# Having is used mainly with group by operation but it can be used without group by too.
#  1. FROM
--    JOIN
-- 2. WHERE
-- 3. GROUP BY
-- 4. HAVING
-- 5. SELECT
-- 6. DISTINCT
-- 7. ORDER BY
-- 8. LIMIT / TOP

select 
	release_year,count(*) as count
from movies
group by release_year
having count>2
;