WITH src_orders as(
    SELECT * FROM
    {{ source(
            'jaffle_shop',
            'js_orders'
        ) }}
)
select * from src_orders