-- Select a movie with highest imdb_rating 
-- CASE1-Return a Single Value
select 
	* 
    from movies
    where imdb_rating = (
		select max(imdb_rating) from movies
    );
    
select 
	* 
    from movies
    where imdb_rating = (
		select min(imdb_rating) from movies
    );
-- CASE2- Return a list of values
select 
	* 
    from movies
    where imdb_rating in (
		(select max(imdb_rating) from movies),
        (select min(imdb_rating) from movies)
        );
-- CASE3- Return a table
select * from 
	(select 
		name,
		year(curdate())-birth_year as Age
		from actors) as actor_age
        where age between 60 and 100
        order by age desc;
 