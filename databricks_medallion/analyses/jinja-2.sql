{%- set skills = ["python","mysql","dbt","fivetran"] -%}

{%- for i in skills -%}
    {{ i }}
{%- endfor -%}

{% set new_line = "---------------------------------------------" %}
{{ new_line }}

{%- for j in skills -%}
    {{ j }}{% if not loop.last %}, {% endif %}
{%- endfor -%}
