--1. Employees Who Cover All Required Skills
select e.emp_name from 
employees e join EmployeeSkills es on e.emp_id=es.emp_id 
join Skills s on s.skill_id=es.skill_id
group by e.emp_name 
having count(distinct s.skill_name) = (select count(*) from skills)


--2. Employees Missing Required Skills
SELECT 
    e.emp_id,
    r.skill AS missing_skill
FROM Employees e
CROSS JOIN RequiredSkills r
LEFT JOIN EmployeeSkills es
     ON es.emp_id = e.emp_id
     AND es.skill = r.skill
WHERE es.skill IS NULL;

--3. Minimum Employees Needed for Project
select e.emp_name from 
employees e join EmployeeSkills es on e.emp_id=es.emp_id 
join Skills s on s.skill_id=es.skill_id
group by e.emp_name 
having count(distinct s.skill_name) = (select count(*) from skills)


--4. Find Pairs of Employees Covering All Skills
select  e1.emp_name,e2.emp_name,count(distinct s.skill_name) skill_count from employees e1 
join employees e2 on e1.emp_id<e2.emp_id
join EmployeeSkills es on es.emp_id in (e1.emp_id,e2.emp_id)
join skills s on es.skill_id=s.skill_id
group by 1,2
having count(distinct s.skill_name) = (select count(*) from skills)
order by 3 desc



--add score based on pwer


with skillscore as (select *,
power(2,row_number() over(order by skill_id)) skill_score 
from skills),

EmployeeSkillsScore as (select e.*,ss.skill_name,ss.skill_id
,ss.skill_score
from EmployeeSkills es join Employees e
on e.emp_id=es.emp_id join skillscore ss 
on ss.skill_id=es.skill_id),

employeetotalscore as
(select emp_id,emp_name,sum(skill_score) total_score
from EmployeeSkillsScore group by emp_id,emp_name ),

target as (select sum(ss.skill_score) target_score 
from ProjectSkills p join skillscore ss
on p.skill_id=ss.skill_id),

groupemployeesbyscore as
(select ets.emp_id,cast(ets.emp_name as varchar) as team,
ets.total_score,1 as team_size
from employeetotalscore ets
union all
select e.emp_id,cast(concat(ets.team,',',e.emp_name) as varchar),
ets.total_score+e.total_score as total_score,team_size+1 as team_size
from employeetotalscore e join groupemployeesbyscore ets
on e.emp_id>ets.emp_id 
)

select * from groupemployeesbyscore where total_score=
(select target_score from target) order by team_size ;
