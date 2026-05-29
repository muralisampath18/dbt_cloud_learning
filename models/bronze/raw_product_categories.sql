{{ config(
    schema='bronze',
    materialized='table',
    alias ='dbt_raw_product_catagories'
) }}

select *
from {{ref("product_catagories")}}