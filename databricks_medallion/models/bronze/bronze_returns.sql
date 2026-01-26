{{ config(
    alias='returns'
) }}

SELECT * 
FROM {{source('source','fact_returns')}}