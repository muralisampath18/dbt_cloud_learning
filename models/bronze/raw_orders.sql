
{{ config(
    schema='bronze',
    materialized='table',
    alias ='dbt_raw_orders'
) }}

select *
from {{source('landing','orders')}}