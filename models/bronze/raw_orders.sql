
{{ config(
    schema='bronze',
    materialized='table',
    alias ='dbt_raw_orders',
    grants = {
        'select': 'dbt_user'
    },
    enabled = True
) }}

select *
from {{source('landing','orders')}}