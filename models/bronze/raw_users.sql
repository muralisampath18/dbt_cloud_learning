
{{ config(
    schema='bronze',
    materialized='table',
    alias ='dbt_raw_users'
) }}

select *
from {{source('landing','users')}}