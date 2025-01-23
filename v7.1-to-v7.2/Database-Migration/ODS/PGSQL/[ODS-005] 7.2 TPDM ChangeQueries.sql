-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

BEGIN;

    INSERT INTO public."DeployJournal" (scriptname, applied) VALUES ('Extensions.TPDM.1.1.0.Standard.5.1.0.Artifacts.PgSql.Structure.Ods.Changes.0010-CreateChangesSchema.sql', '2024-05-10 21:27:31.179198');
    INSERT INTO public."DeployJournal" (scriptname, applied) VALUES ('Extensions.TPDM.1.1.0.Standard.5.1.0.Artifacts.PgSql.Structure.Ods.Changes.0020-CreateChangeVersionSequence.sql', '2024-05-10 21:27:31.180555');
    INSERT INTO public."DeployJournal" (scriptname, applied) VALUES ('Extensions.TPDM.1.1.0.Standard.5.1.0.Artifacts.PgSql.Structure.Ods.Changes.0030-AddColumnChangeVersionForTables.sql', '2024-05-10 21:27:31.214465');
    INSERT INTO public."DeployJournal" (scriptname, applied) VALUES ('Extensions.TPDM.1.1.0.Standard.5.1.0.Artifacts.PgSql.Structure.Ods.Changes.0070-AddIndexChangeVersionForTables.sql', '2024-05-10 21:27:31.226941');
    INSERT INTO public."DeployJournal" (scriptname, applied) VALUES ('Extensions.TPDM.1.1.0.Standard.5.1.0.Artifacts.PgSql.Structure.Ods.Changes.0200-CreateTrackedChangeTables.sql', '2024-05-10 21:27:31.318175"');
    INSERT INTO public."DeployJournal" (scriptname, applied) VALUES ('Extensions.TPDM.1.1.0.Standard.5.1.0.Artifacts.PgSql.Structure.Ods.Changes.0210-CreateTriggersForChangeVersionAndKeyChanges.sql', '2024-05-10 21:27:31.326964');
    INSERT INTO public."DeployJournal" (scriptname, applied) VALUES ('Extensions.TPDM.1.1.0.Standard.5.1.0.Artifacts.PgSql.Structure.Ods.Changes.0220-CreateTriggersForDeleteTracking.sql', '2024-05-10 21:27:31.347907');

END;
