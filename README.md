# Launchpad – Cloud Recruiting Management Platform

## Overview

Launchpad is a cloud-based recruiting management platform that centralizes internship and job application tracking using Microsoft Azure services. The project demonstrates how organizations can organize structured recruiting data, securely store documents, and maintain a scalable cloud architecture.

This project was built to explore how cloud technologies can improve business workflows commonly managed through spreadsheets and disconnected files.

---

## Business Problem

Students often manage internship recruiting with spreadsheets, folders, and notes spread across multiple applications. This makes it difficult to:

- Track application progress
- Organize resumes and job descriptions
- Prepare for interviews
- Monitor application deadlines

Launchpad provides a centralized cloud solution that stores recruiting information in Azure SQL Database while managing supporting documents in Azure Blob Storage.

---

## Solution Architecture

User
↓
Azure SQL Database
↓
Azure Blob Storage

Azure SQL stores structured recruiting information such as:

- Companies
- Applications
- Interviews
- Skills
- Documents (metadata)

Azure Blob Storage stores:

- Resume PDFs
- Job descriptions
- Interview notes

---

## Azure Services Used

| Service | Purpose |
|----------|---------|
| Azure SQL Database | Store structured recruiting data |
| Azure Blob Storage | Store recruiting documents |
| Azure Resource Group | Organize cloud resources |

---

## Database Design

The relational database consists of six tables:

- Companies
- Applications
- Interviews
- Documents
- Skills
- ApplicationSkills

Relationships were normalized to reduce redundancy and improve maintainability.

---

## Features

- Track internship applications
- Store company information
- Record interview details
- Organize recruiting documents
- Map required skills to applications
- Execute SQL queries for recruiting analytics

---

## Sample SQL Queries

Examples include:

- Applications by status
- Upcoming deadlines
- Required skills by company
- Interview history
- Company application summary

---

## Project Structure

```

launchpad-cloud-recruiting-platform/

database/
docs/
images/
README.md

```

---

## Project Screenshots

### Azure Resource Group

Azure resources deployed for the Launchpad platform.

![Azure Resource Group](images/resource-group.png)

---

### Azure SQL Database

Azure SQL Database hosting the Launchpad relational database.

![Azure SQL Database](images/azure-sql-database.png)

---

### Azure Blob Storage

Blob Storage container used to store recruiting documents.

![Azure Blob Storage](images/blob-storage.png)

---

### SQL Query Results

Example query showing recruiting application data stored in Azure SQL Database.

![SQL Query Results](images/sql-query-results.png)

---

## Future Improvements

- Azure Functions for automated deadline reminders
- Email notifications
- Web application frontend
- Microsoft Entra authentication
- Dashboard reporting

---

## Technologies

- Microsoft Azure
- Azure SQL Database
- Azure Blob Storage
- SQL
- Visual Studio Code
- Git
- GitHub

---

## Author

Esom Nwachukwu
