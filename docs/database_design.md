# Database Design

## Overview

Launchpad uses a relational database design to organize recruiting workflow information including companies, applications, interviews, documents, and skills.

## Tables

## Companies

Stores company information.

Columns:

- company_id (Primary Key)
- company_name
- industry
- location


## Applications

Stores internship and job applications.

Columns:

- application_id (Primary Key)
- company_id (Foreign Key)
- role
- status
- application_date
- deadline


## Interviews

Stores interview information.

Columns:

- interview_id (Primary Key)
- application_id (Foreign Key)
- round
- interview_date
- notes
- result


## Documents

Stores document metadata.

The actual files are stored in Azure Blob Storage.

Columns:

- document_id (Primary Key)
- application_id (Foreign Key)
- document_type
- file_name
- blob_url


## Skills

Stores technical skills.

Columns:

- skill_id (Primary Key)
- skill_name


## Relationships

Companies have many Applications.

Applications can have multiple Interviews.

Applications can have multiple Documents.

Applications can be associated with required Skills.
