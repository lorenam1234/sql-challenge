-- Drop table if exists then CREATE
DROP TABLE IF EXISTS titles CASCADE;
CREATE TABLE titles (
	title_id varchar(5) PRIMARY KEY,
	title_name varchar(40) not null
);

-- Drop table if exists then CREATE
DROP TABLE IF EXISTS departments CASCADE;
CREATE TABLE departments (
	dept_id varchar(5) PRIMARY KEY,
	dept_name varchar(60) not null
);

-- Drop table if exists then CREATE
DROP TABLE IF EXISTS employees CASCADE;
CREATE TABLE employees (
	emp_id int PRIMARY KEY,
	emp_title_id varchar(5) REFERENCES titles(title_id),
	birth_date varchar not null,
	first_name varchar(30) not null,
	last_name varchar(60) not null,
	gender varchar(1) not null,
	hire_date varchar not null
);

-- Drop table if exists then CREATE
DROP TABLE IF EXISTS salaries;
CREATE TABLE salaries (
	salary_emp_id int REFERENCES employees(emp_id),
	salary_num numeric not null
);

-- Drop table if exists then CREATE
DROP TABLE IF EXISTS department_employees;
CREATE TABLE department_employees (
	dept_emp_emp_id int REFERENCES employees(emp_id),
	dept_emp_dept_id varchar(5) REFERENCES departments(dept_id)
);

-- Drop table if exists then CREATE
DROP TABLE IF EXISTS dept_manager;
CREATE TABLE dept_manager (
	dept_mgr_dept_id varchar(5) REFERENCES departments(dept_id),
	dept_mgr_emp_id int REFERENCES employees(emp_id)
);