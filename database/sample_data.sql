-- Sample Company Data

INSERT INTO Companies
(company_id, company_name, industry, location)
VALUES
(1, 'Accenture', 'Technology Consulting', 'Atlanta'),
(2, 'Deloitte', 'Technology Consulting', 'New York'),
(3, 'JPMorgan Chase', 'Financial Services Technology', 'New York'),
(4, 'Capital One', 'Financial Technology', 'McLean'),
(5, 'McKinsey & Company', 'Management Consulting', 'New York');


-- Sample Application Data

INSERT INTO Applications
(application_id, company_id, role, status, application_date, deadline)
VALUES
(101, 1, 'Technology Summer Analyst', 'Interview', '2025-09-01', '2025-10-08'),
(102, 2, 'Business Technology Solutions Summer Scholar', 'Applied', '2025-09-05', '2025-10-15'),
(103, 3, 'Corporate Analyst Development Program', 'Applied', '2025-09-10', '2025-10-20'),
(104, 4, 'Business Analyst Intern', 'Assessment', '2025-09-12', '2025-10-25'),
(105, 5, 'Business Analyst Intern', 'Saved', '2025-09-18', '2025-11-01');


-- Sample Interview Data

INSERT INTO Interviews
(interview_id, application_id, interview_round, interview_date, notes, result)
VALUES
(1, 101, 'Behavioral', '2025-10-15', 'Discussed teamwork, leadership, and problem solving', 'Completed'),
(2, 101, 'Technical', '2025-10-20', 'Discussed SQL, databases, and cloud concepts', 'Pending'),
(3, 102, 'Recruiter Screen', '2025-10-18', 'Discussed technology consulting interests', 'Scheduled');


-- Sample Document Data

INSERT INTO Documents
(document_id, application_id, document_type, file_name, blob_url, upload_date)
VALUES
(1, 101, 'Resume', 'Accenture_Resume.pdf', 'https://launchpadstorage.blob.core.windows.net/documents/Accenture_Resume.pdf', '2025-09-01'),
(2, 101, 'Job Description', 'Accenture_Technology_Analyst_Description.pdf', 'https://launchpadstorage.blob.core.windows.net/documents/Accenture_Technology_Analyst_Description.pdf', '2025-09-01'),
(3, 102, 'Resume', 'Deloitte_Resume.pdf', 'https://launchpadstorage.blob.core.windows.net/documents/Deloitte_Resume.pdf', '2025-09-05');


-- Sample Skill Data

INSERT INTO Skills
(skill_id, skill_name)
VALUES
(1, 'SQL'),
(2, 'Microsoft Azure'),
(3, 'Cloud Computing'),
(4, 'Database Design'),
(5, 'Data Analysis'),
(6, 'Business Intelligence'),
(7, 'Consulting'),
(8, 'Communication');


-- Application Skill Relationships

INSERT INTO ApplicationSkills
(application_id, skill_id)
VALUES
(101, 1),  -- Accenture requires SQL
(101, 2),  -- Accenture requires Azure
(101, 3),  -- Accenture requires Cloud Computing

(102, 1),  -- Deloitte requires SQL
(102, 5),  -- Deloitte requires Data Analysis
(102, 7),  -- Deloitte requires Consulting

(103, 5),  -- JPMorgan requires Data Analysis
(103, 8),  -- JPMorgan requires Communication

(104, 1),  -- Capital One requires SQL
(104, 6),  -- Capital One requires Business Intelligence

(105, 7),  -- McKinsey requires Consulting
(105, 8);  -- McKinsey requires Communication