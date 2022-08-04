{{ config(materialized='table') }}

SELECT 
    o_orderdate as date,
    sum(o_totalprice) as sales_amount
FROM "SNOWFLAKE_SAMPLE_DATA"."TPCH_SF1"."ORDERS"
GROUP BY 
    o_orderdate
