{{ config(
    alias='aggregated_product_category_sales'
) }}

SELECT category , 
        ROUND(sum(total_amount),2) as total_amount,
        max(discount_amount) as max_discount ,
        min(discount_amount) as min_discount 
FROM {{ref("product_category_sales")}}
GROUP BY category