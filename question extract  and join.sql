SELECT 
    EXTRACT(MONTH FROM job_postings_fact.job_posted_date) AS mon,
    company_dim.name ,
    job_postings_fact.job_health_insurance
FROM 
    company_dim
    LEFT JOIN job_postings_fact
    ON
        job_postings_fact.company_id = company_dim.company_id
WHERE 
    job_health_insurance= 'true' 
    AND 
    (
        EXTRACT(MONTH FROM job_postings_fact.job_posted_date)>=5 
            AND 
        EXTRACT(MONTH FROM job_postings_fact.job_posted_date)<=8
    )
    
    