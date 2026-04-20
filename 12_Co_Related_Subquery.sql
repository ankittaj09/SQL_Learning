# select the actor_id,actor name and the total number of movie they acted insert in 
select * from actors;

-- explain analyze
select 
	ma.actor_id,a.name,
    count(movie_id) as movie_count
    from movie_actor ma
    right join actors a
    on ma.actor_id = a.actor_id
    group by ma.actor_id
    order by movie_count desc;

#Co-Related Subquery
-- explain analyze
select 
	actor_id,
    name,
    (select count(*) from movie_actor where actor_id = actors.actor_id) as movies_count
    from actors
    order by movies_count desc;

#Better and Simpler Approach
-- explain analyze
SELECT 
    a.actor_id,
    a.name,
    COUNT(ma.movie_id) AS movies_count
FROM actors a
LEFT JOIN movie_actor ma
    ON a.actor_id = ma.actor_id
GROUP BY a.actor_id, a.name
ORDER BY movies_count DESC;
    
    