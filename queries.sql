## Part 1: Test it with SQL
Query:
SELECT column_name, data_type FROM information_schema.columns
where table_schema = "techjobs" and table_name = "job";

Result:
Table: job
Columns:
id int PK
employer varchar(255)
name varchar(255)
skills varchar(255)

## Part 2: Test it with SQL
Query:
SELECT name FROM employer
WHERE location = "St. Louis City";

Result:
# name
'Centene Corporation'


## Part 3: Test it with SQL
Query:
TRUNCATE TABLE job;

Query alternative:
DROP TABLE job;

Result:
Job data is cleared from the table. Will have to manually remove column "Employer"
which is no longer needed with the employer_id column linking to the employer table.

Alternative result:
Job table is completely deleted and hibernate will rebuild on next run.

## Part 4: Test it with SQL
Query:
SELECT DISTINCT skill.name, skill.description FROM techjobs.skill
INNER JOIN job_skills ON skill.id = job_skills.skills_id
ORDER BY skill.name ASC;

OR

SELECT DISTINCT skill.name, skill.description FROM techjobs.skill
INNER JOIN job_skills ON skill.id = job_skills.skills_id
WHERE job_skills.jobs_id IS NOT NULL
ORDER BY skill.name ASC;

Both queries return the same result set. The WHERE line is unnecessary because I join the tables on job_skills
which is a join table where there are no NULL job IDs.

Result:
Database
Java	Understanding of language foundation and development practices
JavaScript
Non-coding
Ruby
SQL
