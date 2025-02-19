-- drop table titles

CREATE TABLE titles (
	title_id VARCHAR PRIMARY KEY,
	title VARCHAR NOT NULL
);

SELECT * FROM titles

-- 3. List the manager of each department along with their department number, department name, employee number, last name, and first name.-- List the manager of each department along with their department number, department name, employee number, last name, and first name. (Done)
SELECT t.title, d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM employees AS e
JOIN dept_emp AS de
ON de.emp_no = e.emp_no
JOIN departments AS d
ON d.dept_no = de.dept_no
JOIN titles AS t
ON t.title_id = e.emp_title_id
WHERE t.title = 'Manager