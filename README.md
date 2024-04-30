# sql-challenge

## Module 9 Challenge

For this challenge, I researched the employees of fictional company __Pewlett Hackard__ during the 1980s and 1990s. I was given 6 CSV files and was instructed to model, engineer, and analyze the data with SQL programming and a database diagram designer.

### Data Modeling

For the data modeling part of this challenge, I reviewed each CSV file to understand what kind of data existed in each table. These tables included __employees__, __salaries__, __employee titles__, __departments__, __department employees__, and __department managers__. I then went to the website _Quick Database Diagrams_ (quickdatabasediagrams.com) and utilized their free diagram tool to draw out the relationships between the tables. Here are the relationships I discovered:

- The __salaries__ table has a one-to-one relationship to the __employees__ table via the *emp_no* column of employee numbers. Each employee has a designated salary.
- The __titles__ table has a one-to-many relationship with __employees__ on the *emp_title_id* column in the __employees__ table. Many employees can have the same job title.
- __Employees__ has a one-to-many relationship with the __dept_emp__ table on the *emp_no* column; __dept_emp__ has a many-to-one relationship with the __departments__ table on *dept_no* IDs. Here, each employee can be assigned to multiple departments, and each department can have multiple employees.
- __Employees__ has a one-to-one relationship with the __dept_manager__ table on *emp_no*; __dept_manager__ has a many-to-one relationship with the __departments__ table, via the *dept_no* column. Here, a manager is assigned to only one department, but a department can have multiple managers.

### Data Engineering

For this part, I created a table schemata in SQL with PostgreSQL and pgAdmin that initializes each CSV table. Using the dependencies identified from data modeling, I identified the primary keys for each table, the appropriate data types, and subsequent constraints such as foreign or composite keys. The __departments__ and __titles__ tables only had primary keys, while the __employees__ table had a foreign key referencing the __titles__ table. The __salaries__ table uses a foreign key to the __employees__ table as its primary key. For both __dept_emp__ and __dept_manager__ tables, both columns in each table are foreign keys referencing the __departments__ table and the __employees__ table. At the same time, both columns together form each table's primary key, also known as a composite key.

### Data Analysis

For this last section, I answered 8 questions to demonstrate my understanding of the dataset and how to make queries. Each query required different functions, such as joins, where clauses and wildcards, ordering, and grouping.