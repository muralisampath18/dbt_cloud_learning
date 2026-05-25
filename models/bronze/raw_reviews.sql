
{{ config(
    schema='bronze',
    materialized='table',
    alias ='dbt_raw_reviews'
) }}

select *
from {{source('landing','reviews')}}