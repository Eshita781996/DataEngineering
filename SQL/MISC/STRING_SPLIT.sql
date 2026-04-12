with test as (select '1,2,3' as test_string )

select value from test cross apply string_split(test_string,',')