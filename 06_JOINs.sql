-- INNER JOIN -> Intersection of set
select 
	movies.movie_id,title,budget,revenue,unit,currency
    from movies
    join financials
    on movies.movie_id = financials.movie_id;
    
-- abbreviation form
 select 
	m.movie_id,title,budget,revenue,unit,currency
    from movies m
    join financials f
    on m.movie_id = f.movie_id;

-- LEFT JOIN -> keep all the record of table which specified in from clause
select 
	m.movie_id,title,budget,revenue,unit,currency
    from movies m
    left join financials f
    on m.movie_id = f.movie_id;
    
-- RIGHT JOIN -> keep all the record of table which specified in join clause
select 
	m.movie_id,title,budget,revenue,unit,currency
    from movies m
    right join financials f
    on m.movie_id = f.movie_id;
    
-- FULL JOIN -> keep all the record of both table in join and from clause its like union of set
select 
	m.movie_id,title,budget,revenue,unit,currency
    from movies m
    left join financials f
    on m.movie_id = f.movie_id
    
union

select 
	m.movie_id,title,budget,revenue,unit,currency
    from movies m
    right join financials f
    on m.movie_id = f.movie_id;
    
-- USING Clause - if joining column name is same
select 
	movie_id,title,budget,revenue,unit,currency
    from movies m
    join financials f
    using (movie_id); 

-- JOIN using multiple column syntax
select 
	m.movie_id,title,budget,revenue,unit,currency
    from movies m
    join financials f
    on m.movie_id = f.movie_id and m.col_name=f.col_name; 