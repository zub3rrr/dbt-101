{%- set inc_flag = 1 -%}
{%- set last_date = 3 -%}
{%- set selected_columns = ["sales_id","date_sk","unit_price","gross_amount"] -%}

SELECT 
    {% for i in selected_columns %}
        {{ i }}{% if not loop.last %},{% endif %}
    {% endfor %}
FROM {{ ref('bronze_sales') }}
{% if inc_flag == 1 %}
    WHERE date_sk > {{ last_date }}
{% endif %}
