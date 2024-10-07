SELECT de.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name FROM dept_emp de JOIN employees e ON de.emp_no = e.emp_no JOIN departments d ON de.dept_no = d.dept_no;
15:37:40
SELECT last_name, COUNT(*) AS name_count FROM employees GROUP BY last_name ORDER BY name_count DESC;
15:30:49
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name FROM employees e JOIN dept_emp de ON e.emp_no = de.emp_no JOIN departments d ON de.dept_no = d.dept_no WHERE d.dept_name IN ('Sales', 'Development');
15:30:40
SELECT e.emp_no, e.last_name, e.first_name FROM employees e JOIN dept_emp de ON e.emp_no = de.emp_no JOIN departments d ON de.dept_no = d.dept_no WHERE d.dept_name = 'Sales';
15:30:32
SELECT first_name, last_name, sex FROM employees WHERE first_name = 'Hercules' AND last_name LIKE 'B%';
15:30:21
SELECT dm.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name FROM dept_manager dm JOIN employees e ON dm.emp_no = e.emp_no JOIN departments d ON dm.dept_no = d.dept_no;
15:29:25
SELECT first_name, last_name, hire_date FROM employees WHERE EXTRACT(YEAR FROM hire_date) = 1986;
15:29:14
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary FROM employees e JOIN salaries s ON e.emp_no = s.emp_no;
15:28:59
CREATE TABLE dept_manager ( dept_no INTEGER NOT NULL, emp_no INTEGER NOT NULL, PRIMARY KEY (dept_no, emp_no), FOREIGN KEY (dept_no) REFERENCES departments(dept_no) ON DELETE CASCADE, FOREIGN KEY (emp_no) REFERENCES employees(emp_no) ON DELETE CASCADE );
15:25:21
CREATE TABLE dept_emp ( emp_no INTEGER NOT NULL, dept_no INTEGER NOT NULL, PRIMARY KEY (emp_no, dept_no), FOREIGN KEY (emp_no) REFERENCES employees(emp_no) ON DELETE CASCADE, FOREIGN KEY (dept_no) REFERENCES departments(dept_no) ON DELETE CASCADE );
15:24:51
CREATE TABLE salaries ( emp_no INTEGER PRIMARY KEY REFERENCES employees(emp_no) ON DELETE CASCADE, salary INTEGER NOT NULL );
15:24:22
CREATE TABLE employees ( emp_no INTEGER PRIMARY KEY, emp_title VARCHAR(50) NOT NULL REFERENCES titles(title), birth_date DATE NOT NULL, first_name VARCHAR(50) NOT NULL, last_name VARCHAR(50) NOT NULL, sex CHAR(1) CHECK (sex IN ('M', 'F')), hire_date DATE NOT NULL );
15:23:39
CREATE TABLE titles ( title_id VARCHAR(50) PRIMARY KEY, title VARCHAR(50) UNIQUE NOT NULL );
15:22:14
CREATE TABLE departments ( dept_no INTEGER PRIMARY KEY, dept_name VARCHAR(50) UNIQUE NOT NULL );
15:19:57
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no
WHERE d.dept_name IN ('Sales', 'Development');

Total rows: 0 of 0
Query complete 00:00:00.057
Ln 5, Col 1