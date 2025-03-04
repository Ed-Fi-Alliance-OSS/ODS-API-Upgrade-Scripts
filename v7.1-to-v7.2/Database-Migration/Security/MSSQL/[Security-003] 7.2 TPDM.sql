-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Applying TPDM plugin scripts';
GO

PRINT N'Applying 1050-TPDM-EdFiApiPublisherReader-ClaimSet.sql';
GO
BEGIN
    DECLARE
        @claimSetName nvarchar(255),
        @claimSetId INT,
        @resourceClaimId INT,
        @readActionId AS INT

    SET @claimSetName = 'Ed-Fi API Publisher - Reader'

    SELECT @claimSetId = ClaimSetId FROM dbo.ClaimSets WHERE ClaimSetName = @claimSetName

    SELECT @resourceClaimId = ResourceClaimId FROM dbo.ResourceClaims WHERE ClaimName = 'http://ed-fi.org/ods/identity/claims/domains/tpdm'

    SELECT @readActionId = ActionId
    FROM [dbo].[Actions] WHERE ActionName = 'Read';

-- Ensure ClaimSet exists
    IF @claimSetId IS NULL
    BEGIN
        PRINT 'Ensuring Ed-Fi API Publisher - Reader Claimset exists.'

        INSERT INTO dbo.ClaimSets (ClaimSetName)
        VALUES (@claimSetName)

        SET @claimSetId = SCOPE_IDENTITY()
    END

-- Read Action
    IF NOT EXISTS (SELECT 1 FROM dbo.ClaimSetResourceClaimActions WHERE ClaimSetId = @claimSetId AND ResourceClaimId = @resourceClaimId AND ActionId = @readActionId)
    BEGIN
       INSERT INTO dbo.ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId)
       VALUES (@claimSetId, @resourceClaimId, @readActionId)
    END

END


PRINT N'Applying 1060-TPDM-EdFiApiPublisherWriter-ClaimSet.sql';
GO
BEGIN
    DECLARE
        @claimSetName nvarchar(255),
        @claimSetId INT,
        @resourceClaimId INT,
        @createActionId AS INT,
        @readActionId AS INT,
        @updateActionId AS INT,
        @deleteActionId AS INT

    SET @claimSetName = 'Ed-Fi API Publisher - Writer'

    SELECT @claimSetId = ClaimSetId FROM dbo.ClaimSets WHERE ClaimSetName = @claimSetName

    SELECT @resourceClaimId = ResourceClaimId FROM dbo.ResourceClaims WHERE ClaimName = 'http://ed-fi.org/ods/identity/claims/domains/tpdm'

    SELECT @createActionId = ActionId
    FROM [dbo].[Actions] WHERE ActionName = 'Create';

    SELECT @readActionId = ActionId
    FROM [dbo].[Actions] WHERE ActionName = 'Read';

    SELECT @updateActionId = ActionId
    FROM [dbo].[Actions] WHERE ActionName = 'Update';

    SELECT @deleteActionId = ActionId
    FROM [dbo].[Actions] WHERE ActionName = 'Delete';

-- Ensure ClaimSet exists
    IF @claimSetId IS NULL
    BEGIN
        PRINT 'Ensuring Ed-Fi API Publisher - Writer Claimset exists.'

        INSERT INTO dbo.ClaimSets (ClaimSetName)
        VALUES (@claimSetName)

        SET @claimSetId = SCOPE_IDENTITY()
    END


-- Create Action
    IF NOT EXISTS (SELECT 1 FROM dbo.ClaimSetResourceClaimActions WHERE ClaimSetId = @claimSetId AND ResourceClaimId = @resourceClaimId AND ActionId = @createActionId)
    BEGIN
       INSERT INTO dbo.ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId)
       VALUES (@claimSetId, @resourceClaimId, @createActionId)
    END

-- Read Action
    IF NOT EXISTS (SELECT 1 FROM dbo.ClaimSetResourceClaimActions WHERE ClaimSetId = @claimSetId AND ResourceClaimId = @resourceClaimId AND ActionId = @readActionId)
    BEGIN
       INSERT INTO dbo.ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId)
       VALUES (@claimSetId, @resourceClaimId, @readActionId)
    END

-- Update Action
    IF NOT EXISTS (SELECT 1 FROM dbo.ClaimSetResourceClaimActions WHERE ClaimSetId = @claimSetId AND ResourceClaimId = @resourceClaimId AND ActionId = @updateActionId)
    BEGIN
       INSERT INTO dbo.ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId)
       VALUES (@claimSetId, @resourceClaimId, @updateActionId)
    END

-- Delete Action
    IF NOT EXISTS (SELECT 1 FROM dbo.ClaimSetResourceClaimActions WHERE ClaimSetId = @claimSetId AND ResourceClaimId = @resourceClaimId AND ActionId = @deleteActionId)
    BEGIN
       INSERT INTO dbo.ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId)
       VALUES (@claimSetId, @resourceClaimId, @deleteActionId)
    END

END

PRINT N'Updating TPDM DeployJournal Scripts';
GO

INSERT [dbo].[DeployJournal] ([ScriptName], [Applied]) VALUES (N'Extensions.TPDM.1.1.0.Standard.5.1.0.Artifacts.MsSql.Data.Security.1010-TPDM-ResourceClaims.sql', GETDATE())
GO

INSERT [dbo].[DeployJournal] ([ScriptName], [Applied]) VALUES (N'Extensions.TPDM.1.1.0.Standard.5.1.0.Artifacts.MsSql.Data.Security.1011-TPDM-Candidate.sql', GETDATE())
GO

INSERT [dbo].[DeployJournal] ([ScriptName], [Applied]) VALUES (N'Extensions.TPDM.1.1.0.Standard.5.1.0.Artifacts.MsSql.Data.Security.1020-TPDM-EducationPreparationProgram-ClaimSet.sql', GETDATE())
GO

INSERT [dbo].[DeployJournal] ([ScriptName], [Applied]) VALUES (N'Extensions.TPDM.1.1.0.Standard.5.1.0.Artifacts.MsSql.Data.Security.1030-TPDM-DelPerfEvalRatingsAuthStrategy.sql', GETDATE())
GO

INSERT [dbo].[DeployJournal] ([ScriptName], [Applied]) VALUES (N'Extensions.TPDM.1.1.0.Standard.5.1.0.Artifacts.MsSql.Data.Security.1030-TPDM-RmvReadChangesFromEdPrepProgClaimSet.sql', GETDATE())
GO

INSERT [dbo].[DeployJournal] ([ScriptName], [Applied]) VALUES (N'Extensions.TPDM.1.1.0.Standard.5.1.0.Artifacts.MsSql.Data.Security.1040-TPDM-RmvParentResourceClaimFromPeopleClaim.sql', GETDATE())
GO

INSERT [dbo].[DeployJournal] ([ScriptName], [Applied]) VALUES (N'Extensions.TPDM.1.1.0.Standard.5.1.0.Artifacts.MsSql.Data.Security.1050-TPDM-EdFiApiPublisherReader-ClaimSet.sql', GETDATE())
GO

INSERT [dbo].[DeployJournal] ([ScriptName], [Applied]) VALUES (N'Extensions.TPDM.1.1.0.Standard.5.1.0.Artifacts.MsSql.Data.Security.1060-TPDM-EdFiApiPublisherWriter-ClaimSet.sql', GETDATE())
GO

PRINT N'Update complete.';
GO
