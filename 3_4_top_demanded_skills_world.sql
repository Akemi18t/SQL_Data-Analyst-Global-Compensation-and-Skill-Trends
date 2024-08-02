/*
Q) What are the most in-demand skills for data analysts?
- Join job postiings to inner join table similar to query2
- identify the top 5 in-demand skills for a data analysit.
- Focus on all job postings.
- Why? Retrives the top 5 skills with the highest demand in the job market,
    providing insights into th emost valuable skills for job seekers.
*/
SELECT skills,
       job_country,
COUNT(skills_job_dim.job_id) AS demand_count
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE
    job_title_short = 'Data Analyst'
GROUP BY
    skills, job_postings_fact.job_country
ORDER BY
    demand_count DESC;
