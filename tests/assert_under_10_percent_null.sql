SELECT
	SUM(case when id is null then 1 else 0 end) / COUNT(*) as total_null
FROM
	{{ ref('my_first_dbt_model') }}

HAVING SUM(case when id is null then 1 else 0 end) / COUNT(*) > .5
