-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Applying ChangeQueries scripts for TPDM plugin';
GO


PRINT N'Updating TPDM DeployJournal Scripts';
GO

INSERT [dbo].[DeployJournal] ([ScriptName], [Applied]) VALUES (N'Extensions.TPDM.1.1.0.Standard.5.2.0.Artifacts.MsSql.Data.Security.Changes.0010-EdFi-Sandbox-ReadChanges.sql', GETDATE())
GO
INSERT [dbo].[DeployJournal] ([ScriptName], [Applied]) VALUES (N'Extensions.TPDM.1.1.0.Standard.5.2.0.Artifacts.MsSql.Data.Security.Changes.0020-EdFi-ApiPublisher-Reader-ReadChanges.sql', GETDATE())
GO

PRINT N'Update complete.';
GO