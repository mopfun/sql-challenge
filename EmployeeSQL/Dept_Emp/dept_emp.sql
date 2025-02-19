-- drop table dept_emp;

CREATE TABLE dept_emp(
	emp_no INT, -- set as FK in employees db
	dept_no VARCHAR NOT NULL
);

SELECT * FROM dept_emp;

-- 3. List the manager of each department along with their department number, department name, employee number, last name, and first name. (Done) - I will have
SELECT t.title, d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM employees AS e
JOIN dept_emp AS de
ON de.emp_no = e.emp_no
JOIN departments AS d
ON d.dept_no = de.dept_no
JOIN titles AS t
ON t.title_id = e.emp_title_id --Guess I didn't need to use a PK/FK?
WHERE t.title = 'Manager'

-- 4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name. (Done)
SELECT d.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
JOIN dept_emp AS de 
ON e.emp_no = de.emp_no
JOIN departments AS d 
ON de.dept_no = d.dept_no

-- 6. List each employee in the Sales department, including their employee number, last name, and first name. (Done)
SELECT d.dept_name, e.emp_no, e.last_name, e.first_name
FROM employees AS e
JOIN dept_emp AS de
ON de.emp_no = e.emp_no
JOIN departments AS d
ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales'

-- 7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name. (Done)
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
JOIN dept_emp AS de
ON de.emp_no = e.emp_no
JOIN departments AS d
ON d.dept_no = de.dept_no
WHERE d.dept_name IN ('Sales', 'Development')