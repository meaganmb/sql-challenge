-- List the following details of each employee: employee number, last name, first name, sex, and salary.
select A.emp_no,
A.last_name,
A.first_name,
A.sex,
B.salary
from employees as A
left join salaries as B ON
A.emp_no = B.emp_no;

-- List first name, last name, and hire date for employees who were hired in 1986.
select first_name,
last_name,
hire_date
from employees
where hire_date between '1986-01-01' and '1986-12-31';

-- List the manager of each department with the following information: department number, department name,
-- the manager's employee number, last name, first name.
select A.dept_no,
B.dept_name,
A.emp_no,
E.last_name,
E.first_name
from dept_manager as A
inner join departments as B ON
A.dept_no = B.dept_no
inner join employees as E ON
A.emp_no = E.emp_no;

-- List the department of each employee with the following information: employee number, last name,
-- first name, and department name.

