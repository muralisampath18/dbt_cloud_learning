{% snapshot orders_snapshot %}

{{
  config(
    target_schema='dbt_silver',
    unique_key='id',
    strategy='check',
    check_cols=['id', 'user_id', 'product_id', 'quantity', 'created_at','unit_price']
  )
}}

select *
from {{ref("raw_orders")}}

{% endsnapshot %}