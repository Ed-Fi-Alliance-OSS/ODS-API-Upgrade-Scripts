# Ed-Fi ODS / API v7.1 to v7.2 Application Migration Guide

>[!NOTE]
>The following steps apply to single and multi-tenant environments.

## Preparation

- Plan for a maintenance window, since the upgrade requires stopping IIS Application Pools.
- Back up the existing IIS application directories by copying the sites folders to a secure location.
- Update the [Hosting Bundle](https://learn.microsoft.com/en-us/aspnet/core/host-and-deploy/iis/hosting-bundle) to .NET 8 on the target IIS servers.

## Web API Migration

1. Stop Web API Application Pool:
   1. Identify the Application Pool associated with the Web API application.
   2. Stop the Application Pool to prevent concurrent access during the migration.

2. Delete Web API's application folder:
   1. Delete the folder containing the binaries and other files of the Web API application.

3. Install v7.2:
   1. Follow the steps listed [here](https://docs.ed-fi.org/reference/ods-api/7.2/getting-started/binary-installation/singlemulti-tenant-installation-steps#step-3-install-webapi).
   2. Update the connection strings to point to the upgraded databases.

4. Restart Web Api Application Pool:
   1. Restart the Web Api Application Pool and test that the application starts correctly.

## Swagger Migration

1. Stop SwaggerUI Application Pool:
   1. Identify the Application Pool associated with the SwaggerUI application.
   2. Stop the Application Pool to prevent concurrent access during the migration.

2. Delete SwaggerUI's application folder:
   1. Delete the folder containing the binaries and other files of the SwaggerUI application.

3. Install v7.2:
   1. Follow the steps listed [here](https://docs.ed-fi.org/reference/ods-api/7.2/getting-started/binary-installation/singlemulti-tenant-installation-steps#step-4-install-swagger).

4. Restart SwaggerUI Application Pool:
   1. Restart the SwaggerUI Application Pool and test that the application starts correctly.
