select 	
	m.movie_id,title,group_concat(a.name separator " , ") as Actors_Name
	from movies m
    join movie_actor ma
    on m.movie_id=ma.movie_id
    join actors a
    on ma.actor_id=a.actor_id
    group by m.movie_id;
    
select 	
	a.name,group_concat(m.title separator ",  ")
	from movies m
    join movie_actor ma
    on m.movie_id=ma.movie_id
    join actors a
    on ma.actor_id=a.actor_id
    group by a.name
    ;