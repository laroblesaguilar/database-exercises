SELECT *
from employees
WHERE first_name in ('Irena', 'Vidya', 'Maya')
order by first_name , last_name;

SELECT *
from employees
WHERE first_name in ('Irena', 'Vidya', 'Maya')
order by last_name, first_name;


SELECT *
FROM employees
WHERE last_name LIKE '%e%'
order by emp_no;


SELECT *
FROM employees
WHERE last_name LIKE 'E%';

SELECT *
FROM employees
WHERE hire_date like '199%';

SELECT *
from employees
where birth_date like '%-12-25';

SELECT *
from employees
WHERE last_name like '%q%';

SELECT *
from employees
WHERE gender = 'M'
  AND (first_name = 'Irena'
  or first_name = 'Vidya'
  or first_name = 'Maya');

SELECT emp_no, birth_date, concat(first_name, ' ', last_name) AS 'full_name', gender, hire_date
FROM employees
where last_name like 'E%'
   OR last_name like '%e';


SELECT datediff(curdate(), hire_date) as 'days_with_company'
from employees
where hire_date like '199%'
  AND birth_date
  like '%-12-25'
order by birth_date, hire_date desc ;

SELECT *
from employees
where last_name like '%q%'
  and last_name not like '%qu%';


