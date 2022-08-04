drop schema analytics.dbt;
grant create schema on database analytics to role transform_role;
grant usage on all schemas in database analytics to role transform_role;
grant usage on future schemas in database analytics to role transform_role;
grant select on all tables in database analytics to role transform_role;
grant select on future tables in database analytics to role transform_role;
grant select on all views in database analytics to role transform_role;
grant select on future views in database analytics to role transform_role;
