/* Data Analysis - 
1. List the following details of each employee: employee number, last name, first name, sex, and salary.
*/

select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees as e
inner join salaries s on 
e.emp_no = s.emp_no;

/* Data Analysis - 
 2. List first name, last name, and hire date for employees who were hired in 1986.
*/

select emp_no, birth_date, first_name, last_name, sex, hire_date
from employees as e
where hire_date >= '1985-12-31'
and hire_date < '1987-01-01';


/* Data Analysis - 
3. List the manager of each department with the following information: 
department number, department name, the manager's employee number, last name, first name.
*/
select d.dept_no, d.dept_name, dm.emp_no,e.last_name, e.first_name
from dept_manager as dm
left join departments as d on
dm.dept_no=d.dept_no
left join employees as e on
dm.emp_no=e.emp_no
order by emp_no;

/* Data Analysis - 
4. List the department of each employee with the following information: 
employee number, last name, first name, and department name.
*/

select e.emp_no,e.last_name,e.first_name,dp.dept_name
from employees as e
inner join dept_emp de on 
de.emp_no = e.emp_no
inner join departments dp on 
dp.dept_no = de.dept_no;

/* Data Analysis - 
5. List first name, last name, and sex for employees whose 
first name is "Hercules" and last names begin with "B."
*/

select * from employees as e
where first_name = 'Hercules'
and last_name like 'B%';

/* Data Analysis - 
6. List all employees in the Sales department, including their employee number, 
last name, first name, and department name.
*/

select e.emp_no ,e.last_name,e.first_name,dp.dept_name
from employees as e
inner join dept_emp de on 
de.emp_no = e.emp_no
inner join departments dp on 
dp.dept_no = de.dept_no
where dp.dept_name = 'Sales';

/* Data Analysis - 
7. List all employees in the Sales and Development departments, 
including their employee number, last name, first name, and department name.
*/

select e.emp_no,e.last_name,e.first_name,dp.dept_name
from employees as e
inner join dept_emp de on 
de.emp_no = e.emp_no
inner join departments dp on 
dp.dept_no = de.dept_no
where dp.dept_name = 'Sales' or dp.dept_name = 'Development';

/* Data Analysis - 
8. In descending order, list the frequency count of employee last names, 
i.e., how many employees share each last name.
*/

select last_name,count(last_name)
from employees
group by last_name
order by count(last_name) desc;

