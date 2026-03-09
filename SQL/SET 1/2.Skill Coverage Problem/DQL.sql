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