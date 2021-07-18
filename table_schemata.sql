CREATE TABLE "salaries" (
    "emp_no" INTEGER   NOT NULL,
    "salary" INTEGER   NOT NULL,
);

CREATE TABLE "titles" (
    "title_id" VARCHAR(50)   NOT NULL,
    "title" VARCHAR(50)   NOT NULL,
);

CREATE TABLE "employees" (
    "emp_no" INTEGER   NOT NULL,
    "title_id" VARCHAR(50)   NOT NULL,
    "birth_date" DATE   NOT NULL,
    "first_name" VARCHAR(50)   NOT NULL,
    "last_name" VARCHAR(50)   NOT NULL,
    "sex" VARCHAR(50)   NOT NULL,
    "hire_date" DATE   NOT NULL,
);

CREATE TABLE "departments" (
    "dept_no" VARCHAR(50)   NOT NULL,
    "dept_name" VARCHAR(50)   NOT NULL,
);

CREATE TABLE "dept_emp" (
    "emp_no" INTEGER   NOT NULL,
    "dept_no" VARCHAR(50)   NOT NULL,
);

CREATE TABLE "dept_manager" (
    "dept_no" VARCHAR(50)   NOT NULL,
    "emp_no" INTEGER   NOT NULL,

);

-------------

ALTER TABLE salaries
ADD PRIMARY KEY (emp_no);

ALTER TABLE titles
ADD PRIMARY KEY (title_id);

ALTER TABLE departments
ADD PRIMARY KEY (dept_no);

ALTER TABLE dept_manager
ADD PRIMARY KEY (emp_no);

ALTER TABLE employees
ADD PRIMARY KEY (emp_no);
