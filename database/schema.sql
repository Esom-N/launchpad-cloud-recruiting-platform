-- Launchpad Database Schema
-- Azure SQL Database Compatible


-- Companies Table
CREATE TABLE Companies (
    company_id INT PRIMARY KEY,
    company_name VARCHAR(100) NOT NULL,
    industry VARCHAR(100),
    location VARCHAR(100)
);

-- Applications Table
CREATE TABLE Applications (
    application_id INT PRIMARY KEY,
    company_id INT NOT NULL,
    role VARCHAR(100) NOT NULL,
    status VARCHAR(50),
    application_date DATE,
    deadline DATE,

    FOREIGN KEY (company_id)
    REFERENCES Companies(company_id)
);

-- Interviews Table
CREATE TABLE Interviews (
    interview_id INT PRIMARY KEY,
    application_id INT NOT NULL,
    interview_round VARCHAR(50),
    interview_date DATE,
    notes VARCHAR(500),
    result VARCHAR(50),

    FOREIGN KEY (application_id)
    REFERENCES Applications(application_id)
);

-- Documents Table
CREATE TABLE Documents (
    document_id INT PRIMARY KEY,
    application_id INT NOT NULL,
    document_type VARCHAR(50),
    file_name VARCHAR(255),
    blob_url VARCHAR(500),
    upload_date DATE,

    FOREIGN KEY (application_id)
    REFERENCES Applications(application_id)
);

-- Skills Table
CREATE TABLE Skills (
    skill_id INT PRIMARY KEY,
    skill_name VARCHAR(100) NOT NULL
);

-- Application Skills Relationship Table
CREATE TABLE ApplicationSkills (
    application_id INT NOT NULL,
    skill_id INT NOT NULL,

    PRIMARY KEY (application_id, skill_id),

    FOREIGN KEY (application_id)
    REFERENCES Applications(application_id),

    FOREIGN KEY (skill_id)
    REFERENCES Skills(skill_id)
);