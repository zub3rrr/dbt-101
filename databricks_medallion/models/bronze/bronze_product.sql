{{ config(
    alias='product'
) }}

SELECT * 
FROM {{source('source','dim_product')}}  