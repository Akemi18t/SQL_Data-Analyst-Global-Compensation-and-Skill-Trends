/*
Answer) What are the top skills based on salary?
- Look at the avaerage salary associated with each skills for Data Analyst positions
- Focuses on roles with specified salaries, regardless of location
- Why? It revels how different skills impact salary levels for Data Alanyst and 
    helps identify the most financially rewarding skills to acquire or improve
*/

SELECT 
    skills,
    job_country,
    ROUND (AVG(salary_year_avg), 0) AS avg_salary
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE
    job_title_short = 'Data Analyst'
    AND salary_year_avg IS NOT NULL
GROUP BY
    skills,job_country
ORDER BY
    avg_salary DESC