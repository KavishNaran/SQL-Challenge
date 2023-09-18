-- List the employee number, last name, first name, sex, and salary of each employee
SELECT employees.emp_no, 
		employees.last_name, 
		employees.first_name,
		employees.sex,
		salaries.salary
FROM employees
JOIN salaries
ON employees.emp_no = salaries.emp_no;

-- List the first name, last name, and hire date for the employees who were hired in 1986
SELECT employees.first_name,
		employees.last_name,
		employees.hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31'
ORDER BY hire_date;

-- List the manager of each department along with their department number, department name, employee number, last name, and first name

SELECT departments.dept_no, 
	departments.dept_name, 
	employees.emp_no, 
	employees.first_name, 
	employees.last_name
FROM departments
JOIN dept_manager ON
dept_manager.dept_no = departments.dept_no
JOIN employees ON
dept_manager.emp_no = employees.emp_no
