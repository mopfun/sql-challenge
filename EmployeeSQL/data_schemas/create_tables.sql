-- found out that the default varchar length is 30, so technically don't need to specify the varchar for my tables

-- drop table departments
CREATE TABLE departments (
	dept_no VARCHAR (30) PRIMARY KEY,
	dept_name VARCHAR(30) NOT NULL
);

-- drop table titles
CREATE TABLE titles (
	title_id VARCHAR(30) PRIMARY KEY,
	title VARCHAR(30) NOT NULL
);

-- drop table employees
CREATE TABLE employees (
	emp_no INT PRIMARY KEY,
	emp_title_id VARCHAR(30) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(30) NOT NULL,
	hire_date DATE NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

-- drop table dept_emp
CREATE TABLE dept_emp(
	emp_no INT, 
	dept_no VARCHAR(30),
 	PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
 	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- drop table dept_manager
CREATE TABLE dept_manager (
	dept_no VARCHAR(30),
	emp_no INT,
	PRIMARY KEY (dept_no, emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);


-- CREATE TABLE salaries (
	emp_no INT PRIMARY KEY,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
