select * from (select *,sum(cost) over(order by cost asc ROWS BETWEEN 
UNBOUNDED PRECEDING AND CURRENT ROW)
 running_cost from employee) a where running_cost<=70