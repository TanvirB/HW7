
CREATE TABLE departments (
    dept_no VARCHAR(10) PRIMARY KEY,
    dept_name VARCHAR(50)
);

CREATE TABLE employees (
    emp_no int PRIMARY KEY,
    birth_date date,
    first_name VARCHAR(30),
	last_name VARCHAR(30),
    gender VARCHAR(10),
	hire_date date
);

CREATE TABLE dept_emp (
    emp_no integer not null,
    dept_no VARCHAR(10) not null,
    from_date date,
	to_date date,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
	);
	

CREATE TABLE dept_manager (
	dept_no VARCHAR(10) not null,
	emp_no integer not null,
    from_date date,
	to_date date,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE titles (
    emp_no integer not null,
    title VARCHAR(30),
	from_date date,
	to_date date,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE salaries (
    emp_no integer not null,
    salary int,
    from_date date,
	to_date date,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
