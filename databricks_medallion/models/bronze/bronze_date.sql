{{ config(
    alias='date'
) }}

SELECT * 
FROM {{source('source','dim_date')}}  