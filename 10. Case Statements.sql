-- CASE STATEMENTS

select *
from employee_demographics;

select first_name,
last_name,
age,
case
  when age <=30 then'Young'end
from employee_demographics;

select first_name,
last_name,
age,
case
  when age <=30 then'Young'
  when age between 31 and 50 then 'Old'
  when age >= 50 then "on death's Door"
end as age_Bracket
from employee_demographics;


-- Pay Increase and Bonus
-- < 50000 = 5%
-- > 50000 = 7%
-- Finance = 10% binus

select *
from employee_salary;

select first_name, last_name, salary,
case
   when salary < 50000 then salary + (salary * 1.05)
   when salary > 50000 then salary + (salary * 1.07)
end as new_salary
from employee_salary;

-- Bonus
select first_name, last_name, salary,
case
   when salary < 50000 then salary + (salary * 1.05)
   when salary > 50000 then salary + (salary * 1.07)
end as new_salary,
case
  when dept_id = 6 then salary * .10
end as bonus
from employee_salary;

select *
from employee_salary;
select *
from parks_departments;













