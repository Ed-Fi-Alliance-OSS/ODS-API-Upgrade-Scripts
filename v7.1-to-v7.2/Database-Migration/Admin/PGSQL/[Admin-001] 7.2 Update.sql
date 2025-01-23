-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

-- Altering Table [dbo].[OdsInstanceDerivatives]...
BEGIN;
    ALTER TABLE dbo.odsinstancederivatives
        ALTER COLUMN connectionstring TYPE character varying(1500) COLLATE pg_catalog."default";
END;

-- Updating DeployJournal Scripts';
BEGIN;

    DELETE FROM public."DeployJournal";

    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (1, 'Artifacts.PgSql.Structure.Admin.0010-Schemas.sql', now()::timestamp);
    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (2, 'Artifacts.PgSql.Structure.Admin.0020-Tables.sql', now()::timestamp);
    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (3, 'Artifacts.PgSql.Structure.Admin.0030-ForeignKey.sql', now()::timestamp);
    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (4, 'Artifacts.PgSql.Structure.Admin.0040-IdColumnIndexes.sql', now()::timestamp);
    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (5, 'Artifacts.PgSql.Structure.Admin.0050-StoredProcedures.sql', now()::timestamp);
    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (6, 'Artifacts.PgSql.Structure.Admin.0051-Convert-AccessTokenIsValid-to-Function.sql', now()::timestamp);
    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (7, 'Artifacts.PgSql.Structure.Admin.0060-Add-OwnershipTokens.sql', now()::timestamp);
    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (8, 'Artifacts.PgSql.Structure.Admin.0061-Add-ApiClientsOwnershipTokens.sql', now()::timestamp);
    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (9, 'Artifacts.PgSql.Structure.Admin.0062-Add-CreatorOwnershipTokenId-To-ApiClients.sql', now()::timestamp);
    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (10, 'Artifacts.PgSql.Structure.Admin.0064-Update-GetClientForToken-For-Record-Level-Ownership.sql', now()::timestamp);
    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (11, 'Artifacts.PgSql.Structure.Admin.0065-Update-GetClientForToken-For-Scope-Support.sql', now()::timestamp);
    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (12, 'Artifacts.PgSql.Structure.Admin.0070-Identity-Support.sql', now()::timestamp);
    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (13, 'Artifacts.PgSql.Structure.Admin.0080-Add-Index-ClientAccessTokens-Expiration.sql', now()::timestamp);
    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (14, 'Artifacts.PgSql.Structure.Admin.0090-Add-Expiration-to-GetClientForToken.sql', now()::timestamp);
    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (15, 'Artifacts.PgSql.Structure.Admin.0100-Add-ApiClient-to-GetClientForToken.sql', now()::timestamp);
    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (16, 'Artifacts.PgSql.Structure.Admin.0110-GetClient-ForToken-ForKey-using-shared-view.sql', now()::timestamp);
    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (17, 'Artifacts.PgSql.Structure.Admin.0120-Add-GetClientForKey-Indexes.sql', now()::timestamp);
    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (18, 'Artifacts.PgSql.Structure.Admin.0130-Add-ProfileDefinition-to-Profile.sql', now()::timestamp);
    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (19, 'Artifacts.PgSql.Structure.Admin.0131-Add-ApiClientOdsInstances-Table-Modify-GetClientForToken.sql', now()::timestamp);
    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (20, 'Artifacts.PgSql.Structure.Admin.0140-Add-GetOdsInstanceConfigurationById-Function.sql', now()::timestamp);
    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (21, 'Artifacts.PgSql.Structure.Admin.0141-Add-OdsInstanceDerivative.sql', now()::timestamp);
    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (22, 'Artifacts.PgSql.Structure.Admin.0142-Add-OdsInstanceContext.sql', now()::timestamp);
    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (23, 'Artifacts.PgSql.Structure.Admin.0143-Update-GetOdsInstanceConfigurationById.sql', now()::timestamp);
    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (24, 'Artifacts.PgSql.Structure.Admin.0144-Drop-OdsInstanceComponent.sql', now()::timestamp);
    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (25, 'Artifacts.PgSql.Structure.Admin.0145-Drop-OdsInstances-UnusedCols.sql', now()::timestamp);
    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (26, 'Artifacts.PgSql.Structure.Admin.0150-Alter-EducationOrganizationId-to-bigint.sql', now()::timestamp);
    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (27, 'Artifacts.PgSql.Structure.Admin.0155-Alter-OdsInstances-AllowNullOnInstanceTypeColumn.sql', now()::timestamp);
    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (28, 'Artifacts.PgSql.Structure.Admin.0160-Rename-OdsInstanceContext.sql', now()::timestamp);
    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (29, 'Artifacts.PgSql.Structure.Admin.0161-Rename-OdsInstancederivative.sql', now()::timestamp);
    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (30, 'Artifacts.PgSql.Structure.Admin.0170-Drop-OdsInstance-From-Application.sql', now()::timestamp);
    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (31, 'Artifacts.PgSql.Structure.Admin.0171-Alter-OdsInstances-ConnectionString.sql', now()::timestamp);
    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (32, 'Artifacts.PgSql.Structure.Admin.0172-Alter-ApplicationEducationOrganizations.sql', now()::timestamp);
    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (33, 'Artifacts.PgSql.Structure.Admin.0173-Add-GetOdsInstanceContextValues.sql', now()::timestamp);
    INSERT INTO public."DeployJournal" (schemaversionsid, scriptname, applied) VALUES (34, 'Artifacts.PgSql.Structure.Admin.0174-Alter-OdsInstanceDerivatives-ConnectionString.sql', now()::timestamp);

    ALTER SEQUENCE public."DeployJournal_schemaversionsid_seq" RESTART WITH 35;
END;