-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

INSERT INTO public."DeployJournal" (scriptname, applied) VALUES ('Extensions.TPDM.1.1.0.Standard.5.2.0.Artifacts.PgSql.Data.Security.Changes.0010-EdFi-Sandbox-ReadChanges.sql', now()::timestamp);
INSERT INTO public."DeployJournal" (scriptname, applied) VALUES ('Extensions.TPDM.1.1.0.Standard.5.2.0.Artifacts.PgSql.Data.Security.Changes.0020-EdFi-ApiPublisher-Reader-ReadChanges.sql', now()::timestamp);
