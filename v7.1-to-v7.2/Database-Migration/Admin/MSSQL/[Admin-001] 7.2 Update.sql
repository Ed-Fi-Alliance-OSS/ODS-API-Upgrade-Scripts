-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Updating Admin Database to 7.2';
GO

PRINT N'Altering Table [dbo].[OdsInstanceDerivatives]...';
GO

ALTER TABLE [dbo].[OdsInstanceDerivatives] ALTER COLUMN [ConnectionString] NVARCHAR (1500) NULL;
GO

PRINT N'Updating DeployJournal Scripts';
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DeployJournal]') AND type in (N'U'))
DROP TABLE [dbo].[DeployJournal]
GO

CREATE TABLE [dbo].[DeployJournal](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ScriptName] [nvarchar](255) NOT NULL,
	[Applied] [datetime] NOT NULL,
 CONSTRAINT [PK_DeployJournal_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET IDENTITY_INSERT [dbo].[DeployJournal] ON 
GO

INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (1, N'Artifacts.MsSql.Structure.Admin.0020-Tables.sql', GETDATE())
GO

INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (2, N'Artifacts.MsSql.Structure.Admin.0030-ForeignKey.sql', GETDATE())
GO

INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (3, N'Artifacts.MsSql.Structure.Admin.0040-IdColumnIndexes.sql', GETDATE())
GO

INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (4, N'Artifacts.MsSql.Structure.Admin.0050-StoredProcedures.sql', GETDATE())
GO

INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (5, N'Artifacts.MsSql.Structure.Admin.0051-Convert-AccessTokenIsValid-to-Function.sql', GETDATE())
GO

INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (6, N'Artifacts.MsSql.Structure.Admin.0060-Add-OwnershipTokens.sql', GETDATE())
GO

INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (7, N'Artifacts.MsSql.Structure.Admin.0061-Add-ApiClientsOwnershipTokens.sql', GETDATE())
GO

INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (8, N'Artifacts.MsSql.Structure.Admin.0062-Add-CreatorOwnershipTokenId-To-ApiClients.sql', GETDATE())
GO

INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (9, N'Artifacts.MsSql.Structure.Admin.0064-Update-GetClientForToken-For-Record-Level-Ownership.sql', GETDATE())
GO

INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (10, N'Artifacts.MsSql.Structure.Admin.0065-Update-GetClientForToken-For-Scope-Support.sql', GETDATE())
GO

INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (11, N'Artifacts.MsSql.Structure.Admin.0070-Identity-Support.sql', GETDATE())
GO

INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (12, N'Artifacts.MsSql.Structure.Admin.0080-Add-Index-ClientAccessTokens-Expiration.sql', GETDATE())
GO

INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (13, N'Artifacts.MsSql.Structure.Admin.0090-Add-Expiration-to-GetClientForToken.sql', GETDATE())
GO

INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (14, N'Artifacts.MsSql.Structure.Admin.0100-Add-ApiClient-to-GetClientForToken.sql', GETDATE())
GO

INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (15, N'Artifacts.MsSql.Structure.Admin.0110-GetClient-ForToken-ForKey-using-shared-view.sql', GETDATE())
GO

INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (16, N'Artifacts.MsSql.Structure.Admin.0120-Add-GetClientForKey-Indexes.sql', GETDATE())
GO

INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (17, N'Artifacts.MsSql.Structure.Admin.0130-Add-ProfileDefinition-to-Profile.sql', GETDATE())
GO

INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (18, N'Artifacts.MsSql.Structure.Admin.0131-Add-ApiClientOdsInstances-Table-Modify-GetClientForToken.sql', GETDATE())
GO

INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (19, N'Artifacts.MsSql.Structure.Admin.0140-Add-GetOdsInstanceConfigurationById-Function.sql', GETDATE())
GO

INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (20, N'Artifacts.MsSql.Structure.Admin.0141-Add-OdsInstanceDerivative.sql', GETDATE())
GO

INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (21, N'Artifacts.MsSql.Structure.Admin.0142-Add-OdsInstanceContext.sql', GETDATE())
GO

INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (22, N'Artifacts.MsSql.Structure.Admin.0143-Update-GetOdsInstanceConfigurationById.sql', GETDATE())
GO

INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (23, N'Artifacts.MsSql.Structure.Admin.0144-Drop-OdsInstanceComponent.sql', GETDATE())
GO

INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (24, N'Artifacts.MsSql.Structure.Admin.0145-Drop-OdsInstances-UnusedCols.sql', GETDATE())
GO

INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (25, N'Artifacts.MsSql.Structure.Admin.0150-Alter-EducationOrganizationId-to-bigint.sql', GETDATE())
GO

INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (26, N'Artifacts.MsSql.Structure.Admin.0155-Alter-OdsInstances-AllowNullOnInstanceTypeColumn.sql', GETDATE())
GO

INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (27, N'Artifacts.MsSql.Structure.Admin.0160-Rename-OdsInstanceContext.sql', GETDATE())
GO

INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (28, N'Artifacts.MsSql.Structure.Admin.0161-Rename-OdsInstancederivative.sql', GETDATE())
GO

INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (29, N'Artifacts.MsSql.Structure.Admin.0170-Drop-OdsInstance-From-Application.sql', GETDATE())
GO

INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (30, N'Artifacts.MsSql.Structure.Admin.0171-Alter-OdsInstances-ConnectionString.sql', GETDATE())
GO

INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (31, N'Artifacts.MsSql.Structure.Admin.0172-Alter-ApplicationEducationOrganizations.sql', GETDATE())
GO

INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (32, N'Artifacts.MsSql.Structure.Admin.0173-Add-GetOdsInstanceContextValues.sql', GETDATE())
GO

INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (33, N'Artifacts.MsSql.Structure.Admin.0174-Alter-OdsInstanceDerivatives-ConnectionString.sql', GETDATE())
GO

PRINT N'Update complete.';
GO