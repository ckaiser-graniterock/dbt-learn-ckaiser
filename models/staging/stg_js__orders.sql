WITH src_orders AS (
  SELECT
    *
  FROM
    {{ ref('src_jaffle_shop__orders') }}
),
final as (

    select
        id as order_id,
        user_id as customer_id,
        order_date,
        status
    from src_orders

)
select * from final