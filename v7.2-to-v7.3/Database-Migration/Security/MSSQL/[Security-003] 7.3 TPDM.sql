-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Applying TPDM plugin scripts';
GO


PRINT N'Updating TPDM DeployJournal Scripts';
GO

INSERT [dbo].[DeployJournal] ([ScriptName], [Applied]) VALUES (N'Extensions.TPDM.1.1.0.Standard.5.2.0.Artifacts.MsSql.Data.Security.1010-TPDM-ResourceClaims.sql', GETDATE())
GO
INSERT [dbo].[DeployJournal] ([ScriptName], [Applied]) VALUES (N'Extensions.TPDM.1.1.0.Standard.5.2.0.Artifacts.MsSql.Data.Security.1011-TPDM-Candidate.sql', GETDATE())
GO
INSERT [dbo].[DeployJournal] ([ScriptName], [Applied]) VALUES (N'Extensions.TPDM.1.1.0.Standard.5.2.0.Artifacts.MsSql.Data.Security.1020-TPDM-EducationPreparationProgram-ClaimSet.sql', GETDATE())
GO
INSERT [dbo].[DeployJournal] ([ScriptName], [Applied]) VALUES (N'Extensions.TPDM.1.1.0.Standard.5.2.0.Artifacts.MsSql.Data.Security.1030-TPDM-DelPerfEvalRatingsAuthStrategy.sql', GETDATE())
GO
INSERT [dbo].[DeployJournal] ([ScriptName], [Applied]) VALUES (N'Extensions.TPDM.1.1.0.Standard.5.2.0.Artifacts.MsSql.Data.Security.1030-TPDM-RmvReadChangesFromEdPrepProgClaimSet.sql', GETDATE())
GO
INSERT [dbo].[DeployJournal] ([ScriptName], [Applied]) VALUES (N'Extensions.TPDM.1.1.0.Standard.5.2.0.Artifacts.MsSql.Data.Security.1040-TPDM-RmvParentResourceClaimFromPeopleClaim.sql', GETDATE())
GO
INSERT [dbo].[DeployJournal] ([ScriptName], [Applied]) VALUES (N'Extensions.TPDM.1.1.0.Standard.5.2.0.Artifacts.MsSql.Data.Security.1050-TPDM-EdFiApiPublisherReader-ClaimSet.sql', GETDATE())
GO
INSERT [dbo].[DeployJournal] ([ScriptName], [Applied]) VALUES (N'Extensions.TPDM.1.1.0.Standard.5.2.0.Artifacts.MsSql.Data.Security.1060-TPDM-EdFiApiPublisherWriter-ClaimSet.sql', GETDATE())
GO

PRINT N'Update complete.';
GO
