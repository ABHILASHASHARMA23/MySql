-- WHERE CLAUSE

select *
from employee_salary
where first_name = 'Leslie';

select *
from employee_salary
where salary >= 50000;

select *
from employee_demographics
where gender = 'female';

select *
from employee_demographics
where gender != 'female';

select *
from employee_demographics
where birth_date > '1985-01-01';


-- LOGICAL OPERATORS :- AND OR NOT

select *
from employee_demographics
where birth_date > '1985-01-01'
AND gender = 'male';

select *
from employee_demographics
where birth_date > '1985-01-01'
OR gender = 'male';

select *
from employee_demographics
where birth_date > '1985-01-01'
OR NOT gender = 'male';

select *
from employee_demographics
where first_name = 'Leslie' AND age = 44;

select *
from employee_demographics
where (first_name = 'Leslie' AND age = 44) OR age> 55;


-- LIKE STATEMENT :-
--  Special character :-   % and _
-- % = means anything
-- _ = means specific value

select *
from employee_demographics
where first_name LIKE 'jer%';

select *
from employee_demographics
where first_name LIKE '%er%';

select *
from employee_demographics
where first_name LIKE 'a%';

select *
from employee_demographics
where first_name LIKE 'a__';

select *
from employee_demographics
where first_name LIKE 'a___';

select *
from employee_demographics
where first_name LIKE 'a___%';

select *
from employee_demographics
where birth_date LIKE '1989%';