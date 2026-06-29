-- 1. Total Employees
SELECT COUNT(*) AS total_employees
FROM employees;


-- 2. Attrition Count and Attrition Rate
SELECT
    COUNT(*) AS total_employees,
    SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    SUM(CASE WHEN attrition = 'No' THEN 1 ELSE 0 END) AS active_employees,
    ROUND(
        SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS attrition_rate_percent
FROM employees;


-- 3. Department-wise Employee Count
SELECT
    department,
    COUNT(*) AS total_employees
FROM employees
GROUP BY department
ORDER BY total_employees DESC;


-- 4. Department-wise Attrition Analysis
SELECT
    department,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(
        SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS attrition_rate_percent
FROM employees
GROUP BY department
ORDER BY attrition_rate_percent DESC;


-- 5. Average Salary by Department
SELECT
    department,
    ROUND(AVG(monthlyincome), 2) AS average_monthly_income
FROM employees
GROUP BY department
ORDER BY average_monthly_income DESC;


-- 6. Overtime vs Attrition
SELECT
    overtime,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(
        SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS attrition_rate_percent
FROM employees
GROUP BY overtime
ORDER BY attrition_rate_percent DESC;


-- 7. Job Role-wise Attrition Analysis
SELECT
    jobrole,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(
        SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS attrition_rate_percent
FROM employees
GROUP BY jobrole
ORDER BY attrition_rate_percent DESC;


-- 8. Gender-wise Workforce and Attrition Analysis
SELECT
    gender,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(
        SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS attrition_rate_percent
FROM employees
GROUP BY gender
ORDER BY attrition_rate_percent DESC;


-- 9. Work-Life Balance vs Attrition
SELECT
    worklifebalance,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(
        SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS attrition_rate_percent
FROM employees
GROUP BY worklifebalance
ORDER BY worklifebalance;


-- 10. Age Group-wise Attrition Analysis
SELECT
    CASE
        WHEN age < 25 THEN 'Under 25'
        WHEN age BETWEEN 25 AND 34 THEN '25-34'
        WHEN age BETWEEN 35 AND 44 THEN '35-44'
        WHEN age BETWEEN 45 AND 54 THEN '45-54'
        ELSE '55+'
    END AS age_group,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(
        SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS attrition_rate_percent
FROM employees
GROUP BY age_group
ORDER BY
    CASE age_group
        WHEN 'Under 25' THEN 1
        WHEN '25-34' THEN 2
        WHEN '35-44' THEN 3
        WHEN '45-54' THEN 4
        WHEN '55+' THEN 5
    END;
