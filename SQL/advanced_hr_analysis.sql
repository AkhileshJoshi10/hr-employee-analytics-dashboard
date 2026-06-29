-- 1. Salary Rank Within Each Department
SELECT
    employeenumber,
    department,
    jobrole,
    monthlyincome,
    RANK() OVER (
        PARTITION BY department
        ORDER BY monthlyincome DESC
    ) AS salary_rank
FROM employees;


-- 2. Dense Salary Rank Within Each Department
SELECT
    employeenumber,
    department,
    jobrole,
    monthlyincome,
    DENSE_RANK() OVER (
        PARTITION BY department
        ORDER BY monthlyincome DESC
    ) AS dense_salary_rank
FROM employees;


-- 3. Unique Row Number for Salary Ranking Within Each Department
SELECT
    employeenumber,
    department,
    jobrole,
    monthlyincome,
    ROW_NUMBER() OVER (
        PARTITION BY department
        ORDER BY monthlyincome DESC
    ) AS salary_row_number
FROM employees;


-- 4. Employees Earning Above Their Department Average
SELECT
    employeenumber,
    department,
    jobrole,
    monthlyincome
FROM employees e
WHERE monthlyincome > (
    SELECT AVG(monthlyincome)
    FROM employees
    WHERE department = e.department
)
ORDER BY department, monthlyincome DESC;


-- 5. Department Attrition Analysis Using CTE
WITH department_attrition AS (
    SELECT
        department,
        COUNT(*) AS total_employees,
        SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left
    FROM employees
    GROUP BY department
)
SELECT
    department,
    total_employees,
    employees_left,
    ROUND(employees_left * 100.0 / total_employees, 2) AS attrition_rate_percent
FROM department_attrition
ORDER BY attrition_rate_percent DESC;


-- 6. Salary Category and Attrition Pattern
SELECT
    CASE
        WHEN monthlyincome < 5000 THEN 'Low Salary'
        WHEN monthlyincome BETWEEN 5000 AND 10000 THEN 'Medium Salary'
        ELSE 'High Salary'
    END AS salary_category,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(
        SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS attrition_rate_percent
FROM employees
GROUP BY salary_category
ORDER BY attrition_rate_percent DESC;


-- 7. View: Employees Who Left the Company
CREATE OR REPLACE VIEW attrition_employees AS
SELECT
    employeenumber,
    age,
    gender,
    department,
    jobrole,
    monthlyincome,
    overtime,
    worklifebalance,
    yearsatcompany
FROM employees
WHERE attrition = 'Yes';

SELECT *
FROM attrition_employees;


-- 8. View: High-Salary Employees
CREATE OR REPLACE VIEW high_salary_employees AS
SELECT
    employeenumber,
    department,
    jobrole,
    monthlyincome
FROM employees
WHERE monthlyincome > 10000;

SELECT *
FROM high_salary_employees;


-- 9. View: Department Salary and Attrition Summary
CREATE OR REPLACE VIEW department_hr_summary AS
SELECT
    department,
    COUNT(*) AS total_employees,
    ROUND(AVG(monthlyincome), 2) AS average_salary,
    SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(
        SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS attrition_rate_percent
FROM employees
GROUP BY department;

SELECT *
FROM department_hr_summary
ORDER BY attrition_rate_percent DESC;
