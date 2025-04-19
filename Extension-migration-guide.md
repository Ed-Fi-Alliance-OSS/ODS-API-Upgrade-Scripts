# Extension Migration Guide

Since each extension is unique, we can't provide a universal migration script, in this guide you'll learn how to write your own migration scripts for your extensions.

The idea is to generate and run your extension in a blank, updated ODS API; then compare your extension's schema with the newly generated schema and apply the resulting changes.

This guide assumes you have already gone through the Database Migration Guide available in this repository.

Follow these steps:
1. Set up a blank, updated ODS API by following [this guide](https://docs.ed-fi.org/reference/ods-api/getting-started/source-code-installation/). If Change Queries and/or TPDM are disabled in your API, also disable them here
2. Create your extension(s) project by following the `Create Extension Project in ODS / API Solution` from [this guide](https://docs.ed-fi.org/reference/ods-api/how-to-guides/how-to-extend-the-ed-fi-ods-api-alternative-education-program-example#step-4-create-extension-project-in-ods--api-solution)
3. Update [MetaEd IDE](https://docs.ed-fi.org/reference/metaed/) to its latest version
4. In MetaEd IDE's [preferences](https://docs.ed-fi.org/reference/metaed/ide-user-guide/creating-and-maintaining-your-extension/#step-3-configure-metaed-preferences), set the `Target Ods Api Version` to the version you want to migrate to, and set the `Ods Api Deployment Directory` to the directory containing the blank ODS API from the first step
5. Deploy your extension(s) from MetaEd IDE
6. Run `initdev` again
7. Compare your existing Admin, Security, and ODS DBs schemas (for example by following [this guide](https://edfi.atlassian.net/wiki/spaces/rc/pages/24805773/How+To+View+API+and+Database+changes+in+the+latest+ODS+API+Release#HowTo:ViewAPIandDatabasechangesinthelatestODS/APIRelease-Viewingdatabasechanges)) against the new DBs created in the 1st step. At this point all the differences should be around your extension(s)
8. In the schema comparison tool, generate the migration scripts and execute them (remember to back up your DBs first)
9. In the blank ODS API from the first step, search for all the .sql scripts created by MetaEd IDE for your extension(s) and insert them in the `DeployJournal` table (if Change Queries and/or TPDM are disabled don't insert the related scripts). Note that we are not executing them because they would fail since some of them attempt to create tables that are already there because this is an upgrade
10. Deploy your updated extension's .dll to your web application server