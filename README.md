# HR Employee Analytics Dashboard

## Overview

This project analyzes HR employee data to identify workforce trends, employee attrition patterns, salary distribution, overtime impact, and workforce demographics.

The project follows an end-to-end analytics workflow:

**Raw Data → Python Data Cleaning → SQL Analysis → Power BI Dashboard → Business Insights**

It demonstrates practical skills in data cleaning, SQL querying, exploratory data analysis, data visualization, and dashboard development.

---

## Business Problem

Employee attrition can affect productivity, recruitment costs, workforce planning, and employee morale. This project helps HR teams understand patterns related to employee exits and identify areas that may require attention.

The analysis focuses on questions such as:

* Which departments and job roles show higher attrition?
* Does overtime appear to be associated with employee attrition?
* How does salary vary across departments?
* What does the workforce demographic distribution look like?
* Which employee groups may need further HR attention?

---

## Tools and Technologies

* **Python**
* **Pandas**
* **SQL**
* **MySQL**
* **Power BI**
* **GitHub**

---

## Project Objectives

* Clean and prepare HR employee data for analysis.
* Analyze employee attrition patterns.
* Examine workforce distribution by department, job role, age, and gender.
* Compare salary patterns across departments.
* Analyze the relationship between overtime and attrition.
* Use SQL queries to answer HR-focused business questions.
* Build an interactive Power BI dashboard for HR reporting.

---

## Dataset Information

The dataset contains employee-level information, including:

* Age
* Gender
* Department
* Job Role
* Monthly Income
* Attrition
* Overtime
* Work-Life Balance
* Years at Company
* Performance Rating

> Note: This project is created for learning and portfolio purposes. The dataset should not be interpreted as real employee data from an organization.

---

## Project Workflow

### 1. Data Cleaning — Python

Python and Pandas were used to prepare the dataset for analysis.

Key tasks included:

* Checking missing values
* Reviewing data types
* Cleaning and standardizing data where required
* Preparing the dataset for SQL analysis and Power BI reporting
* Performing exploratory analysis on employee demographics, salary, and attrition

Python script:
`Python/data_cleaning.py`

---

### 2. SQL Analysis

SQL was used to analyze HR metrics and answer business questions.

#### Basic Analysis

* Total employee count
* Attrition analysis
* Department-wise employee count
* Gender distribution
* Average salary by department

#### Advanced Analysis

* Common Table Expressions (CTEs)
* Subqueries
* Views
* Stored Procedures
* Window Functions:

  * `RANK()`
  * `DENSE_RANK()`
  * `ROW_NUMBER()`

SQL files:

* `SQL/basic_hr_analysis.sql`
* `SQL/advanced_hr_analysis.sql`

---

### 3. Power BI Dashboard

An interactive Power BI dashboard was created to present key HR metrics and workforce insights.

#### Dashboard KPIs

* Total Employees
* Employees Left
* Active Employees
* Average Salary
* Attrition Rate

#### Dashboard Visuals

* Attrition by Department
* Average Salary by Department
* Overtime vs Attrition
* Job Role-wise Attrition
* Gender Distribution
* Employee Age Distribution
* Salary Distribution
* Work-Life Balance and Attrition

---

## Key Insights

* The overall employee attrition rate is approximately **16%**.
* The Research & Development department shows the highest attrition in the dataset.
* Employees working overtime show higher attrition compared with employees who do not work overtime.
* Salary distribution varies across departments and job roles.
* Workforce distribution is concentrated in selected job roles and departments.

> These observations indicate areas where HR teams may investigate workload, employee engagement, retention initiatives, compensation patterns, and work-life balance.

---

## Business Recommendations

Based on the analysis, potential HR actions may include:

* Review overtime policies and workload distribution in higher-attrition employee groups.
* Conduct retention surveys or exit-interview analysis for departments with higher attrition.
* Review compensation and career-growth opportunities across departments and job roles.
* Monitor workforce demographics and attrition trends through regular HR dashboards.
* Use additional employee feedback and performance data before making final HR decisions.

---

## Project Structure

```text
hr-employee-analytics-dashboard/
│
├── Data/
│   ├── WA_Fn-UseC_-HR-Employee-Attrition.csv
│   ├── hr_cleaned.csv
│   └── hr_final_cleaned.csv
│
├── Python/
│   └── data_cleaning.py
│
├── SQL/
│   ├── basic_hr_analysis.sql
│   └── advanced_hr_analysis.sql
│
├── Power bi/
│   └── HR_Employee_Analytics_Dashboard.pbix
│
├── Screenshots/
│   ├── hr_dashboard_main.png
│   ├── attrition_by_department.png
│   ├── overtime_vs_attrition.png
│   ├── jobrole_attrition.png
│   └── ...
│
└── README.md
```

---

## Dashboard Preview

![HR Employee Analytics Dashboard](Screenshots/hr_dashboard_main.png)

---

## How to Use This Repository

1. Download or clone this repository.
2. Review the raw and cleaned datasets in the `Data` folder.
3. Run `Python/data_cleaning.py` to understand the data-cleaning process.
4. Execute the SQL files in MySQL to review the analysis queries.
5. Open the Power BI `.pbix` file from the `Power bi` folder to explore the dashboard.
6. Review dashboard screenshots in the `Screenshots` folder.

---

## Skills Demonstrated

* Data Cleaning and Preprocessing
* Python Data Analysis with Pandas
* SQL Querying and Advanced SQL Concepts
* Exploratory Data Analysis
* HR Analytics
* Data Visualization
* Power BI Dashboard Development
* Business Insight Generation

---

## Author

**Akhilesh Joshi**
MBA — Artificial Intelligence & Data Science

[LinkedIn](https://www.linkedin.com/in/akhilesh-joshi-a849283ab/) | [GitHub](https://github.com/AkhileshJoshi10)
