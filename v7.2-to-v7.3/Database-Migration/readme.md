# Ed-Fi ODS / API v7.2 to 7.3 Database Migration

## Preparation

- Generate full backups of the databases.
  - Use database management tools or automated backup scripts.
  - Verify the integrity of the backups.

## Admin and Security Database Migration Steps

>[!NOTE]
>Admin and Security databases can be upgraded using the v7.3 Installers.

### 1. Apply the following scripts

#### `[Admin-001] 7.3 Update.sql`

This script will update a 7.2 Admin Database to 7.3 and update the DeployJournal.

- [SQL Server script](./Admin/MSSQL/[Admin-001]%207.3%20Update.sql).
- [PostgreSQL script](./Admin/PGSQL/[Admin-001]%207.3%20Update.sql).

#### `[Security-001] 7.3 Update.sql`

This script will update a 7.2 Security Database to 7.3 and update the DeployJournal.

- [SQL Server script](./Security/MSSQL/[Security-001]%207.3%20Update.sql).
- [PostgreSQL script](./Security/PGSQL/[Security-001]%207.3%20Update.sql).

### 2. If your 7.2 environment has Change Queries enabled, apply the following scripts

#### `[Security-002] 7.3 ChangeQueries.sql`

This script will update the DeployJournal to a migrated 7.3 Security Database.

- [SQL Server script](./Security/MSSQL/[Security-002]%207.3%20ChangeQueries.sql).
- [PostgreSQL script](./Security/PGSQL/[Security-002]%207.3%20ChangeQueries.sql).

### 3. If your 7.2 environment has the TPDM plugin, apply the following scripts

#### `[Security-003] 7.3 TPDM.sql`

This script will update 7.2 TPDM to 7.3 and update the DeployJournal.

- [SQL Server script](./Security/MSSQL/[Security-003]%207.3%20TPDM.sql).
- [PostgreSQL script](./Security/PGSQL/[Security-003]%207.3%20TPDM.sql).

#### `[Security-004] 7.3 TPDM ChangeQueries.sql` (Only if Change Queries are enabled)

This script will update 7.2 TPDM Change Queries to 7.3 and update the DeployJournal.

- [SQL Server script](./Security/MSSQL/[Security-004]%207.3%20TPDM%20ChangeQueries.sql).
- [PostgreSQL script](./Security/PGSQL/[Security-004]%207.3%20TPDM%20ChangeQueries.sql).

## ODS Database Migration Steps

>[!NOTE]
>Since the ODS installer provision a new ODS database using a backup, a manual upgrade is required.
>For ods context/multi-tenant environments, apply the scripts to all of the ODS databases.

### 1. If your 7.2 environment has Change Queries enabled, apply the following scripts

#### `[ODS-001a] 7.3 Update ChangeQueries Enabled No TPDM.sql`

This script will update a 7.2 ODS Database to 7.3 and update the DeployJournal.

- [SQL Server script](./ODS/MSSQL/[ODS-001a]%207.3%20Update%20ChangeQueries%20Enabled%20No%20TPDM.sql).
- [PostgreSQL script](./ODS/PGSQL/[ODS-001a]%207.3%20Update%20ChangeQueries%20Enabled%20No%20TPDM.sql).

#### `[ODS-001b] 7.3 Update ChangeQueries Enabled And TPDM.sql` (Only if TPDM Extension is used)

This script will update 7.2 TPDM ODS Database to 7.3 and update the DeployJournal.

- [SQL Server script](./ODS/MSSQL/[ODS-001a]%207.3%20Update%20ChangeQueries%20Enabled%20No%20TPDM.sql).
- [PostgreSQL script](./ODS/PGSQL/[ODS-001a]%207.3%20Update%20ChangeQueries%20Enabled%20No%20TPDM.sql).

### 2. If your 7.2 environment has Change Queries disabled, apply the following scripts

#### `[ODS-001c] 7.3 Update ChangeQueries Disabled No TPDM.sql`

This script will update a 7.2 ODS Database to 7.3 and update the DeployJournal.

- [SQL Server script](./ODS/MSSQL/[ODS-001c]%207.3%20Update%20ChangeQueries%20Disabled%20No%20TPDM.sql).
- [PostgreSQL script](./ODS/PGSQL/[ODS-001c]%207.3%20Update%20ChangeQueries%20Disabled%20No%20TPDM.sql).

#### `[ODS-001d] 7.3 Update ChangeQueries Disabled And TPDM.sql` (Only if TPDM Extension is used)

This script will update 7.2 TPDM ODS Database to 7.3 and update the DeployJournal.

- [SQL Server script](./ODS/MSSQL/[ODS-001d]%207.3%20Update%20ChangeQueries%20Disabled%20And%20TPDM.sql).
- [PostgreSQL script](./ODS/PGSQL/[ODS-001d]%207.3%20Update%20ChangeQueries%20Disabled%20And%20TPDM.sql).

### 3. Apply the following scripts

#### `[ODS-002] 7.3 Descriptors.sql`

This script will add 7.3 Descriptors to a migrated 7.3 TPDM ODS Database.

- [SQL Server script](./ODS/MSSQL/[ODS-002]%207.3%20Descriptors.sql).
- [PostgreSQL script](./ODS/PGSQL/[ODS-002]%207.3%20Descriptors.sql).
