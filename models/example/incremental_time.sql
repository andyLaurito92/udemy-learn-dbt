{{ config(materialized='incremental', unique_key='time_id')}}

SELECT to_time(concat(T_HOUR::varchar, ':', T_MINUTE, ':', T_SECOND)) as time_id
FROM "SNOWFLAKE_SAMPLE_DATA"."TPCDS_SF10TCL"."TIME_DIM"
WHERE time_id <= current_time()

{% if is_incremental() %}
 and time_id > (SELECT max(time_id) from {{ this }})
{% endif %}


