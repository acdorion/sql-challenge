SELECT employees.emp_no, employees.first_name, employees.last_name, employees.sex, salaries.salary
FROM employees, salaries
WHERE employees.emp_no=salaries.emp_no

————————————

SELECT employees.first_name, employees.last_name, employees.hire_date
FROM employees
WHERE
	hire_date >= '1986-01-01'
	AND hire_date <= '1987-01-01'
———————————————
SELECT dept_manager.dept_no, dept_manager.emp_no, employees.first_name, employees.last_name
FROM dept_manager, employees
WHERE dept_manager.emp_no=employees.emp_no
———————————————————
SELECT employees.emp_no, employees.first_name, employees.last_name, dept_emp.dept_no
FROM employees, dept_emp
WHERE employees.emp_no=dept_emp.emp_no
—————————————
SELECT employees.first_name, employees.last_name, employees.sex
FROM employees
WHERE
	first_name = 'Hercules'
	AND last_name LIKE 'B%'
—————————
SELECT employees.emp_no, employees.first_name, employees.last_name, dept_emp.dept_no
FROM employees, dept_emp
WHERE employees.emp_no=dept_emp.emp_no
	and dept_no='d007'
—————————
SELECT employees.emp_no, employees.first_name, employees.last_name, dept_emp.dept_no
FROM employees, dept_emp
WHERE employees.emp_no=dept_emp.emp_no
	and dept_no='d007' or dept_no='d005'


------------
SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY last_name ASC