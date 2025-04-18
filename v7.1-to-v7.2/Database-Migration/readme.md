# Ed-Fi ODS / API v7.1 to v7.2 Database Migration Guide

## Preparation

First copy the Admin, Security, and ODS databases; for example, by backing them up and restoring them.
Then execute the scripts listed below on the copied databases.

## Admin Database Migration Steps

>[!NOTE]
>The Admin database can be upgraded using the v7.2 Installers.

### 1. Apply the following script
- `[Admin-001] 7.2 Update.sql` Upgrades the database to v7.2 and updates the `DeployJournal` table:
  - [SQL Server](./Admin/MSSQL/[Admin-001]%207.2%20Update.sql)
  - [PostgreSQL](./Admin/PGSQL/[Admin-001]%207.2%20Update.sql)

## Security Database Migration Steps

>[!NOTE]
>The Security database can be upgraded using the v7.2 Installers.

### 1. Apply the following script
- `[Security-001] 7.2 Update.sql` Upgrades the database to v7.2 and updates the `DeployJournal` table:
  - [SQL Server](./Security/MSSQL/[Security-001]%207.2%20Update.sql)
  - [PostgreSQL](./Security/PGSQL/[Security-001]%207.2%20Update.sql)

### 2. If your v7.1 environment has Change Queries enabled, apply the following script
- `[Security-002] 7.2 ChangeQueries.sql` Updates the `DeployJournal` table:
  - [SQL Server](./Security/MSSQL/[Security-002]%207.2%20ChangeQueries.sql)
  - [PostgreSQL](./Security/PGSQL/[Security-002]%207.2%20ChangeQueries.sql)

### 3. If your v7.1 environment has the TPDM plugin, apply the following script
- `[Security-003] 7.2 TPDM.sql` Upgrades the TPDM extension to v7.2 and updates the `DeployJournal` table:
  - [SQL Server](./Security/MSSQL/[Security-003]%207.2%20TPDM.sql)
  - [PostgreSQL](./Security/PGSQL/[Security-003]%207.2%20TPDM.sql)

### 4. If your v7.1 environment has the TPDM plugin and Change Queries enabled, apply the following script
- `[Security-004] 7.2 TPDM ChangeQueries.sql` Upgrades TPDM Change Queries v7.2 and updates the `DeployJournal` table:
  - [SQL Server](./Security/MSSQL/[Security-004]%207.2%20TPDM%20ChangeQueries.sql)
  - [PostgreSQL](./Security/PGSQL/[Security-004]%207.2%20TPDM%20ChangeQueries.sql)

## ODS Database Migration Steps

>[!NOTE]
>Since the ODS installer provisions a new ODS database using a backup, a manual upgrade is required.

>[!NOTE]
>For ODS context/multi-tenant environments, apply the scripts to all of the ODS databases.

### 1. Apply the following scripts
- `[ODS-001] 7.2 Update.sql` Upgrades the database to v7.2 and updates the `DeployJournal` table:
  - [SQL Server](./ODS/MSSQL/[ODS-001]%207.2%20Update.sql)
  - [PostgreSQL](./ODS/PGSQL/[ODS-001]%207.2%20Update.sql)

- `[ODS-002] 7.2 Descriptors.sql` Adds v7.2 Descriptors:
  - [SQL Server](./ODS/MSSQL/[ODS-002]%207.2%20Descriptors.sql)
  - [PostgreSQL](./ODS/PGSQL/[ODS-002]%207.2%20Descriptors.sql)

### 2. If your v7.1 environment has Change Queries enabled, apply the following script
- `[ODS-003] 7.2 ChangeQueries.sql` Upgrades the Change Queries feature to v7.2 and updates the `DeployJournal` table:
  - [SQL Server](./ODS/MSSQL/[ODS-003]%207.2%20ChangeQueries.sql)
  - [PostgreSQL](./ODS/PGSQL/[ODS-003]%207.2%20ChangeQueries.sql)

### 3. If your v7.1 environment has the TPDM plugin, apply the following script
- `[ODS-004] 7.2 TPDM.sql` Upgrades the TPDM extension to v7.2 and updates the `DeployJournal` table:
  - [SQL Server](./ODS/MSSQL/[ODS-004]%207.2%20TPDM.sql)
  - [PostgreSQL](./ODS/PGSQL/[ODS-004]%207.2%20TPDM.sql)

### 4. If your v7.1 environment has the TPDM plugin and Change Queries enabled, apply the following script
- `[ODS-005] 7.2 TPDM ChangeQueries.sql` Upgrades TPDM Change Queries v7.2 and updates the `DeployJournal` table:
  - [SQL Server](./ODS/MSSQL/[ODS-005]%207.2%20TPDM%20ChangeQueries.sql)
  - [PostgreSQL](./ODS/PGSQL/[ODS-005]%207.2%20TPDM%20ChangeQueries.sql)