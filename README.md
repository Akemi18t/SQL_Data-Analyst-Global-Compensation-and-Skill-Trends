# -SQL-Data Analyst Global Compensation and Skill Trends(2023)
# Introduction
The goal of this project is to analyze the demand for data analyst skills across different countries, examining how these demands vary by region. Additionally, the project aims to identify the top-paying skills for data analysts worldwide and evaluate which countries have the highest prevalence of remote data analyst positions. This comprehensive analysis will provide valuable insights into global trends in data analyst roles, compensation, and remote work opportunities.

# Tools Used 
In my thorough exploration of the data analyst job market, I utilized a range of essential tools:

- SQL: The foundation of my analysis, enabling database querying and uncovering crucial insights. This process also involved database cleaning using SQL language.
- PostgreSQL: The selected database management system, well-suited for managing job posting data.
- Visual Studio Code: Used for database management and executing SQL queries.
- Git & GitHub: Essential for version control and sharing my SQL scripts and analyses, ensuring collaboration and project tracking.
- Tableau: Leveraged as my visualization tool to present data with clarity, using graphs, bars, and packed bubbles for easy comprehension.


# The Analysis
### 1. Highest and Average Paid Data Analyst Role by Country
To identify the highest and average-paying data analyst roles, I analyzed data analyst positions by filtering them based on average yearly salary and geographic location. 
This analysis highlights the lucrative opportunities available in the field of data analysis across different countries.

```sql
SELECT DISTINCT
       job_country,
       job_title_short,
       job_location,
       job_schedule_type,
       salary_year_avg,
       job_work_from_home
FROM
       job_postings_fact
WHERE
       job_title_short = 'Data Analyst' AND
       salary_year_avg IS NOT NULL
ORDER BY 
       job_country DESC;
```

### 2. Remote Data Analyst Roles and Average Salaries by Country
In this analysis, I focused on identifying remote data analyst roles worldwide, utilizing the job_work_from_home field as established in the first query. 
This query provides insights into the average salaries associated with remote data analyst positions in various countries.

### 3. Top Skills in Demand for Data Analysts in the U.S.
In this analysis, I focused on filtering the top skills in demand for data analyst positions in the U.S. 
This query highlights the key competencies sought by employers in the data analytics field.

### 4. Top Skills in Demand for Data Analysts Worldwide
In this analysis, I focused on filtering the top skills in demand for data analyst positions for Worldwise. 

### 5.Top-Paid Skills Worldwide
In this analysis, I filtered for the top-paid skills for data analysts worldwide. 
This query highlights the skills that command the highest salaries in the global job market.

# Conclution
1. ***Highest and Average Paid Data Analyst Role by Country**:
India has the highest average salary for data analyst roles at $650,000, followed by Belarus in second place and the U.S. in third at $375,000. Additionally, there are 27 countries that offer salaries exceeding $160,000 for data analyst positions.

2. ***Remote Data Analyst Roles and Average Salaries by Country**:
The United States offers the highest average salary for remote data analyst roles at $99,718, with a total of 229 remote job positions available.

3. ***Top Skills in Demand for Data Analysts in the U.S.**:
 In the U.S., the top-demand skill for data analysts is SQL, with a demand count of 34,505. Following SQL, Excel ranks second, while Tableau takes third place in terms of demand.

4. ***Top Skills in Demand for Data Analysts Worldwide**:
Unlike the demand for skills in the U.S., three additional skills emerge as highly sought after on a global scale.
Notably, proficiency in Microsoft Word has also become a valuable skill for data analysts worldwide.

6. ***Top-Paid Skills Worldwide**:
The highest-paid skill in the U.S. is Solidity, with an average salary of $179,000. Additionally, around 14 countries offer competitive salaries for individuals proficient in Linux. Notably, Belarus has the highest average salary for Linux skills at $400,000.

[Link to My Tableau Visualization](https://public.tableau.com/app/profile/akemi.taira.vasquez/viz/DataAnalystGlobalCompensationandSkillTrends/Dashboard1)

Thank You!
