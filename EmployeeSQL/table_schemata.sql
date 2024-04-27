-- Initialize 'departments' table
DROP TABLE departments;

CREATE TABLE departments (
	dept_no VARCHAR(4),
	dept_name VARCHAR(30),
	PRIMARY KEY (dept_no)
);


-- Initialize 'titles' table
DROP TABLE titles;

CREATE TABLE titles (
	title_id VARCHAR(5),
	title VARCHAR(30),
	PRIMARY KEY (title_id)
);


-- Initialize 'employees' table
DROP TABLE employees;

CREATE TABLE employees (
	emp_no INT,
	emp_title_id VARCHAR(5),
	birth_date DATE,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	sex VARCHAR(1),
	hire_date DATE,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);


-- Initialize 'salaries' table
DROP TABLE salaries;

CREATE TABLE salaries (
	emp_no INT,
	salary INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	PRIMARY KEY (emp_no)
);

-- Initialize 'dept_manager' table
DROP TABLE dept_manager;

CREATE TABLE dept_manager (
	dept_no VARCHAR(4),
	emp_no INT,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	PRIMARY KEY (dept_no, emp_no)
);


-- Initialize 'dept_emp' table
DROP TABLE dept_emp;

CREATE TABLE dept_emp (
	emp_no INT,
	dept_no VARCHAR(4),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	PRIMARY KEY (emp_no, dept_no)
);



