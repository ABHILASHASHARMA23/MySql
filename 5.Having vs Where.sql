-- HAVING VS WHERE

select gender, avg(age)
from employee_demographics
group by gender;

select gender, avg(age)
from employee_demographics
group by gender
having avg(age) > 40;

select occupation, avg(Salary)
from employee_salary
group by occupation;

select occupation, avg(Salary)
from employee_salary
group by occupation
having avg(salary) >=70000;

select occupation, avg(Salary)
from employee_salary
where occupation like '%manager%'
group by occupation;

select occupation, avg(Salary)
from employee_salary
where occupation like '%manager%'
group by occupation
having avg(salary) > 75000;

-- we are going to use where clause most of the time