{{ config(
    schema='silver',
    materialized='table',
    alias ='dbt_silver_orders'
) }}

select 
    id,
    date(date_format(created_at, 'yyyy-MM-dd')) as order_date,
    user_id,
    product_id,
    quantity,
    unit_price,
    quantity * unit_price as order_amount
from {{ref("raw_orders")}}