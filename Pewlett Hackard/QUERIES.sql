-- List the employee number, last name, first name, sex, and salary of each employee.

SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e 
LEFT JOIN salaries s 
	ON e.emp_no = s.emp_no
;



-- List the first name, last name, and hire date for the employees who were hired in 1986.

SELECT first_name, last_name, hire_date
FROM employees
WHERE EXTRACT(YEAR FROM hire_date) = 1986
;



-- List the manager of each department along with their department number, department name, employee number, last name, and first name.

SELECT e.emp_no, e.last_name, e.first_name, dm.dept_no, d.dept_name
FROM employees e
RIGHT JOIN dept_manager dm 
	ON e.emp_no = dm.emp_no
LEFT JOIN departments d
	ON dm.dept_no = d.dept_no
;



-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

SELECT  e.emp_no, e.last_name, e.first_name, de.dept_no, d.dept_name
FROM employees e
LEFT JOIN dept_emp de
	ON e.emp_no = de.emp_no
LEFT JOIN departments d
	ON de.dept_no = d.dept_no
;



