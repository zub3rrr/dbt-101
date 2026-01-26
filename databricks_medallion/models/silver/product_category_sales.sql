{{ config(
    alias='curated_product_category_sales'
) }}

WITH sales_table AS (
    SELECT sales_id,
    product_sk,
    {{ multiply('quantity','unit_price') }} as total_amount,
    discount_amount
    FROM {{ref('bronze_sales')}}
) , 
product_table AS (
    SELECT product_sk , 
    product_code , 
    category
    FROM {{ ref('bronze_product') }}
) 
SELECT category ,
        total_amount,
        discount_amount
FROM product_table as p
JOIN sales_table as s
ON p.product_sk = s.product_sk