-- Calculated Columns and derived Columns 
SELECT
	*,year(curdate())-birth_year as Age 
    FROM actors
    order by Age desc;
    
-- IF & CASE Statement

select 
	*,
    if(currency = 'USD',revenue*90,revenue) as revenue_inr
    from financials; 

select 
	*,
    case
		when unit = "billions" then revenue*1000
        when unit = "thousands" then revenue/1000
        else revenue
    end as Revenue_Mln
    from financials;