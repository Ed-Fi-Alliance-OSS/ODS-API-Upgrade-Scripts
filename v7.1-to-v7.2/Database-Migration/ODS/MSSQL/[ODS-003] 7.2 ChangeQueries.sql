-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Applying ChangeQueries Scripts';
GO

PRINT N'Altering Table [edfi].[CrisisEvent]...';


GO
ALTER TABLE [edfi].[CrisisEvent]
    ADD [ChangeVersion] BIGINT NOT NULL;


GO
PRINT N'Creating Index [edfi].[CrisisEvent].[UX_CrisisEvent_ChangeVersion]...';


GO
CREATE NONCLUSTERED INDEX [UX_CrisisEvent_ChangeVersion]
    ON [edfi].[CrisisEvent]([ChangeVersion] ASC);


GO
PRINT N'Altering Table [edfi].[StudentHealth]...';


GO
ALTER TABLE [edfi].[StudentHealth]
    ADD [ChangeVersion] BIGINT NOT NULL;


GO
PRINT N'Creating Index [edfi].[StudentHealth].[UX_StudentHealth_ChangeVersion]...';


GO
CREATE NONCLUSTERED INDEX [UX_StudentHealth_ChangeVersion]
    ON [edfi].[StudentHealth]([ChangeVersion] ASC);


GO
PRINT N'Altering Table [edfi].[StudentTransportation]...';


GO
ALTER TABLE [edfi].[StudentTransportation]
    ADD [ChangeVersion] BIGINT NOT NULL;


GO
PRINT N'Creating Index [edfi].[StudentTransportation].[UX_StudentTransportation_ChangeVersion]...';


GO
CREATE NONCLUSTERED INDEX [UX_StudentTransportation_ChangeVersion]
    ON [edfi].[StudentTransportation]([ChangeVersion] ASC);


GO
PRINT N'Creating Table [tracked_changes_edfi].[CrisisEvent]...';


GO
CREATE TABLE [tracked_changes_edfi].[CrisisEvent] (
    [OldCrisisEventName] NVARCHAR (100)   NOT NULL,
    [NewCrisisEventName] NVARCHAR (100)   NULL,
    [Id]                 UNIQUEIDENTIFIER NOT NULL,
    [ChangeVersion]      BIGINT           NOT NULL,
    [Discriminator]      NVARCHAR (128)   NULL,
    [CreateDate]         DATETIME2 (7)    NOT NULL,
    CONSTRAINT [PK_CrisisEvent] PRIMARY KEY CLUSTERED ([ChangeVersion] ASC)
);


GO
PRINT N'Creating Table [tracked_changes_edfi].[StudentHealth]...';


GO
CREATE TABLE [tracked_changes_edfi].[StudentHealth] (
    [OldEducationOrganizationId] BIGINT           NOT NULL,
    [OldStudentUSI]              INT              NOT NULL,
    [OldStudentUniqueId]         NVARCHAR (32)    NOT NULL,
    [NewEducationOrganizationId] BIGINT           NULL,
    [NewStudentUSI]              INT              NULL,
    [NewStudentUniqueId]         NVARCHAR (32)    NULL,
    [Id]                         UNIQUEIDENTIFIER NOT NULL,
    [ChangeVersion]              BIGINT           NOT NULL,
    [Discriminator]              NVARCHAR (128)   NULL,
    [CreateDate]                 DATETIME2 (7)    NOT NULL,
    CONSTRAINT [PK_StudentHealth] PRIMARY KEY CLUSTERED ([ChangeVersion] ASC)
);


GO
PRINT N'Creating Table [tracked_changes_edfi].[StudentTransportation]...';


GO
CREATE TABLE [tracked_changes_edfi].[StudentTransportation] (
    [OldStudentUSI]                            INT              NOT NULL,
    [OldStudentUniqueId]                       NVARCHAR (32)    NOT NULL,
    [OldTransportationEducationOrganizationId] BIGINT           NOT NULL,
    [NewStudentUSI]                            INT              NULL,
    [NewStudentUniqueId]                       NVARCHAR (32)    NULL,
    [NewTransportationEducationOrganizationId] BIGINT           NULL,
    [Id]                                       UNIQUEIDENTIFIER NOT NULL,
    [ChangeVersion]                            BIGINT           NOT NULL,
    [Discriminator]                            NVARCHAR (128)   NULL,
    [CreateDate]                               DATETIME2 (7)    NOT NULL,
    CONSTRAINT [PK_StudentTransportation] PRIMARY KEY CLUSTERED ([ChangeVersion] ASC)
);


