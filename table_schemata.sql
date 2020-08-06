--Create titles table
CREATE TABLE titles (
  title_id VARCHAR(255) PRIMARY KEY,
  title VARCHAR(255)
);

--Create employees table
CREATE TABLE employees (
  emp_no INT PRIMARY KEY,
  emp_title VARCHAR(255),
  birth_date VARCHAR(255),
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  sex VARCHAR(255),
  hire_date VARCHAR(255),
  FOREIGN KEY (emp_title) REFERENCES titles(title_id)
);

--Create salaries table
CREATE TABLE salaries (
  emp_no INT PRIMARY KEY,
  salary INT,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

--Create departments table
CREATE TABLE departments (
  dept_no VARCHAR(255) PRIMARY KEY,
  dept_name VARCHAR(255)
);

--Create dept_manager table
CREATE TABLE dept_manager (
  dept_no VARCHAR(255),
  emp_no INT PRIMARY KEY,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

--Create dept_manager table
CREATE TABLE dept_emp (
  emp_no INT,
  dept_no VARCHAR(255),
  PRIMARY KEY (emp_no, dept_no),
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);