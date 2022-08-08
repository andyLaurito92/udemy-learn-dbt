{{ config(materialized='table') }}

WITH sample_customer as (
     SELECT * FROM {{ source('sample', 'customer') }} 
),

sample_orders as (
     SELECT * FROM {{ source('sample', 'orders') }}
)

SELECT
c.c_custkey,
c.c_name,
c.c_nationkey as nation,
sum(o.o_totalprice) as total_order_price
FROM sample_customer c
LEFT JOIN sample_orders o
ON c.c_custkey = o.o_custkey
GROUP BY
c.c_custkey,
c.c_name,
c.c_nationkey
