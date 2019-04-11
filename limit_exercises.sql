SELECT DISTINCT title FROM titles;

SELECT DISTINCT last_name from employees
ORDER BY last_name desc
LIMIT 10;


SELECT first_name, last_name
from employees
where hire_date like '199%'
  AND birth_date
  like '%-12-25'
order by birth_date, hire_date desc
limit 5;



SELECT *
from employees
where hire_date like '199%'
  AND birth_date
  like '%-12-25'
order by birth_date, hire_date desc
limit 5 offset 45;