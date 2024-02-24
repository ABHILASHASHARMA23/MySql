-- JOINS

select  * 
from employee_demographics;

select *
from employee_salary;

select *
from employee_demographics
inner join employee_salary
on employee_demographics.employee_id = employee_salary.employee_id;

select *
from employee_demographics as dem
inner join employee_salary as sal
on dem.employee_id = sal.employee_id;

select dem.employee_id, age, occupation
from employee_demographics as dem
inner join employee_salary as sal
on dem.employee_id = sal.employee_id;


-- OUTER JOINS

select *
from employee_demographics as dem
left join employee_salary as sal
on dem.employee_id = sal.employee_id;
-- for left join:- taking everything from the left table and then matches from the right table

select *
from employee_demographics as dem
right join employee_salary as sal
on dem.employee_id = sal.employee_id;
-- for right join:- taking everything from the right table and then matches from the left table


-- SELF JOIN

select * 
from employee_salary;

select *
from employee_salary emp1
join employee_salary emp2
on emp1.employee_id = emp2.employee_id;
-- gives exact same table twice

select *
from employee_salary emp1
join employee_salary emp2
on emp1.employee_id + 1 = emp2.employee_id;

select emp1.employee_id as emp_santa,
emp1.first_name as first_name_santa,
emp1.last_name as last_name_santa,
emp2.employee_id as emp_name,
emp2.first_name as first_name_emp,
emp2.last_name as last_name_emp
from employee_salary emp1
join employee_salary emp2
on emp1.employee_id + 1 = emp2.employee_id;

-- JOINING MULTIPLE TABLES TOGETHER

select *
from employee_demographics as dem
inner join employee_salary as sal
    on dem.employee_id = sal.employee_id
inner join parks_departments pd
    on sal.dept_id = pd.department_id;

SELECT * 
FROM parks_departments;




