-- drop table dept_manager;

CREATE TABLE dept_manager (
	dept_no VARCHAR, -- was set as FK in departments db
	emp_no INT NOT NULL
);

SELECT * FROM dept_manager

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