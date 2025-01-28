# Ed-Fi ODS / API v7.1 to 7.2 Database Migration

## Preparation

- Generate full backups of the databases.
  - Use database management tools or automated backup scripts.
  - Verify the integrity of the backups.

## Admin and Security Database Migration Steps

::: note
Admin and Security databases can be upgraded using the v7.2 Installers.
:::

### 1. Apply the following scripts

#### `[Admin-001] 7.2 Update.sql`

This script will update a 7.1 Admin Database to 7.2 and update the DeployJournal.

- [SQL Server script](./Admin/MSSQL/[Admin-001]%207.2%20Update.sql).
- [Postgres SQL script](./Admin/PGSQL/[Admin-001]%207.2%20Update.sql).

#### `[Security-001] 7.2 Update.sql`

This script will update a 7.1 Security Database to 7.2 and update the DeployJournal.

- [SQL Server script](./Security/MSSQL/[Security-001]%207.2%20Update.sql).
- [Postgres SQL script](./Security/PGSQL/[Security-001]%207.2%20Update.sql).

### 2. If your 7.1 environment has Change Queries enabled, apply the following scripts

#### `[Security-002] 7.2 ChangeQueries.sql`

This script will update the DeployJournal to a migrated 7.2 Security Database.

- [SQL Server script](./Security/MSSQL/[Security-002]%207.2%20ChangeQueries.sql).
- [Postgres SQL script](./Security/PGSQL/[Security-002]%207.2%20ChangeQueries.sql).

### 3. If your 7.1 environment has the TPDM plugin, apply the following scripts

#### `[Security-003] 7.2 TPDM.sql`

This script will update 7.1 TPDM to 7.2 and update the DeployJournal.

- [SQL Server script](./Security/MSSQL/[Security-003]%207.2%20TPDM.sql).
- [Postgres SQL script](./Security/PGSQL/[Security-003]%207.2%20TPDM.sql).

#### `[Security-004] 7.2 TPDM ChangeQueries.sql` (Only if Change Queries are enabled)

This script will update 7.1 TPDM Change Queries to 7.2 and update the DeployJournal.

- [SQL Server script](./Security/MSSQL/[Security-004]%207.2%20TPDM%20ChangeQueries.sql).
- [Postgres SQL script](./Security/PGSQL/[Security-004]%207.2%20TPDM%20ChangeQueries.sql).

## ODS Database Migration Steps

::: note
Since the ODS installer provision a new ODS database using a backup, a manual upgrade is required.

For ods context/multi-tenant environments, apply the scripts to all of the ODS databases.
:::

### 1. Apply the following scripts

#### `[ODS-001] 7.2 Update.sql`

This script will update a 7.1 ODS Database to 7.2 and update the DeployJournal.

- [SQL Server script](./ODS/MSSQL/[ODS-001]%207.2%20Update.sql).
- [Postgres SQL script](./ODS/PGSQL/[ODS-001]%207.2%20Update.sql).

#### `[ODS-002] 7.2 Descriptors.sql`

This script will add 7.2 Descriptors to a migrated 7.2 TPDM ODS Database.

- [SQL Server script](./ODS/MSSQL/[ODS-002]%207.2%20Descriptors.sql).
- [Postgres SQL script](./ODS/PGSQL/[ODS-002]%207.2%20Descriptors.sql).

### 2. If your 7.1 environment has Change Queries enabled, apply the following scripts

#### `[ODS-003] 7.2 ChangeQueries.sql`

This script will update ChangeQueries to 7.2 and update the DeployJournal.

- [SQL Server script](./ODS/MSSQL/[ODS-003]%207.2%20ChangeQueries.sql).
- [Postgres SQL script](./ODS/PGSQL/[ODS-003]%207.2%20ChangeQueries.sql).

### 3. If your 7.1 environment has the TPDM plugin, apply the following scripts

#### `[ODS-004] 7.2 TPDM.sql`

This script will update 7.1 TPDM ODS Database to 7.2 and update the DeployJournal.

- [SQL Server script](./ODS/MSSQL/[ODS-004]%207.2%20TPDM.sql).
- [Postgres SQL script](./ODS/PGSQL/[ODS-004]%207.2%20TPDM.sql).

#### `[ODS-005] 7.2 TPDM ChangeQueries.sql` (Only if Change Queries are enabled)

This script will update the DeployJournal to a migrated 7.2 TPDM ODS Database.

- [SQL Server script](./ODS/MSSQL/[ODS-005]%207.2%20TPDM%20ChangeQueries.sql).
- [Postgres SQL script](./ODS/PGSQL/[ODS-005]%207.2%20TPDM%20ChangeQueries.sql).
