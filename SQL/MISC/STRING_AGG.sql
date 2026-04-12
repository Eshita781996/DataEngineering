with testcase as ( select 1 as number union all select 2 as number union all  select 3 as number )

select string_agg(number,',') from testcase;