-- As a product owner, I want to generate an individual product sales (aggregated on a monthly basis at the product code level) for Croma India customer for FY=2021 
-- so that I can track individual product analytics on it in excel.
-- The report should have the following fields,

	-- Month
	-- Product Name
	-- Variant
	-- Sold Quantity
	-- Gross Price Per Item
	-- Gross Price Total
    
    -- user-defined functions
	-- are the functions which user defined for reusuability in functions bar ,its like any other function
		-- example
             -- fiscal_year and fiscal_quarter

SELECT 
	* 
FROM fact_sales_monthly 
where customer_code = 90002002
and get_fiscal_year(date) = 2021

order by date;
    
 