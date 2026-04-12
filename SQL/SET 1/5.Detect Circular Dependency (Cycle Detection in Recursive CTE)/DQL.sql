with dependency_path as
(select parent_task,child_task,parent_task as start_node,child_task as current_task,
cast(concat(parent_task,'->',child_task) as varchar) as path,0 as is_cycle
from dependencies union all

select d.parent_task,d.child_task,dc.start_node,d.child_task,
cast(concat(dc.path,'->',d.child_task) as varchar) as path,
case when dc.start_node=d.child_task then 1 else 0 end as is_cycle
from dependency_path dc join dependencies d on dc.parent_task=d.child_task
and dc.is_cycle=0
)

select * from dependency_path where is_cycle=1