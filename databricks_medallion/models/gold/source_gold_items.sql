{{ config(
    alias='dedup_item'
) }}

WITH base_table AS (
SELECT * , ROW_NUMBER() OVER(PARTITION BY id ORDER BY update_date DESC) as dedup_key --- by this only latest record will be fetched 'DESC is important to add'
FROM {{ source('source', 'items') }} -- any new update which will be done in source. 
)
SELECT id , name , category , update_date
FROM base_table
WHERE dedup_key = 1