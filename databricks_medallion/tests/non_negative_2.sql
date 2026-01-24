-- just experimented another way to write same test case

WITH base_table AS (
SELECT 
*
FROM {{ref('bronze_sales')}} --jinja template to refer table 
)
SELECT * FROM base_table
WHERE gross_amount < 0 AND net_amount < 0