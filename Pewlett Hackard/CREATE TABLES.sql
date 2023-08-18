CREATE TABLE titles (
	title_id char(5) PRIMARY KEY, -- PRIMARY KEYS are NOT NULL by default
    title varchar(40) 
);


CREATE TABLE departments (
	dept_no char(4) PRIMARY KEY,
    dept_name varchar(40)
);


CREATE TABLE employees (
	emp_no int PRIMARY KEY,
    emp_title_id char(5),
    birth_date date,
    first_name varchar(20),
    last_name varchar(20), 
    sex char(1),
    hire_date date,
    FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);


CREATE TABLE salaries (
	emp_no int PRIMARY KEY NOT NULL,
    salary int,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);


CREATE TABLE dept_manager (
	dept_no char(4) NOT NULL,
    emp_no int NOT NULL,
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);


CREATE TABLE dept_emp (
	emp_no int NOT NULL,
    dept_no char(4) NOT NULL,
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
