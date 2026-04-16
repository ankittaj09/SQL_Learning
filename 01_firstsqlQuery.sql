-- * means all the columns.
-- right click on database to set it as default to avoid use clause in every query.
SELECT * FROM moviesdb.movies;
select title,industry from moviesdb.movies;

use moviesdb;
select * from movies;

-- Text Query 

select * from movies where industry = 'bollywood';
select * from movies where industry = 'hollywood';
select count(*) from movies where industry = 'bollywood';
select count(*) from movies where industry = 'hollywood';
select distinct industry from movies;
-- wild card Search
select * from movies where title like "%thor%";
select * from movies where title like "%america%";
-- Null search
select * from movies where studio = "";



