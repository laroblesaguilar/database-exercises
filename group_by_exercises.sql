Select distinct title from titles;

SELECT first_name, last_name, count(last_name) as count
FROM employees
where last_name like 'e%' and last_name like '%e'
group by last_name, first_name;

Select last_name, count(last_name) as count
from employees
where last_name like '%q%' and last_name not like '%qu%'
group by last_name
order by count;


SELECT count(gender) as count, gender
from employees
WHERE first_name in ('Irena', 'Vidya', 'Maya')
group by gender;