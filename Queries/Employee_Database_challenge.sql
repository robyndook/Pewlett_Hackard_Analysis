-- Deliverable 1
SELECT e.emp_no,
    e.first_name,
	e.last_name,
    t.title,
	t.from_date,
	t.to_date
-- INTO retirement_titles
FROM employees as e
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
INNER JOIN dept_emp as de
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no ASC;
-- Remove Duplicates
SELECT DISTINCT ON (rt.emp_no) rt.emp_no
	rt.first_name
	rt.last_name
	rt.title
-- INTO Unique_titles
From retirment_titles AS rt
Order BY emp_no ASC, to_date DESC:
WHERE de.to_date = '9999-01-01';
-- Count
COUNT(ut.emp_no),ut.title
-- INTO retiring_titles
FROM unique_titles as ut
GROUP BY title 
ORDER BY COUNT(title) DESC;
-- Deliverable 2
SELECT DISTINCT ON(e.emp_no)e.emp_no,
e.first_name,
e.last_name,
e.birth_date,
de.from_date,
de.to_date,
t.title
--INTO mentor_eligibility
FROM employees AS e
INNER JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
INNER JOIN titles AS t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY emp_no;

