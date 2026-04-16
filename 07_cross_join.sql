select
	*,
    concat(name," - ",variant_name) as full_name,
    (price+variant_price) as total_price
    from items
    cross join variants;