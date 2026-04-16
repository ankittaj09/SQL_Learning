-- Print all movie titles and release year for all Marvel Studios movies. 
select title,release_year,studio from movies where studio like "%marvel studio%";

-- Print all movies that have Avenger in their name. 
select * from movies where title like "%avenger%";

-- Print the year when the movie "The Godfather" was released.
 select title,release_year from movies where title = "The Godfather";
 
 -- Print all distinct movie studios in the Bollywood industry.
  select distinct studio,industry from movies where industry = "bollywood" ;

