WITH payments AS (
  SELECT
    *
  FROM
    {{ ref('stg_stripe__payment') }}
),
orders AS (
  SELECT
    *
  FROM
    {{ ref('stg_js__orders') }}
),
final as (
SELECT
    o.order_id, o.customer_id, SUM(p.payment_amount) payment_amount_sum
    from payments p
    inner join orders o on o.order_id = p.order_id
  GROUP BY 1,2
)
select * from final