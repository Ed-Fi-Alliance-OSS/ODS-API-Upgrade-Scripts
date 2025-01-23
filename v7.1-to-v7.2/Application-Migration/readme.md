# Ed-Fi ODS / API v7.1 to 7.2 Application Migration

## Preparation

- Create backups of the existing application directories:
  - Copy the current folders of the sites in IIS to a secure location.
- Confirm that .NET 8 is installed on the target servers.
- Plan for a maintenance window, since the upgrade requires stopping the current application pools.

::: note
The following steps apply for single and multi-tenant environments.
:::

## Web API Migration

1. Stop Web API Application Pool
   1. Identify the Application Pool associated with the Web API application.
   2. Stop the Application Pool to prevent concurrent access during the migration.

2. Delete Web API Current Folder
   1. Ensure backups are complete.
   2. Delete the folder containing the binaries and other files of the current Web API application.

3. Install 7.2 Version
   1. Follow the steps listed [here](https://docs.ed-fi.org/reference/ods-api/7.2/getting-started/binary-installation/singlemulti-tenant-installation-steps#step-3-install-webapi).

4. Restart Web Api Application Pool
   - Restart the Web Api Application Pool and test that the application start correctly.

## Swagger Migration

1. Stop SwaggerUI Application Pool
   1. Identify the Application Pool associated with the SwaggerUI application.
   2. Stop the Application Pool to prevent concurrent access during the migration.

2. Delete SwaggerUI Current Folder
   1. Ensure backups are complete.
   2. Delete the folder containing the binaries and other files of the current SwaggerUI application.

3. Install 7.2 Version
   1. Follow the steps listed [here](https://docs.ed-fi.org/reference/ods-api/7.2/getting-started/binary-installation/singlemulti-tenant-installation-steps#step-4-install-swagger).

4. Restart SwaggerUI Application Pool
   - Restart the SwaggerUI Application Pool and test that the application start correctly.