GO
PRINT N'Creating Default Constraint [edfi].[CrisisEvent_DF_ChangeVersion]...';


GO
ALTER TABLE [edfi].[CrisisEvent]
    ADD CONSTRAINT [CrisisEvent_DF_ChangeVersion] DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) FOR [ChangeVersion];


GO
PRINT N'Creating Default Constraint [edfi].[StudentHealth_DF_ChangeVersion]...';


GO
ALTER TABLE [edfi].[StudentHealth]
    ADD CONSTRAINT [StudentHealth_DF_ChangeVersion] DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) FOR [ChangeVersion];


GO
PRINT N'Creating Default Constraint [edfi].[StudentTransportation_DF_ChangeVersion]...';


GO
ALTER TABLE [edfi].[StudentTransportation]
    ADD CONSTRAINT [StudentTransportation_DF_ChangeVersion] DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) FOR [ChangeVersion];


GO
PRINT N'Creating Default Constraint unnamed constraint on [tracked_changes_edfi].[CrisisEvent]...';


GO
ALTER TABLE [tracked_changes_edfi].[CrisisEvent]
    ADD DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint unnamed constraint on [tracked_changes_edfi].[StudentHealth]...';


GO
ALTER TABLE [tracked_changes_edfi].[StudentHealth]
    ADD DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint unnamed constraint on [tracked_changes_edfi].[StudentTransportation]...';


GO
ALTER TABLE [tracked_changes_edfi].[StudentTransportation]
    ADD DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Trigger [edfi].[edfi_BusRouteDescriptor_TR_DeleteTracking]...';


