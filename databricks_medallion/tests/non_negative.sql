SELECT 
*
FROM {{ref('bronze_sales')}} --jinja template to refer table 
WHERE gross_amount < 0 AND net_amount < 0