# -SQL-_Optimal-and-In-Demand-Skills-for-Data-Analysts-Top-Paying-Positions-by-Company-and-Highest-Salaries in the U.S. (2023)
# Introduction
This project delved into the dynamic world of data analyst roles, uncovering the highest-paying positions by company and salary trends across the U.S. for 2023.
It also explored the essential skills in demand to thrive as a data analyst in today's competitive landscape.

# Tools Used 
In my thorough exploration of the data analyst job market, I utilized a range of essential tools:

- SQL: The foundation of my analysis, enabling database querying and uncovering crucial insights. This process also involved database cleaning using SQL language.
- PostgreSQL: The selected database management system, well-suited for managing job posting data.
- Visual Studio Code: Used for database management and executing SQL queries.
- Git & GitHub: Essential for version control and sharing my SQL scripts and analyses, ensuring collaboration and project tracking.
- Tableau: Leveraged as my visualization tool to present data with clarity, using graphs, bars, and packed bubbles for easy comprehension.


# The Analysis
### 1. Top Paying Data Analyst Jobs
To identify the highest-paying roles, I filtered data analyst positions based on average yearly salary and location. This query underscores the lucrative opportunities in the field.

```sql
SELECT
    job_id,
    job_title,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date,
    name AS company_name
FROM
    job_postings_fact
LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE
    job_title_short = 'Data Analyst' AND
    job_location = 'Anywhere' AND
    salary_year_avg IS NOT NULL
ORDER BY
    salary_year_avg DESC
LIMIT 30
```

### 2. Top-Paying Skills in Use
In this query, I focused on identifying the skills utilized by those earning high salaries as identified in the first query.

### 3. Demand Skills for Data Analyst 
In this query, I focused on filtering the in-demand skills for data analyst positions.

### 4. Skills Used Based on the Salaries
In this query, I focused on filtering the skills utilized based on the average salaries of data analyst positions.(This part is not provided on the Tableau)

### 5. Optimal Skills Used for Data Analyst Position
In this query, I filltered skills in high demand and associated with high average salaries for Data Analyst role.

# Conclution
1. ***Top-Paying Data Analyst Jobs**:
The most lucrative remote data analyst positions boast a diverse salary spectrum, peaking at an impressive $650,000.
These opportunities not only reward professionals handsomely but also reflect the growing demand for skilled analysts who can leverage their expertise across geographical boundaries.

2. ***Skills for Top-Paying Jobs**:
Securing top-tier salaries in data analyst roles often require mastering on SQL at an advanced level.
This proficiency not only unlocks deeper insights from complex datasets but also positions professionals to navigate and manipulate data with precision and efficiency.
As organizations increasingly rely on data-driven strategies, the ability to utilized SQL effectively becomes a crucial skill for maximizing earning potential in the competitive landscape of data analysis.

3. ***Most In-Demand Skills**:
SQL stands out as the most sought-after skill in the data analyst job market, making it indispensable for job seekers aiming to excel in this field.

4. ***Skills with Higher Salaries**:
Skills that are highly specialized, such as SW and Solidity, are directly correlated with the highest average salaries in their respective fields.
This correlation highlights a pronounced premium placed on niche expertise, where professionals with these specialized skills are not only in demand but also command substantial compensation packages.

5. ***Optimal Skills for Job Market Values**:
SQL stands out as a pivotal skill in high demand across industries, not only offering lucrative average salaries but also positioning itself as a cornerstone for data analysts seeking to enhance their market worth.
Mastery of SQL empowers professionals to efficiently manage and extract insights from vast datasets, essential for informed decision-making in today's data-driven landscape

[Link to My Tableau Visualization](https://public.tableau.com/app/profile/akemi.taira.vasquez/viz/OptimalandIn-DemandSkillsforDataAnalystsTopPayingPositionsbyCompanyandHighestSalariesintheU_S_2023/Dashboard1)

Thank You!
