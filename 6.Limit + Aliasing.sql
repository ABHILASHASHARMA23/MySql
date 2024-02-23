-- LIMIT & ALIASING

select *
from employee_demographics;

select *
from employee_demographics
limit 3;

select *
from employee_demographics
order by age DESC
limit 3;

select *
from employee_demographics
order by age DESC
limit 2, 1;


-- ALIASING :- Aliasing is just a way to change the name of the column for the most part and it can also be used in joins as well.

select gender, avg(age)
from employee_demographics
group by gender;

select gender, avg(age)
from employee_demographics
group by gender
having avg(age) > 40;

select gender, avg(age) as avg_age
from employee_demographics
group by gender
having avg_age > 40;
-- this will change the name of the column from avg(age) to avg_age.