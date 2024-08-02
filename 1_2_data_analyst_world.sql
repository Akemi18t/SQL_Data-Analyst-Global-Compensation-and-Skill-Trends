

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
