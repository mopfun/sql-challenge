-- found out that the default varchar length is 30, so technically don't need to specify the varchar for my tables,
-- but I have provided examples on the first couple to show the process

CREATE TABLE departments (
	dept_no VARCHAR PRIMARY KEY,
	dept_name VARCHAR(88) NOT NULL
);

CREATE TABLE dept_emp(
	emp_no INT, -- was FK in the employees db
	dept_no VARCHAR(88) NOT NULL
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager (
	dept_no VARCHAR NOT NULL,
	emp_no INT
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
	FOREIGN KEY (emp_no) REFERENCES dept_emp(emp_no)
);

CREATE TABLE employees (
	emp_no INT PRIMARY KEY,
	emp_title_id VARCHAR NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR NOT NULL,
	hire_date DATE NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

CREATE TABLE salaries (
	emp_no INT PRIMARY KEY,
	salary INT NOT NULL
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE titles (
	title_id VARCHAR PRIMARY KEY,
	title VARCHAR NOT NULL
);