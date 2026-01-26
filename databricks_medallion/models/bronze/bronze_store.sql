{{ config(
    alias='store'
) }}

SELECT * 
FROM {{source('source','dim_store')}}  