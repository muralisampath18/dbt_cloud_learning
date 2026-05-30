
{{ config(
    schema='bronze',
    materialized='table',
    alias ='dbt_raw_products'
) }}

select *
from {{source('landing','products')}}