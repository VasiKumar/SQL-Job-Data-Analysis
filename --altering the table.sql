--altering the table

ALTER TABLE job_applied 
ADD contact VARCHAR(50)

SELECT * FROM job_applied

--update

UPDATE job_applied
SET contact ='hari bhai'
WHERE job_id = 1;

UPDATE job_applied
SET contact ='shonty bhai'
WHERE job_id = 2;

UPDATE job_applied
SET contact ='chalu bhai'
WHERE job_id = 3;

ALTER TABLE job_applied RENAME COLUMN contact TO contact_name

ALTER TABLE job_applied ALTER COLUMN contact_name TYPE TEXT;

ALTER TABLE job_applied ADD COLUMN caste VARCHAR(50);

ALTER TABLE job_applied DROP COLUMN caste;