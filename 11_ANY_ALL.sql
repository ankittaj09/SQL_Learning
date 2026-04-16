#select actors who acted in any of these movies
#(101,110,121) 
-- MIN/MAX = numeric shortcut
-- ANY/ALL = compare against set logic
-- | Operator | Equivalent |
-- | -------- | ---------- |
-- | `> ALL`  | `> MAX()`  |
-- | `< ALL`  | `< MIN()`  |
-- | `> ANY`  | `> MIN()`  |
-- | `< ANY`  | `< MAX()`  |

select * 
	from actors
    where actor_id in
	(select actor_id from movie_actor where movie_id in (101,110,121));
    
select * 
	from actors
    where actor_id = any
	(select actor_id from movie_actor where movie_id in (101,110,121));
    
# select all the movies whose rating greater than *any* of the marvel movies rating
select * from movies where imdb_rating > ALL(
select imdb_rating from movies where studio = 'Marvel Studios');

select * from movies where imdb_rating > (
select max(imdb_rating) from movies where studio = 'Marvel Studios');

select * from movies where imdb_rating < ANY (
select imdb_rating from movies where studio = 'Marvel Studios');

select * from movies where imdb_rating < (
select max(imdb_rating) from movies where studio = 'Marvel Studios');

select * from movies where imdb_rating > ANY (
select imdb_rating from movies where studio = 'Marvel Studios');

select * from movies where imdb_rating > (
select min(imdb_rating) from movies where studio = 'Marvel Studios');


select * from movies where imdb_rating > some(
select imdb_rating from movies where studio = 'Marvel Studios');

-- MIN/MAX is a shortcut for simple comparisons, 
-- but ANY and ALL are more flexible because they compare a value against an entire set using different operators 
-- and make query logic more expressive.
