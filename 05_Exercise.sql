-- 1. Print profit % for all the movies 
select 
	movie_id,
    round( case
				when currency = "USD" then
					(case
						when lower(unit) = "billions" then revenue*1000
						when lower(unit) = "thousands" then revenue/1000
						else revenue
					end) * 93
				else 
					case
						when lower(unit) = "billions" then revenue*1000
						when lower(unit) = "thousands" then revenue/1000
						else revenue
					end
			end,2) as Revenue_Mln_Inr,
            
	round( case
				when currency = "USD" then
					(case
						when lower(unit) = "billions" then budget*1000
						when lower(unit) = "thousands" then budget/1000
						else budget
					end) * 93
				else 
					case
						when lower(unit) = "billions" then budget*1000
						when lower(unit) = "thousands" then budget/1000
						else budget
					end
		end,2) as Budget_Mln_Inr,
        "Millions" as Unit,
        "INR" as Currency,
        round(
				(
					(case
						when currency = "USD" then
							(case
								when lower(unit) = "billions" then revenue*1000
								when lower(unit) = "thousands" then revenue/1000
								else revenue
							end) * 93
						else 
							case
								when lower(unit) = "billions" then revenue*1000
								when lower(unit) = "thousands" then revenue/1000
								else revenue
							end
					end)
            -
					(case
						when currency = "USD" then
							(case
								when lower(unit) = "billions" then budget*1000
								when lower(unit) = "thousands" then budget/1000
								else budget
							end) * 93
						else 
							case
								when lower(unit) = "billions" then budget*1000
								when lower(unit) = "thousands" then budget/1000
								else budget
							end
						end
					)
				)
            /
            (
				case
				when currency = "USD" then
					(case
						when lower(unit) = "billions" then budget*1000
						when lower(unit) = "thousands" then budget/1000
						else budget
					end) * 93
				else 
					case
						when lower(unit) = "billions" then budget*1000
						when lower(unit) = "thousands" then budget/1000
						else budget
					end
			end
            )
	*100,2) as Profit_pct
from financials
order by Profit_pct desc;
