# System Requirements

## Functional Requirements

## Application Management

The system should store and manage:

- company information
- job positions
- application status
- application dates
- application deadlines


## Interview Tracking

The system should store:

- interview rounds
- interview dates
- interview notes
- interview outcomes


## Document Management

The system should support storage of:

- resumes
- cover letters
- job descriptions
- interview documents


## Deadline Monitoring

The system should identify upcoming application deadlines and support automated reminders.


# Technical Requirements

The solution will use Microsoft Azure services:

## Azure SQL Database

Used for storing structured recruiting information including:

- companies
- applications
- interviews
- skills


## Azure Blob Storage

Used for storing unstructured documents including:

- resumes
- job descriptions
- interview files


## Azure Functions

Used for automated processes such as:

- checking upcoming deadlines
- triggering reminders