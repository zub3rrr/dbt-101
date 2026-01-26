SELECT 
    {{ multiply('quantity','unit_price') }} as result
FROM {{ ref("bronze_sales") }}