-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

BEGIN;

    COMMENT ON COLUMN tpdm.schoolextension.postsecondaryinstitutionid
        IS 'The ID of the post secondary institution. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN tpdm.schoolextension.schoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN tpdm.evaluationrating.schoolid
        IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
    COMMENT ON COLUMN tpdm.candidateaddress.nameofcounty
        IS 'The name of the county, parish, borough, or comparable unit (within a state) in which an address is located.';

END;

BEGIN;


    INSERT INTO public."DeployJournal" (scriptname, applied) VALUES ('Extensions.TPDM.1.1.0.Standard.5.1.0.Artifacts.PgSql.Structure.Ods.0010-EXTENSION-TPDM-Schemas.sql', '2024-05-10 21:27:30.762608');
    INSERT INTO public."DeployJournal" (scriptname, applied) VALUES ('Extensions.TPDM.1.1.0.Standard.5.1.0.Artifacts.PgSql.Structure.Ods.0020-EXTENSION-TPDM-Tables.sql', '2024-05-10 21:27:30.896114');
    INSERT INTO public."DeployJournal" (scriptname, applied) VALUES ('Extensions.TPDM.1.1.0.Standard.5.1.0.Artifacts.PgSql.Structure.Ods.0030-EXTENSION-TPDM-ForeignKeys.sql', '2024-05-10 21:27:31.111388');
    INSERT INTO public."DeployJournal" (scriptname, applied) VALUES ('Extensions.TPDM.1.1.0.Standard.5.1.0.Artifacts.PgSql.Structure.Ods.0040-EXTENSION-TPDM-IdColumnUniqueIndexes.sql', '2024-05-10 21:27:31.124601');
    INSERT INTO public."DeployJournal" (scriptname, applied) VALUES ('Extensions.TPDM.1.1.0.Standard.5.1.0.Artifacts.PgSql.Structure.Ods.0050-EXTENSION-TPDM-ExtendedProperties.sql', '2024-05-10 21:27:31.135191');
    INSERT INTO public."DeployJournal" (scriptname, applied) VALUES ('Extensions.TPDM.1.1.0.Standard.5.1.0.Artifacts.PgSql.Structure.Ods.1410-EXTENSION-TPDM-CreateIndex-EdOrgIdsRelationship-AuthPerformance.sql', '2024-05-10 21:27:31.14531');

END;

