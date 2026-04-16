-- MIN AND MAX Functions
select min(imdb_rating) from movies where industry = 'bollywood';
select max(imdb_rating) from movies where industry = 'bollywood';

-- AVG Function
select avg(imdb_rating) from movies where studio = 'marvel studios';
select round(avg(imdb_rating),2) from movies where studio = 'marvel studios';

-- Custom Heading 
select round(avg(imdb_rating),2) as Avg_Rating from movies where studio = 'marvel studios';

select min(imdb_rating) as Min_Rating,
	   max(imdb_rating) as Max_Rating,
       round(avg(imdb_rating),2) as Avg_Rating
from movies
where studio = 'marvel studios';
 
-- GROUP BY
select industry as Industry,count(*) as Count
from movies
group by industry ;

select studio as Studio,count(*) as Count
from movies
group by studio
order by count desc;      

select industry,
	   count(industry) as Count,
       round(avg(imdb_rating),1) as Avg_Rating
from movies
group by industry;

select studio,
	   count(studio) as Count,
       round(avg(imdb_rating),1) as Avg_Rating
from movies
where studio != ""
group by studio
order by Avg_Rating desc;


	