use employees;
SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees as e
       JOIN dept_emp as de
            ON de.emp_no = e.emp_no
       JOIN departments as d
            ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01'
  AND e.emp_no = 10001;



SELECT d.dept_name, concat(first_name, ' ', last_name) as department_manager
FROM employees as e
       JOIN dept_manager as de
            ON de.emp_no = e.emp_no
       JOIN departments as d
            ON d.dept_no = de.dept_no
where to_date > curdate()
order by dept_name;


SELECT d.dept_name, concat(first_name, ' ', last_name) as Manager_name
FROM employees as e
       join dept_manager as de
            ON de.emp_no = e.emp_no
       JOIN departments as d
            ON d.dept_no = de.dept_no
where e.gender = 'f'
  and to_date > curdate();



SELECT d.dept_name, concat(first_name, ' ', last_name) as name, salary
FROM employees as e
       JOIN dept_manager de
            ON de.emp_no = e.emp_no
       JOIN departments as d
            ON d.dept_no = de.dept_no
       JOIN salaries s on e.emp_no = s.emp_no
where s.to_date > curdate()
  and de.to_date > curdate()
order by dept_name;