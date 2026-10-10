CREATE TABLE job_applied(
    job_id INT,
    application_sent_date DATE,
    custom_resume BOOLEAN,
    resume_file_name VARCHAR(255),
    cover_letter_sent BOOLEAN,
    cover_letter_file_name VARCHAR(255),
    status VARCHAR(50)
);

SELECT * FROM job_applied;

INSERT INTO job_applied (job_id ,
    application_sent_date ,
    custom_resume ,
    resume_file_name ,
    cover_letter_sent ,
    cover_letter_file_name ,
    status
) VALUES (2,
'2026-07-02',
true,
'resume_vasi.pdf',
true,
'underwear.pdf',
'submitted'),
(3,
'2025-05-02',
false,
'aloo.pdf',
true,
'aloo_ka_paratha',
'not submitted');

SELECT * FROM job_applied;
