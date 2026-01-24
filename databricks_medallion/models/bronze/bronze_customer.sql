{{ config(
    alias='customer'
) }}

SELECT * 
FROM {{source('source','dim_customer')}}  