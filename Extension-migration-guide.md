# Extension Migration Guide

Since each extension is unique, we can't provide a universal migration script.
In this guide, you'll learn how to write migration scripts tailored to your
specific extensions.

The approach involves creating your extension in a blank instance of the target
ODS/API version, comparing its schema with your current implementation, and
applying the necessary changes.

> **Note:** This guide assumes you have already applied necessary scripts by
> following the Database Migration Guide available in this repository.

## Steps to Upgrade Your Extension

### 1. Set up a blank, updated ODS/API

Follow [this
guide](https://docs.ed-fi.org/reference/ods-api/getting-started/source-code-installation/)
to set up a blank instance of the target ODS/API version. If Change Queries
and/or TPDM are disabled in your current API, be sure to disable them in this
instance as well.

### 2. Create your extension project

Create your extension project(s) by following the `Create Extension Project in
   ODS / API Solution` instructions in [this
   guide](https://docs.ed-fi.org/reference/ods-api/how-to-guides/how-to-extend-the-ed-fi-ods-api-alternative-education-program-example#step-4-create-extension-project-in-ods--api-solution)

### 3. Update [MetaEd IDE](https://docs.ed-fi.org/reference/metaed/)

Ensure that you are using the latest version of MetaEd IDE.

### 4. Configure MetaEd IDE [Preferences](https://docs.ed-fi.org/reference/metaed/ide-user-guide/creating-and-maintaining-your-extension/#step-3-configure-metaed-preferences)

- Set the **Target ODS API Version** to the version you're migrating to.
- Set the **ODS API Deployment Directory** to the path of the blank ODS/API you
  created in step 1.

### 5. Deploy your extension(s)

Use MetaEd IDE to deploy your extension(s) to the blank ODS/API environment.

### 6. Run initdev

This will initialize the database environment for the blank ODS/API from step 1
with extension artifacts.

### 7. Compare schemas

Compare your existing Admin, Security, and ODS DBs schemas (for example by
following [this
guide](https://edfi.atlassian.net/wiki/spaces/rc/pages/24805773/How+To+View+API+and+Database+changes+in+the+latest+ODS+API+Release#HowTo:ViewAPIandDatabasechangesinthelatestODS/APIRelease-Viewingdatabasechanges))
against the new DBs created in the 1st step. The differences should pertain only
to your extension(s).

### 8. Generate and apply migration scripts

Use the schema comparison tool to generate the required migration scripts. Be
sure to back up your databases before executing them.

### 9. Update the DeployJournal table

In the `DeployJournal` table of the blank ODS/API instance, locate all `.sql`
scripts created by MetaEd IDE for your extension(s), and insert the relevant entries
into the `DeployJournal` table of your current ODS instance.

### 10. Deploy the updated extension DLL

Finally, deploy your updated extension `.dll` to your web application server.
