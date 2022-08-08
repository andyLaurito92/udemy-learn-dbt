
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table', alias='first_model', schema='andy_test', database='testing_dbt') }}

with source_data as (
    select 1 as id, 'Ushuaia' as state, '2020-02-01 00:00:00.000'::timestamp as updated_at
    union all
    select null as id, 'Catamarca' as state, '2020-01-01 00:20:00.000'::timestamp as updated_at
    union all
    select 3 as id, 'Rio Negro' as state, '2020-02-01 01:20:00.000'::timestamp as updated_at
)

select *
from source_data

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
