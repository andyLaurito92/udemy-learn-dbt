WITH sample_customer as (
     SELECT * FROM {{ source('sample', 'customer') }}
)



SELECT * FROM sample_customer
