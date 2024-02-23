-- GROUP BY

select *
from employee_demographics;

select gender
from employee_demographics
group by gender;

select gender, avg(age)
from employee_demographics
group by gender;

select gender, avg(age), max(age)
from employee_demographics
group by gender;

select gender, avg(age), max(age), min(age), count(age)
from employee_demographics
group by gender;

select occupation
from employee_salary
group by occupation;

select occupation, salary
from employee_salary
group by occupation, salary;

-- ORDER BY

select *
from employee_demographics
order by first_name;
-- by defalut ASC applied automatically

select *
from employee_demographics
order by first_name ASC;

select *
from employee_demographics
order by first_name DESC;

select *
from employee_demographics
order by gender;

select *
from employee_demographics
order by gender, age DESC;

select *
from employee_demographics
order by gender, age;

select *
from employee_demographics
order by 5, 4;
-- here 5 and 4 are column number in the table but this method is not recommended
