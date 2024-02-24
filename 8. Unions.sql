-- UNIONS

select *
from employee_demographics;

select first_name, last_name
from employee_demographics
union
select first_name, last_name
from employee_salary;

select age, gender
from employee_demographics
union
select first_name, last_name
from employee_salary;
-- this one is not good practice

select first_name, last_name
from employee_demographics
union distinct
select first_name, last_name
from employee_salary;
-- distinct reomve all the duplicates

select first_name, last_name
from employee_demographics
union all
select first_name, last_name
from employee_salary;
-- ALL includes duplicate value this gives all values from data

select first_name, last_name, 'old'
from employee_demographics
where age >50;

select first_name, last_name, 'old' as label
from employee_demographics
where age >50;

select first_name, last_name, 'old' as label
from employee_demographics
where age >50
union
select first_name, last_name, 'Highly Paid Emplyee' as label
from employee_salary
where salary > 70000;


select first_name, last_name, 'old Man' as label
from employee_demographics
where age >40 and gender = 'Male'
union
select first_name, last_name, 'old Lady' as label
from employee_demographics
where age >40 and gender = 'Female'
union
select first_name, last_name, 'Highly Paid Emplyee' as label
from employee_salary
where salary > 70000;

select first_name, last_name, 'old Man' as label
from employee_demographics
where age >40 and gender = 'Male'
union
select first_name, last_name, 'old Lady' as label
from employee_demographics
where age >40 and gender = 'Female'
union
select first_name, last_name, 'Highly Paid Emplyee' as label
from employee_salary
where salary > 70000
order by first_name, last_name;



