{{ config(
    schema='silver',
    materialized='table',
    alias ='dbt_silver_users'
) }}

SELECT
    id,
    created_at,
    city,
    state,
    year(birth_date) as birth_year,
    source as sales_channel
FROM
{{ ref('raw_users') }}