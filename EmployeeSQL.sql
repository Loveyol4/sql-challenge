--List the employee number, last name, first name, sex, and salary of each employee.
select employees.emp_no, 
last_name,
first_name,
sex, 
salary
from employees
join salaries 
on salaries.emp_no = employees.emp_no;

--List the first name, last name, and hire date for the employees who were hired in 1986.
select first_name, last_name, hire_date
from employees
where extract (year from hire_date) = 1986;

---List the manager of each department along with their department number, department name,employee number, last name, and first name.

select d.dept_no,
d.dept_name, 
dm.emp_no,
e.last_name, 
e.first_name
from departments d
join dept_manager dm 
on dm.dept_no= d.dept_no
join employees e
on e.emp_no = dm.emp_no;

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

select d.dept_no,
de.emp_no,
e.last_name, 
e.first_name,
d.dept_name
from departments d
join dept_emp de 
on de.dept_no= d.dept_no
join employees e
on e.emp_no = de.emp_no;

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

select first_name, last_name, sex
from employees
where first_name = 'Hercules' and last_name LIKE 'B%';

--List each employee in the Sales department, including their employee number, last name, and first name.

select d.dept_name,
de.emp_no,
e.last_name, 
e.first_name
from departments d
join dept_emp de 
on de.dept_no= d.dept_no
join employees e
on e.emp_no = de.emp_no
where d.dept_name= 'Sales'

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

select d.dept_name,
de.emp_no,
e.last_name, 
e.first_name
from departments d
join dept_emp de 
on de.dept_no= d.dept_no
join employees e
on e.emp_no = de.emp_no
where d.dept_name IN('Saales', 'Development');

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

select last_name, COUNT(last_name) AS frequency 
from employees
Group by last_name
order by frequency DESC; 