GO
CREATE TRIGGER [edfi].[edfi_BusRouteDescriptor_TR_DeleteTracking] ON [edfi].[BusRouteDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.BusRouteDescriptorId, b.CodeValue, b.Namespace, b.Id, 'edfi.BusRouteDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.BusRouteDescriptorId = b.DescriptorId
END
GO
PRINT N'Creating Trigger [edfi].[edfi_CrisisEvent_TR_UpdateChangeVersion]...';


GO
CREATE TRIGGER [edfi].[edfi_CrisisEvent_TR_UpdateChangeVersion] ON [edfi].[CrisisEvent] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [edfi].[CrisisEvent]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [edfi].[CrisisEvent] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END
GO
PRINT N'Creating Trigger [edfi].[edfi_CrisisEvent_TR_DeleteTracking]...';


GO
CREATE TRIGGER [edfi].[edfi_CrisisEvent_TR_DeleteTracking] ON [edfi].[CrisisEvent] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[CrisisEvent](OldCrisisEventName, Id, Discriminator, ChangeVersion)
    SELECT d.CrisisEventName, d.Id, d.Discriminator, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO
PRINT N'Creating Trigger [edfi].[edfi_CrisisTypeDescriptor_TR_DeleteTracking]...';


GO
CREATE TRIGGER [edfi].[edfi_CrisisTypeDescriptor_TR_DeleteTracking] ON [edfi].[CrisisTypeDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.CrisisTypeDescriptorId, b.CodeValue, b.Namespace, b.Id, 'edfi.CrisisTypeDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.CrisisTypeDescriptorId = b.DescriptorId
END
GO
PRINT N'Creating Trigger [edfi].[edfi_DisplacedStudentStatusDescriptor_TR_DeleteTracking]...';


GO
CREATE TRIGGER [edfi].[edfi_DisplacedStudentStatusDescriptor_TR_DeleteTracking] ON [edfi].[DisplacedStudentStatusDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.DisplacedStudentStatusDescriptorId, b.CodeValue, b.Namespace, b.Id, 'edfi.DisplacedStudentStatusDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.DisplacedStudentStatusDescriptorId = b.DescriptorId
END
GO
PRINT N'Creating Trigger [edfi].[edfi_ImmunizationTypeDescriptor_TR_DeleteTracking]...';


GO
CREATE TRIGGER [edfi].[edfi_ImmunizationTypeDescriptor_TR_DeleteTracking] ON [edfi].[ImmunizationTypeDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.ImmunizationTypeDescriptorId, b.CodeValue, b.Namespace, b.Id, 'edfi.ImmunizationTypeDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.ImmunizationTypeDescriptorId = b.DescriptorId
END
GO
PRINT N'Creating Trigger [edfi].[edfi_NonMedicalImmunizationExemptionDescriptor_TR_DeleteTracking]...';


GO
CREATE TRIGGER [edfi].[edfi_NonMedicalImmunizationExemptionDescriptor_TR_DeleteTracking] ON [edfi].[NonMedicalImmunizationExemptionDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.NonMedicalImmunizationExemptionDescriptorId, b.CodeValue, b.Namespace, b.Id, 'edfi.NonMedicalImmunizationExemptionDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.NonMedicalImmunizationExemptionDescriptorId = b.DescriptorId
END
GO
PRINT N'Creating Trigger [edfi].[edfi_StudentHealth_TR_UpdateChangeVersion]...';


GO
CREATE TRIGGER [edfi].[edfi_StudentHealth_TR_UpdateChangeVersion] ON [edfi].[StudentHealth] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [edfi].[StudentHealth]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [edfi].[StudentHealth] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END
GO
PRINT N'Creating Trigger [edfi].[edfi_StudentHealth_TR_DeleteTracking]...';


GO
CREATE TRIGGER [edfi].[edfi_StudentHealth_TR_DeleteTracking] ON [edfi].[StudentHealth] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[StudentHealth](OldEducationOrganizationId, OldStudentUSI, OldStudentUniqueId, Id, Discriminator, ChangeVersion)
    SELECT d.EducationOrganizationId, d.StudentUSI, j0.StudentUniqueId, d.Id, d.Discriminator, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
        INNER JOIN edfi.Student j0
            ON d.StudentUSI = j0.StudentUSI
END
GO
PRINT N'Creating Trigger [edfi].[edfi_StudentTransportation_TR_UpdateChangeVersion]...';


GO
CREATE TRIGGER [edfi].[edfi_StudentTransportation_TR_UpdateChangeVersion] ON [edfi].[StudentTransportation] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [edfi].[StudentTransportation]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [edfi].[StudentTransportation] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END
GO
PRINT N'Creating Trigger [edfi].[edfi_StudentTransportation_TR_DeleteTracking]...';


GO
CREATE TRIGGER [edfi].[edfi_StudentTransportation_TR_DeleteTracking] ON [edfi].[StudentTransportation] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[StudentTransportation](OldStudentUSI, OldStudentUniqueId, OldTransportationEducationOrganizationId, Id, Discriminator, ChangeVersion)
    SELECT d.StudentUSI, j0.StudentUniqueId, d.TransportationEducationOrganizationId, d.Id, d.Discriminator, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
        INNER JOIN edfi.Student j0
            ON d.StudentUSI = j0.StudentUSI
END
GO
PRINT N'Creating Trigger [edfi].[edfi_TransportationPublicExpenseEligibilityTypeDescriptor_TR_DeleteTracking]...';


GO
CREATE TRIGGER [edfi].[edfi_TransportationPublicExpenseEligibilityTypeDescriptor_TR_DeleteTracking] ON [edfi].[TransportationPublicExpenseEligibilityTypeDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.TransportationPublicExpenseEligibilityTypeDescriptorId, b.CodeValue, b.Namespace, b.Id, 'edfi.TransportationPublicExpenseEligibilityTypeDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.TransportationPublicExpenseEligibilityTypeDescriptorId = b.DescriptorId
END
GO
PRINT N'Creating Trigger [edfi].[edfi_TransportationTypeDescriptor_TR_DeleteTracking]...';


GO
CREATE TRIGGER [edfi].[edfi_TransportationTypeDescriptor_TR_DeleteTracking] ON [edfi].[TransportationTypeDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.TransportationTypeDescriptorId, b.CodeValue, b.Namespace, b.Id, 'edfi.TransportationTypeDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.TransportationTypeDescriptorId = b.DescriptorId
END
GO
PRINT N'Creating Trigger [edfi].[edfi_TravelDayofWeekDescriptor_TR_DeleteTracking]...';


GO
CREATE TRIGGER [edfi].[edfi_TravelDayofWeekDescriptor_TR_DeleteTracking] ON [edfi].[TravelDayofWeekDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.TravelDayofWeekDescriptorId, b.CodeValue, b.Namespace, b.Id, 'edfi.TravelDayofWeekDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.TravelDayofWeekDescriptorId = b.DescriptorId
END
GO
PRINT N'Creating Trigger [edfi].[edfi_TravelDirectionDescriptor_TR_DeleteTracking]...';


GO
CREATE TRIGGER [edfi].[edfi_TravelDirectionDescriptor_TR_DeleteTracking] ON [edfi].[TravelDirectionDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.TravelDirectionDescriptorId, b.CodeValue, b.Namespace, b.Id, 'edfi.TravelDirectionDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.TravelDirectionDescriptorId = b.DescriptorId
END
GO
PRINT N'Updating DeployJournal Scripts';
GO
INSERT [dbo].[DeployJournal] ([ScriptName], [Applied]) VALUES (N'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.MsSql.Structure.Ods.Changes.0010-CreateChangesSchema.sql', CAST(N'2024-05-10 20:59:10.937' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([ScriptName], [Applied]) VALUES (N'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.MsSql.Structure.Ods.Changes.0020-CreateChangeVersionSequence.sql', CAST(N'2024-05-10 20:59:10.943' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([ScriptName], [Applied]) VALUES (N'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.MsSql.Structure.Ods.Changes.0030-AddColumnChangeVersionForTables.sql', CAST(N'2024-05-10 20:59:12.027' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([ScriptName], [Applied]) VALUES (N'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.MsSql.Structure.Ods.Changes.0070-AddIndexChangeVersionForTables.sql', CAST(N'2024-05-10 20:59:12.593' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([ScriptName], [Applied]) VALUES (N'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.MsSql.Structure.Ods.Changes.0110-AddSnapshot-Tables.sql', CAST(N'2024-05-10 20:59:12.610' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([ScriptName], [Applied]) VALUES (N'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.MsSql.Structure.Ods.Changes.0120-AddSnapshotIdColumnUniqueIndexes.sql', CAST(N'2024-05-10 20:59:12.617' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([ScriptName], [Applied]) VALUES (N'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.MsSql.Structure.Ods.Changes.0130-AddSnapshotExtendedProperties.sql', CAST(N'2024-05-10 20:59:12.670' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([ScriptName], [Applied]) VALUES (N'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.MsSql.Structure.Ods.Changes.0200-CreateTrackedChangeTables.sql', CAST(N'2024-05-10 20:59:13.547' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([ScriptName], [Applied]) VALUES (N'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.MsSql.Structure.Ods.Changes.0210-CreateTriggersForChangeVersionAndKeyChanges.sql', CAST(N'2024-05-10 20:59:13.823' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([ScriptName], [Applied]) VALUES (N'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.MsSql.Structure.Ods.Changes.0220-CreateTriggersForDeleteTracking.sql', CAST(N'2024-05-10 20:59:15.113' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([ScriptName], [Applied]) VALUES (N'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.MsSql.Structure.Ods.Changes.1010-CreateGetMaxChangeVersionFunction.sql', CAST(N'2024-05-10 20:59:15.117' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([ScriptName], [Applied]) VALUES (N'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.MsSql.Structure.Ods.Changes.1020-AuthViewsIncludingDeletes.sql', CAST(N'2024-05-10 20:59:15.130' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([ScriptName], [Applied]) VALUES (N'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.MsSql.Structure.Ods.Changes.1030-DropSnapshot-Table.sql', CAST(N'2024-05-10 20:59:15.143' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([ScriptName], [Applied]) VALUES (N'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.MsSql.Structure.Ods.Changes.1040-AuthViewStudentResponsibilityIncludingDeletes.sql', CAST(N'2024-05-10 20:59:15.147' AS DateTime))
GO
PRINT N'Update complete.';
