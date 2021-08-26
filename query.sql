select * from departments

SELECT employees.emp_no,
	employees.last_name,
	employees.first_name,
	employees.sex,
	salaries.salary
FROM employees
RIGHT JOIN salaries ON employees.emp_no=salaries.emp_no;

SELECT employees.hire_date FROM employees
WHERE employees.hire_date>='01/01/1986' AND employees.hire_date<='12/31/1986';

SELECT dept_manager.emp_no,
	dept_manager.dept_no,
	departments.dept_no,
	departments.dept_name,
 	employees.last_name,
	employees.first_name
FROM dept_manager
LEFT JOIN departments ON dept_manager.dept_no=departments.dept_no
LEFT JOIN employees ON dept_manager.emp_no=employees.emp_no;

SELECT employees.emp_no,
	employees.last_name,
	employees.first_name,
	dept_emp.emp_no,
	dept_emp.dept_no,
	departments.dept_no,
	departments.dept_name
FROM employees
LEFT JOIN dept_emp ON employees.emp_no=dept_emp.emp_no
LEFT JOIN departments ON dept_emp.dept_no=departments.dept_no;

SELECT employees.first_name,
	employees.last_name,
	employees.sex
FROM employees 
WHERE employees.first_name='Hercules' AND employees.last_name LIKE 'B%';

SELECT employees.emp_no,
	employees.last_name,
	employees.first_name,
	dept_emp.dept_no,
	departments.dept_name
FROM employees
LEFT JOIN dept_emp ON dept_emp.emp_no=employees.emp_no
LEFT JOIN departments ON dept_emp.dept_no=departments.dept_no
WHERE departments.dept_name='Sales';

SELECT employees.emp_no,
	employees.last_name,
	employees.first_name,
	dept_emp.dept_no,
	departments.dept_name
FROM employees 
LEFT JOIN dept_emp ON dept_emp.emp_no=employees.emp_no
LEFT JOIN departments ON dept_emp.dept_no=departments.dept_no
WHERE departments.dept_name='Sales' OR  departments.dept_name='Development';

SELECT last_name, COUNT(last_name) FROM employees GROUP BY last_name
ORDER BY COUNT(last_name)DESC;
