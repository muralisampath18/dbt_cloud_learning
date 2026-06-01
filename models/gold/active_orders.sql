{{ config(
    schema='gold',
    materialized='table',
    alias ='dbt_active_orders'
) }}

select 
id,
user_id,
product_id,
quantity,
{{round('unit_price',3)}} as unit_price
from {{ref("orders_snapshot")}}
where dbt_valid_to is null