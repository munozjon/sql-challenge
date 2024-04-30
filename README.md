# sql-challenge

## Module 9 Challenge

For this challenge, I was instructed to research the employees of fictional company Pewlett Hackard during the 1980s and 1990s. I was given 6 CSV files and was instructed to model, engineer, and analyze the data with SQL programming and a database diagram designer.

### Data Modeling

For the data modeling part of this challenge, I reviewed each CSV file to understand what kind of data existed in each table. These tables included employees, salaries, employee titles, departments, department employees, and department managers. I then went to the website Quick Database Diagrams (quickdatabasediagrams.com) and utilized their free diagram tool to draw out the relationships between the tables. Here are the relationships I discovered:

- The '__salaries__' has a one-to-one relationship to the '__employees__' table via the '*emp_no*' column of employee numbers. Each employee has a designated salary.
- '__Titles__' has a one-to-many relationship with '__employees__' on the '*emp_title_id*' column in the '__employees__' table. Many employees can have the same job title.
- '__Employees__' has a one-to-many relationship with the '__dept_emp__' table on the '*emp_no*' column; '__dept_emp__' has a many-to-one relationship with the '__departments__' table on '*dept_no*' IDs. Here, each employee can be assigned to multiple departments, and each department can have multiple employees.
- '__Employees__' has a one-to-one relationship with the '__dept_manager__' table on '*emp_no*'; '__dept_manager__' has a many-to-one relationship with the '__departments__' table, via the '*dept_no*' column. Here, a manager is assigned to only one department, but a department can have multiple managers.

### Data Engineering