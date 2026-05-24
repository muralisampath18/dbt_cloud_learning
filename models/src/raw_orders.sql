
{{ config(
    schema='bronze',
    materialized='table',
    alias ='dbt_raw_orders'
) }}

select *
from dcp_dev_eu.dcp_bronze.orders