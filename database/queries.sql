-- Query 1:
-- View all applications with company information

SELECT
    Applications.application_id,
    Companies.company_name,
    Applications.role,
    Applications.status,
    Applications.application_date,
    Applications.deadline

FROM Applications

JOIN Companies
ON Applications.company_id = Companies.company_id;

-- Query 2:
-- Count applications by status

SELECT
    status,
    COUNT(*) AS total_applications

FROM Applications

GROUP BY status;

-- Query 3:
-- Find applications requiring Azure skills

SELECT
    Companies.company_name,
    Applications.role,
    Skills.skill_name

FROM Applications

JOIN Companies
ON Applications.company_id = Companies.company_id

JOIN ApplicationSkills
ON Applications.application_id = ApplicationSkills.application_id

JOIN Skills
ON ApplicationSkills.skill_id = Skills.skill_id

WHERE Skills.skill_name = 'Microsoft Azure';

-- Query 4:
-- View upcoming interview activity

SELECT
    Companies.company_name,
    Applications.role,
    Interviews.interview_round,
    Interviews.interview_date,
    Interviews.result

FROM Interviews

JOIN Applications
ON Interviews.application_id = Applications.application_id

JOIN Companies
ON Applications.company_id = Companies.company_id;

-- Query 5:
-- View skills required for each application

SELECT
    Companies.company_name,
    Applications.role,
    Skills.skill_name

FROM ApplicationSkills

JOIN Applications
ON ApplicationSkills.application_id = Applications.application_id

JOIN Companies
ON Applications.company_id = Companies.company_id

JOIN Skills
ON ApplicationSkills.skill_id = Skills.skill_id

ORDER BY Companies.company_name;

