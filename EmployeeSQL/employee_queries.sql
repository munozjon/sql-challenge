-- Question 1
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e
LEFT JOIN salaries AS S ON s.emp_no = e.emp_no;

-- Question 2
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1/1/1986' AND '12/31/1986';

-- Question 3
SELECT d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM dept_manager AS d_m
LEFT JOIN employees AS e ON (e.emp_no = d_m.emp_no)
LEFT JOIN departments AS d ON (d.dept_no = d_m.dept_no);

-- Question 4
SELECT d.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp AS d_e
LEFT JOIN employees AS e ON (e.emp_no = d_e.emp_no)
LEFT JOIN departments AS d ON (d.dept_no = d_e.dept_no);

-- Question 5
SELECT e.first_name, e.last_name, e.sex
FROM employees AS e
WHERE e.first_name = 'Hercules' AND e.last_name LIKE 'B%';

-- Question 6
SELECT e.emp_no, e.last_name, e.first_name
FROM dept_emp AS d_e
LEFT JOIN employees AS e ON (e.emp_no = d_e.emp_no)
LEFT JOIN departments AS d ON (d.dept_no = d_e.dept_no)
WHERE d.dept_name = 'Sales';


