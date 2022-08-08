{{ config(materialized='table') }}

WITH sample_orders as (
     SELECT * FROM {{ source('sample', 'orders') }}
)

SELECT 
    o_orderdate as date,
    sum(o_totalprice) as sales_amount
FROM sample_orders
GROUP BY 
    o_orderdate
