# get all actorts whose age is b/w 70 and 85

with 
actors_age as(
	select
    name as actor_name,
    year(curdate())-birth_year as age
    from actors
)

select 
	actor_name,age 
    from actors_age
    where age between 60 and 100
    order by age desc;
-- scope of actor_age only till this statement
select * from actors_age; 
-- we can multiple CTE inside with


--

with 
actors_age(actor_name,age) as(
	select
    name as x ,
    year(curdate())-birth_year  as y
    from actors
)

select 
	actor_name,age 
    from actors_age
    where age between 60 and 100
    order by age desc; 

# movies that produced 500% profit or more and their rating was less than avg rating for all movies

select 
	*,(revenue-budget)*100/budget as Profit_Pct 
    from financials
    where (revenue-budget)*100/budget>500
    order by Profit_pct;
    
select 
	* 
    from movies
    where imdb_rating <(select 
	avg(imdb_rating) as Avg_rating 
    from movies)
    order by imdb_rating desc;

select 
	x.movie_id,
	y.title,
    y.imdb_rating,
    x.Profit_Pct
 from (select 
	*,(revenue-budget)*100/budget as Profit_Pct 
    from financials) x
 join (select 
	* 
    from movies
    where imdb_rating <(select 
	avg(imdb_rating) as Avg_rating 
    from movies)) y
 on x.movie_id = y.movie_id
 where Profit_Pct>500;
 
 #using CTE
 
 with
	x as (
		select 
			*,(revenue-budget)*100/budget as Profit_Pct 
			from financials
    ),
	y as (
		select 
			* 
			from movies
			where imdb_rating <(select avg(imdb_rating) from movies)
    )
    select 
		x.movie_id,y.title,y.imdb_rating,x.Profit_Pct
        from x
        join y
        on x.movie_id=y.movie_id
        where Profit_Pct>500
        order by Profit_Pct;
        
 