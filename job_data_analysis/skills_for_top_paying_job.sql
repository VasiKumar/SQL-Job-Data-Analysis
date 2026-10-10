SELECT 
job_postings_fact.job_id,
job_title,
skills_dim.skills,
job_postings_fact.job_title_short,
name as company_name,
salary_year_avg

FROM job_postings_fact

INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id

INNER JOIN company_dim ON company_dim.company_id = job_postings_fact.company_id

WHERE salary_year_avg IS NOT NULL 
AND job_title_short= 'Data Analyst' and job_location ='Anywhere'
ORDER BY salary_year_avg DESC
LIMIT 10;
