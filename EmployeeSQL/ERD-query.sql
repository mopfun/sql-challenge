Departments
-
Dept_No PK Int 
Dept_Name VARCHAR(88)

Dept_Employees
-
Dept_No PK Int
Emp_No VARCHAR(88) FK >- Departments.Dept_Name

Employees
-
Emp_No PK Int
Emp_Title_ID VARCHAR(88) FK >- Salaries.Salary
Bith_Date Int
First_Name VARCHAR(88)
Last_Name VARCHAR(88)
Sex VARCHAR(88)
Hire_Date DATE FK - Dept_Employees.Dept_No

Salaries
-
Emp_No PK Int
Salary Int FK

Titles
-
Title_ID PK Int
Title VARCHAR(88) FK - Employees.Emp_No