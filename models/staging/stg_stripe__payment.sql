WITH src_payments AS (
  SELECT
    *
  FROM
    {{ ref('src_stripe__payment') }}
),
final as (
    select
    ID, "orderID" order_id, "paymentMethod" payment_method, "AMOUNT" payment_amount
FROM 
src_payments
)
select * from final