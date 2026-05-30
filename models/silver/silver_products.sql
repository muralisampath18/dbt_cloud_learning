{{ config(
    schema='silver',
    materialized='table',
    alias ='dbt_silver_products'
) }}

SELECT
    id,
    created_at,
    title as product_name,
    category,
    ean,
    vendor,
    price
FROM
{{ ref('raw_products') }}