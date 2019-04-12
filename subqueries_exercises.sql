
select * from employees where emp_no = '101010';


select first_name
from employees
where hire_date in
      (select hire_date from employees where emp_no = '101010');


select title from titles
where emp_no in(
  select emp_no from employees where first_name = 'Aamod'
  );

select first_name, last_name from employees
where emp_no in(
  select emp_no from dept_manager where gender = 'f' and to_date > curdate()
        );


select dept_name from departments
where dept_no in (
  select dept_no from dept_manager where emp_no in(
    select emp_no from employees where gender = 'f'and to_date > curdate()
    )
  );

select first_name, last_name from employees where emp_no in (
  select emp_no from salaries where salary = (select max(salary) from salaries)
);

select emp_no, max(salary) from salaries;

