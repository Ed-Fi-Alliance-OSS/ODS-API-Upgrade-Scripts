# Ed-Fi ODS / API v7.2 to v7.3 Database Migration Guide

## Preparation

First copy the Admin, Security, and ODS databases; for example, by backing them up and restoring them.
Then execute the scripts listed below on the copied databases.

## Admin Database Migration Steps

>[!NOTE]
>It's recommended that you use the v7.3 installer to upgrade the Admin database, but as an alternative, you can execute the script below instead.

### 1. Apply the following script
- `[Admin-001] 7.3 Update.sql` Upgrades the database to v7.3 and updates the `DeployJournal` table:
  - [SQL Server](./Admin/MSSQL/[Admin-001]%207.3%20Update.sql)
  - [PostgreSQL](./Admin/PGSQL/[Admin-001]%207.3%20Update.sql)

## Security Database Migration Steps

>[!NOTE]
>It's recommended that you use the v7.3 installer to upgrade the Security database, but as an alternative, you can execute the scripts below instead.

### 1. Apply the following script
- `[Security-001] 7.3 Update.sql` Upgrades the database to v7.3 and updates the `DeployJournal` table:
  - [SQL Server](./Security/MSSQL/[Security-001]%207.3%20Update.sql)
  - [PostgreSQL](./Security/PGSQL/[Security-001]%207.3%20Update.sql)

### 2. If your v7.2 environment has Change Queries enabled, apply the following script
- `[Security-002] 7.3 ChangeQueries.sql` Updates the `DeployJournal` table:
  - [SQL Server](./Security/MSSQL/[Security-002]%207.3%20ChangeQueries.sql)
  - [PostgreSQL](./Security/PGSQL/[Security-002]%207.3%20ChangeQueries.sql)

### 3. If your v7.2 environment has the TPDM plugin, apply the following script
- `[Security-003] 7.3 TPDM.sql` Updates the `DeployJournal` table:
  - [SQL Server](./Security/MSSQL/[Security-003]%207.3%20TPDM.sql)
  - [PostgreSQL](./Security/PGSQL/[Security-003]%207.3%20TPDM.sql)

### 4. If your v7.2 environment has the TPDM plugin and has Change Queries enabled, apply the following script
- `[Security-004] 7.3 TPDM ChangeQueries.sql` Updates the `DeployJournal` table:
  - [SQL Server](./Security/MSSQL/[Security-004]%207.3%20TPDM%20ChangeQueries.sql)
  - [PostgreSQL](./Security/PGSQL/[Security-004]%207.3%20TPDM%20ChangeQueries.sql)

## ODS Database Migration Steps

>[!NOTE]
>For ODS context/multi-tenant environments, apply the scripts to all of the ODS databases.

### 1. Choose and execute a script

If your v7.2 environment has Change Queries enabled and has the TPDM extension, execute:
- `[ODS-001b] 7.3 Update ChangeQueries Enabled And TPDM.sql`
  - [SQL Server](./ODS/MSSQL/[ODS-001b]%207.3%20Update%20ChangeQueries%20Enabled%20And%20TPDM.sql)
  - [PostgreSQL](./ODS/PGSQL/[ODS-001b]%207.3%20Update%20ChangeQueries%20Enabled%20And%20TPDM.sql)

If your v7.2 environment has Change Queries disabled and has the TPDM extension, execute:
- `[ODS-001d] 7.3 Update ChangeQueries Disabled And TPDM.sql`
  - [SQL Server](./ODS/MSSQL/[ODS-001d]%207.3%20Update%20ChangeQueries%20Disabled%20And%20TPDM.sql)
  - [PostgreSQL](./ODS/PGSQL/[ODS-001d]%207.3%20Update%20ChangeQueries%20Disabled%20And%20TPDM.sql)

If your v7.2 environment has Change Queries enabled and doesn't have the TPDM extension, execute:
- `[ODS-001a] 7.3 Update ChangeQueries Enabled No TPDM.sql`
  - [SQL Server](./ODS/MSSQL/[ODS-001a]%207.3%20Update%20ChangeQueries%20Enabled%20No%20TPDM.sql)
  - [PostgreSQL](./ODS/PGSQL/[ODS-001a]%207.3%20Update%20ChangeQueries%20Enabled%20No%20TPDM.sql)

If your v7.2 environment has Change Queries disabled and doesn't have the TPDM extension, execute:
- `[ODS-001c] 7.3 Update ChangeQueries Disabled No TPDM.sql`
  - [SQL Server](./ODS/MSSQL/[ODS-001c]%207.3%20Update%20ChangeQueries%20Disabled%20No%20TPDM.sql)
  - [PostgreSQL](./ODS/PGSQL/[ODS-001c]%207.3%20Update%20ChangeQueries%20Disabled%20No%20TPDM.sql)

### 2. Apply the following script
- `[ODS-002] 7.3 Descriptors.sql` Adds v7.3 Descriptors:
  - [SQL Server](./ODS/MSSQL/[ODS-002]%207.3%20Descriptors.sql)
  - [PostgreSQL](./ODS/PGSQL/[ODS-002]%207.3%20Descriptors.sql)

## Migrate your extensions
[This guide](../../Extension-migration-guide.md) explains how to generate the migration scripts for your extension.
