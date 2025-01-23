-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Applying ChangeQueries scripts for TPDM plugin';
GO

PRINT N'Updating DeployJournal TPDM Scripts';
GO

INSERT [dbo].[DeployJournal] ([ScriptName], [Applied]) VALUES (N'Extensions.TPDM.1.1.0.Standard.5.1.0.Artifacts.MsSql.Structure.Ods.Changes.0010-CreateChangesSchema.sql', CAST(N'2024-05-10 21:27:58.087' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([ScriptName], [Applied]) VALUES (N'Extensions.TPDM.1.1.0.Standard.5.1.0.Artifacts.MsSql.Structure.Ods.Changes.0020-CreateChangeVersionSequence.sql', CAST(N'2024-05-10 21:27:58.123' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([ScriptName], [Applied]) VALUES (N'Extensions.TPDM.1.1.0.Standard.5.1.0.Artifacts.MsSql.Structure.Ods.Changes.0030-AddColumnChangeVersionForTables.sql', CAST(N'2024-05-10 21:27:58.300' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([ScriptName], [Applied]) VALUES (N'Extensions.TPDM.1.1.0.Standard.5.1.0.Artifacts.MsSql.Structure.Ods.Changes.0070-AddIndexChangeVersionForTables.sql', CAST(N'2024-05-10 21:27:58.387' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([ScriptName], [Applied]) VALUES (N'Extensions.TPDM.1.1.0.Standard.5.1.0.Artifacts.MsSql.Structure.Ods.Changes.0200-CreateTrackedChangeTables.sql', CAST(N'2024-05-10 21:27:58.523' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([ScriptName], [Applied]) VALUES (N'Extensions.TPDM.1.1.0.Standard.5.1.0.Artifacts.MsSql.Structure.Ods.Changes.0210-CreateTriggersForChangeVersionAndKeyChanges.sql', CAST(N'2024-05-10 21:27:58.563' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([ScriptName], [Applied]) VALUES (N'Extensions.TPDM.1.1.0.Standard.5.1.0.Artifacts.MsSql.Structure.Ods.Changes.0220-CreateTriggersForDeleteTracking.sql', CAST(N'2024-05-10 21:27:58.727' AS DateTime))
GO
PRINT N'Update complete.';
