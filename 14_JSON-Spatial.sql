SELECT * FROM superstore_db.items;
#JSON
SELECT 
	* 
FROM superstore_db.items
where properties->"$.gluten_free"=0;

SELECT 
	* 
FROM superstore_db.items
where isnull(properties->"$.gluten_free");

select
	*
from superstore_db.items
where json_extract(properties,"$.color")="blue";

#Spatial
select * from sakila.address;

select *,st_astext(location) from sakila.address;
