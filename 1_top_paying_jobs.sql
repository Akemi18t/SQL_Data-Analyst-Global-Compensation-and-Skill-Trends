/*
Q) What are the top-paying data analyst job?
-identify the top 30 higest-paying Data Analyst roles that are available remotly.
-idently the job-posted date as well as salary(Nulls are removed)
-Why? Highlight the top-paying opportunities for Data Analysts, providing insights such as the company's name, posting date, and location for salary comparison.

*/
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