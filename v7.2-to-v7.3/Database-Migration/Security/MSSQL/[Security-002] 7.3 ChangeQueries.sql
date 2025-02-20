-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Applying ChangeQueries Scripts';
GO

INSERT [dbo].[DeployJournal] ([ScriptName], [Applied]) VALUES (N'EdFi.Ods.Standard.Standard.5.2.0.Artifacts.MsSql.Data.Security.Changes.0010-API-Publisher-Reader-Security-Metadata.sql', GETDATE())
GO
INSERT [dbo].[DeployJournal] ([ScriptName], [Applied]) VALUES (N'EdFi.Ods.Standard.Standard.5.2.0.Artifacts.MsSql.Data.Security.Changes.0020-API-Publisher-Writer-Security-Metadata.sql', GETDATE())
GO
INSERT [dbo].[DeployJournal] ([ScriptName], [Applied]) VALUES (N'EdFi.Ods.Standard.Standard.5.2.0.Artifacts.MsSql.Data.Security.Changes.0030-Sandbox-Publishing-Security-Metadata.sql', GETDATE())
GO
INSERT [dbo].[DeployJournal] ([ScriptName], [Applied]) VALUES (N'EdFi.Ods.Standard.Standard.5.2.0.Artifacts.MsSql.Data.Security.Changes.0040-Add-ReadChanges-to-Sandbox-Claim-Set.sql', GETDATE())
GO
INSERT [dbo].[DeployJournal] ([ScriptName], [Applied]) VALUES (N'EdFi.Ods.Standard.Standard.5.2.0.Artifacts.MsSql.Data.Security.Changes.0050-Remove-Overrides-from-Api-Publisher-Reader-Claim-Set.sql', GETDATE())
GO
INSERT [dbo].[DeployJournal] ([ScriptName], [Applied]) VALUES (N'EdFi.Ods.Standard.Standard.5.2.0.Artifacts.MsSql.Data.Security.Changes.0060-Apply-ReadChanges-Default-to-OrgDept.sql', GETDATE())
GO

PRINT N'Update complete.';
