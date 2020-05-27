WITH src_payment as(
    SELECT * FROM
    {{ source(
            'stripe',
            'stripe_payment'
        ) }}
)
select * from src_payment