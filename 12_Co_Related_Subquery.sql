# select the actor_id,actor name and the total number of movie they acted insert in 
select * from actors;

-- explain analyze
select 
	ma.actor_id,a.name,
    count(movie_id) as movie_count
    from movie_actor ma
    join actors a
    on ma.actor_id = a.actor_id
    group by ma.actor_id
    order by movie_count desc;


    
    