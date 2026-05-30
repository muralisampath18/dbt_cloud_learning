
{{ config(
    schema='bronze',
    materialized='incremental',
    unique_key = ['id'],
    on_schema_changes = 'fail',
    invalidate_hard_deletes= True,
    alias ='dbt_raw_orders_incr' 
) }}

select *
from {{source('landing','orders_incremental')}}


{% if is_incremental() %}
where created_at > (select coalesce(max(created_at),'1900-01-01') from {{ this }})
{% endif %}