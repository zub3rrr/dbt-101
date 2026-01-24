{{ config(
    alias='sales'
) }}

SELECT * 
FROM {{source('source','fact_sales')}}  