CREATE TABLE departments (
    dept_no VARCHAR(255)   NOT NULL,
    dept_name VARCHAR(255)   NOT NULL,
    PRIMARY KEY (dept_no)
);

SELCT * FROM departments

CREATE TABLE dept_emp (
    emp_no INT   NOT NULL,
    dept_no VARCHAR(255)   NOT NULL,
    FOREIGN KEY(emp_no) REFERENCES employees (emp_no),
    FOREIGN KEY(dept_no) REFERENCES departments (dept_no)
);

SELCT * FROM dept_emp

CREATE TABLE dept_manager (
    dept_no VARCHAR(255)   NOT NULL,
    emp_no INT   NOT NULL,
    FOREIGN KEY(dept_no) REFERENCES departments (dept_no),
    FOREIGN KEY(emp_no) REFERENCES employees (emp_no)
);

SELCT * FROM dept_manager

CREATE TABLE employees (
    emp_no INT   NOT NULL,
    emp_title_id VARCHAR(255)   NOT NULL,
    birth_date VARCHAR(255)   NOT NULL,
    first_name VARCHAR(255)   NOT NULL,
    last_name VARCHAR(255)   NOT NULL,
    sex VARCHAR(255)   NOT NULL,
    hire_date VARCHAR(255)   NOT NULL,
    PRIMARY KEY (emp_no),
    FOREIGN KEY(emp_title_id) REFERENCES titles (title_id)
);

SELCT * FROM employees

CREATE TABLE salaries (
    emp_no INT   NOT NULL,
    salary INT   NOT NULL,
    FOREIGN KEY(emp_no) REFERENCES employees (emp_no)
);

SELCT * FROM salaries

CREATE TABLE titles (
    title_id VARCHAR(255)   NOT NULL,
    title VARCHAR(255)   NOT NULL,
    PRIMARY KEY (title_id)
);

SELCT * FROM titles