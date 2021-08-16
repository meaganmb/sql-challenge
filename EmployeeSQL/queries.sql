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
select A.emp_no,
E.last_name,
E.first_name,
D.dept_name
from departments as D
inner join dept_emp as A ON
D.dept_no = A.dept_no
inner join employees as E ON
A.emp_no = E.emp_no;

-- List first name, last name, and sex for employees whose first name is "Hercules"
-- and last names begin with "B."
select first_name,
last_name,
sex
from employees
where first_name = 'Hercules'
	and last_name like 'B%';
	
-- List all employees in the Sales department, including their employee number, last name,
-- first name, and department name.
select A.emp_no,
E.last_name,
E.first_name,
D.dept_name
from departments as D
inner join dept_emp as A ON
D.dept_no = A.dept_no
inner join employees as E ON
A.emp_no = E.emp_no
where D.dept_name = 'Sales';

-- List all employees in the Sales and Development departments, including their employee number,
-- last name, first name, and department name
select A.emp_no,
E.last_name,
E.first_name,
D.dept_name
from departments as D
inner join dept_emp as A ON
D.dept_no = A.dept_no
inner join employees as E ON
A.emp_no = E.emp_no
where D.dept_name = 'Sales'
	or D.dept_name = 'Development';

-- In descending order, list the frequency count of employee last names, i.e.,
-- how many employees share each last name.
select last_name, COUNT(last_name)
from employees
group by last_name
order by COUNT(last_name) DESC;
