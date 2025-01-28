-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Applying TPDM plugin scripts';
GO

PRINT N'Altering Extended Property [tpdm].[CandidateAddress].[NameOfCounty].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The name of the county, parish, borough, or comparable unit (within a state) in which an address is located.', @level0type = N'SCHEMA', @level0name = N'tpdm', @level1type = N'TABLE', @level1name = N'CandidateAddress', @level2type = N'COLUMN', @level2name = N'NameOfCounty';


GO
PRINT N'Altering Extended Property [tpdm].[EvaluationRating].[SchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'tpdm', @level1type = N'TABLE', @level1name = N'EvaluationRating', @level2type = N'COLUMN', @level2name = N'SchoolId';


GO
PRINT N'Altering Extended Property [tpdm].[SchoolExtension].[PostSecondaryInstitutionId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The ID of the post secondary institution. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'tpdm', @level1type = N'TABLE', @level1name = N'SchoolExtension', @level2type = N'COLUMN', @level2name = N'PostSecondaryInstitutionId';


GO
PRINT N'Altering Extended Property [tpdm].[SchoolExtension].[SchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'tpdm', @level1type = N'TABLE', @level1name = N'SchoolExtension', @level2type = N'COLUMN', @level2name = N'SchoolId';


GO

PRINT N'Updating DeployJournal TPDM Scripts';
GO

INSERT [dbo].[DeployJournal] [ScriptName], [Applied]) VALUES (N'Extensions.TPDM.1.1.0.Standard.5.1.0.Artifacts.MsSql.Structure.Ods.0010-EXTENSION-TPDM-Schemas.sql', CAST(N'2024-05-10 21:27:55.713' AS DateTime))
GO
INSERT [dbo].[DeployJournal] [ScriptName], [Applied]) VALUES (N'Extensions.TPDM.1.1.0.Standard.5.1.0.Artifacts.MsSql.Structure.Ods.0020-EXTENSION-TPDM-Tables.sql', CAST(N'2024-05-10 21:27:56.090' AS DateTime))
GO
INSERT [dbo].[DeployJournal] [ScriptName], [Applied]) VALUES (N'Extensions.TPDM.1.1.0.Standard.5.1.0.Artifacts.MsSql.Structure.Ods.0030-EXTENSION-TPDM-ForeignKeys.sql', CAST(N'2024-05-10 21:27:56.777' AS DateTime))
GO
INSERT [dbo].[DeployJournal] [ScriptName], [Applied]) VALUES (N'Extensions.TPDM.1.1.0.Standard.5.1.0.Artifacts.MsSql.Structure.Ods.0040-EXTENSION-TPDM-IdColumnUniqueIndexes.sql', CAST(N'2024-05-10 21:27:56.867' AS DateTime))
GO
INSERT [dbo].[DeployJournal] [ScriptName], [Applied]) VALUES (N'Extensions.TPDM.1.1.0.Standard.5.1.0.Artifacts.MsSql.Structure.Ods.0050-EXTENSION-TPDM-ExtendedProperties.sql', CAST(N'2024-05-10 21:27:57.977' AS DateTime))
GO
INSERT [dbo].[DeployJournal] [ScriptName], [Applied]) VALUES (N'Extensions.TPDM.1.1.0.Standard.5.1.0.Artifacts.MsSql.Structure.Ods.1410-EXTENSION-TPDM-CreateIndex-EdOrgIdsRelationship-AuthPerformance.sql', CAST(N'2024-05-10 21:27:58.050' AS DateTime))
GO
PRINT N'Update complete.';
