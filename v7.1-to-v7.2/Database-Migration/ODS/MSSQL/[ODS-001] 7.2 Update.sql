-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Updating ODS Database to 7.2';

GO
PRINT N'Creating User-Defined Table Type [dbo].[BigIntTable]...';


GO
CREATE TYPE [dbo].[BigIntTable] AS TABLE (
    [Id] BIGINT NULL);


GO
PRINT N'Creating Table [edfi].[BusRouteDescriptor]...';


GO
CREATE TABLE [edfi].[BusRouteDescriptor] (
    [BusRouteDescriptorId] INT NOT NULL,
    CONSTRAINT [BusRouteDescriptor_PK] PRIMARY KEY CLUSTERED ([BusRouteDescriptorId] ASC)
);


GO
PRINT N'Creating Table [edfi].[CrisisEvent]...';


GO
CREATE TABLE [edfi].[CrisisEvent] (
    [CrisisEventName]        NVARCHAR (100)   NOT NULL,
    [CrisisDescription]      NVARCHAR (1024)  NULL,
    [CrisisEndDate]          DATE             NULL,
    [CrisisStartDate]        DATE             NULL,
    [CrisisTypeDescriptorId] INT              NOT NULL,
    [Discriminator]          NVARCHAR (128)   NULL,
    [CreateDate]             DATETIME2 (7)    NOT NULL,
    [LastModifiedDate]       DATETIME2 (7)    NOT NULL,
    [Id]                     UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [CrisisEvent_PK] PRIMARY KEY CLUSTERED ([CrisisEventName] ASC)
);


GO
PRINT N'Creating Index [edfi].[CrisisEvent].[FK_CrisisEvent_CrisisTypeDescriptor]...';


GO
CREATE NONCLUSTERED INDEX [FK_CrisisEvent_CrisisTypeDescriptor]
    ON [edfi].[CrisisEvent]([CrisisTypeDescriptorId] ASC);


GO
PRINT N'Creating Index [edfi].[CrisisEvent].[UX_CrisisEvent_Id]...';


GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_CrisisEvent_Id]
    ON [edfi].[CrisisEvent]([Id] ASC) WITH (FILLFACTOR = 75, PAD_INDEX = ON);


GO
PRINT N'Creating Table [edfi].[CrisisTypeDescriptor]...';


GO
CREATE TABLE [edfi].[CrisisTypeDescriptor] (
    [CrisisTypeDescriptorId] INT NOT NULL,
    CONSTRAINT [CrisisTypeDescriptor_PK] PRIMARY KEY CLUSTERED ([CrisisTypeDescriptorId] ASC)
);


GO
PRINT N'Creating Table [edfi].[DisplacedStudentStatusDescriptor]...';


GO
CREATE TABLE [edfi].[DisplacedStudentStatusDescriptor] (
    [DisplacedStudentStatusDescriptorId] INT NOT NULL,
    CONSTRAINT [DisplacedStudentStatusDescriptor_PK] PRIMARY KEY CLUSTERED ([DisplacedStudentStatusDescriptorId] ASC)
);


GO
PRINT N'Creating Table [edfi].[ImmunizationTypeDescriptor]...';


GO
CREATE TABLE [edfi].[ImmunizationTypeDescriptor] (
    [ImmunizationTypeDescriptorId] INT NOT NULL,
    CONSTRAINT [ImmunizationTypeDescriptor_PK] PRIMARY KEY CLUSTERED ([ImmunizationTypeDescriptorId] ASC)
);


GO
PRINT N'Creating Table [edfi].[NonMedicalImmunizationExemptionDescriptor]...';


GO
CREATE TABLE [edfi].[NonMedicalImmunizationExemptionDescriptor] (
    [NonMedicalImmunizationExemptionDescriptorId] INT NOT NULL,
    CONSTRAINT [NonMedicalImmunizationExemptionDescriptor_PK] PRIMARY KEY CLUSTERED ([NonMedicalImmunizationExemptionDescriptorId] ASC)
);


GO
PRINT N'Creating Table [edfi].[StudentEducationOrganizationAssociationDisplacedStudent]...';


GO
CREATE TABLE [edfi].[StudentEducationOrganizationAssociationDisplacedStudent] (
    [EducationOrganizationId]            BIGINT         NOT NULL,
    [StudentUSI]                         INT            NOT NULL,
    [CrisisEventName]                    NVARCHAR (100) NOT NULL,
    [CrisisHomelessnessIndicator]        BIT            NULL,
    [DisplacedStudentEndDate]            DATE           NULL,
    [DisplacedStudentStartDate]          DATE           NULL,
    [DisplacedStudentStatusDescriptorId] INT            NOT NULL,
    [CreateDate]                         DATETIME2 (7)  NOT NULL,
    CONSTRAINT [StudentEducationOrganizationAssociationDisplacedStudent_PK] PRIMARY KEY CLUSTERED ([EducationOrganizationId] ASC, [StudentUSI] ASC, [CrisisEventName] ASC)
);


GO
PRINT N'Creating Index [edfi].[StudentEducationOrganizationAssociationDisplacedStudent].[FK_StudentEducationOrganizationAssociationDisplacedStudent_CrisisEvent]...';


GO
CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationDisplacedStudent_CrisisEvent]
    ON [edfi].[StudentEducationOrganizationAssociationDisplacedStudent]([CrisisEventName] ASC);


GO
PRINT N'Creating Index [edfi].[StudentEducationOrganizationAssociationDisplacedStudent].[FK_StudentEducationOrganizationAssociationDisplacedStudent_DisplacedStudentStatusDescriptor]...';


GO
CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationDisplacedStudent_DisplacedStudentStatusDescriptor]
    ON [edfi].[StudentEducationOrganizationAssociationDisplacedStudent]([DisplacedStudentStatusDescriptorId] ASC);


GO
PRINT N'Creating Table [edfi].[StudentHealth]...';


GO
CREATE TABLE [edfi].[StudentHealth] (
    [EducationOrganizationId]                     BIGINT           NOT NULL,
    [StudentUSI]                                  INT              NOT NULL,
    [AsOfDate]                                    DATE             NOT NULL,
    [NonMedicalImmunizationExemptionDate]         DATE             NULL,
    [NonMedicalImmunizationExemptionDescriptorId] INT              NULL,
    [Discriminator]                               NVARCHAR (128)   NULL,
    [CreateDate]                                  DATETIME2 (7)    NOT NULL,
    [LastModifiedDate]                            DATETIME2 (7)    NOT NULL,
    [Id]                                          UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [StudentHealth_PK] PRIMARY KEY CLUSTERED ([EducationOrganizationId] ASC, [StudentUSI] ASC)
);


GO
PRINT N'Creating Index [edfi].[StudentHealth].[FK_StudentHealth_NonMedicalImmunizationExemptionDescriptor]...';


GO
CREATE NONCLUSTERED INDEX [FK_StudentHealth_NonMedicalImmunizationExemptionDescriptor]
    ON [edfi].[StudentHealth]([NonMedicalImmunizationExemptionDescriptorId] ASC);


GO
PRINT N'Creating Index [edfi].[StudentHealth].[FK_StudentHealth_Student]...';


GO
CREATE NONCLUSTERED INDEX [FK_StudentHealth_Student]
    ON [edfi].[StudentHealth]([StudentUSI] ASC);


GO
PRINT N'Creating Index [edfi].[StudentHealth].[UX_StudentHealth_Id]...';


GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_StudentHealth_Id]
    ON [edfi].[StudentHealth]([Id] ASC) WITH (FILLFACTOR = 75, PAD_INDEX = ON);


GO
PRINT N'Creating Index [edfi].[StudentHealth].[IX_StudentHealth_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentHealth_EducationOrganizationId]
    ON [edfi].[StudentHealth]([EducationOrganizationId] ASC)
    INCLUDE([Id]);


GO
PRINT N'Creating Table [edfi].[StudentHealthAdditionalImmunization]...';


GO
CREATE TABLE [edfi].[StudentHealthAdditionalImmunization] (
    [EducationOrganizationId] BIGINT         NOT NULL,
    [StudentUSI]              INT            NOT NULL,
    [ImmunizationName]        NVARCHAR (100) NOT NULL,
    [CreateDate]              DATETIME2 (7)  NOT NULL,
    CONSTRAINT [StudentHealthAdditionalImmunization_PK] PRIMARY KEY CLUSTERED ([EducationOrganizationId] ASC, [StudentUSI] ASC, [ImmunizationName] ASC)
);


GO
PRINT N'Creating Table [edfi].[StudentHealthAdditionalImmunizationDate]...';


GO
CREATE TABLE [edfi].[StudentHealthAdditionalImmunizationDate] (
    [EducationOrganizationId] BIGINT         NOT NULL,
    [StudentUSI]              INT            NOT NULL,
    [ImmunizationName]        NVARCHAR (100) NOT NULL,
    [ImmunizationDate]        DATE           NOT NULL,
    [CreateDate]              DATETIME2 (7)  NOT NULL,
    CONSTRAINT [StudentHealthAdditionalImmunizationDate_PK] PRIMARY KEY CLUSTERED ([EducationOrganizationId] ASC, [StudentUSI] ASC, [ImmunizationName] ASC, [ImmunizationDate] ASC)
);


GO
PRINT N'Creating Table [edfi].[StudentHealthRequiredImmunization]...';


GO
CREATE TABLE [edfi].[StudentHealthRequiredImmunization] (
    [EducationOrganizationId]      BIGINT          NOT NULL,
    [StudentUSI]                   INT             NOT NULL,
    [ImmunizationTypeDescriptorId] INT             NOT NULL,
    [MedicalExemption]             NVARCHAR (1024) NULL,
    [MedicalExemptionDate]         DATE            NULL,
    [CreateDate]                   DATETIME2 (7)   NOT NULL,
    CONSTRAINT [StudentHealthRequiredImmunization_PK] PRIMARY KEY CLUSTERED ([EducationOrganizationId] ASC, [StudentUSI] ASC, [ImmunizationTypeDescriptorId] ASC)
);


GO
PRINT N'Creating Index [edfi].[StudentHealthRequiredImmunization].[FK_StudentHealthRequiredImmunization_ImmunizationTypeDescriptor]...';


GO
CREATE NONCLUSTERED INDEX [FK_StudentHealthRequiredImmunization_ImmunizationTypeDescriptor]
    ON [edfi].[StudentHealthRequiredImmunization]([ImmunizationTypeDescriptorId] ASC);


GO
PRINT N'Creating Table [edfi].[StudentHealthRequiredImmunizationDate]...';


GO
CREATE TABLE [edfi].[StudentHealthRequiredImmunizationDate] (
    [EducationOrganizationId]      BIGINT        NOT NULL,
    [StudentUSI]                   INT           NOT NULL,
    [ImmunizationTypeDescriptorId] INT           NOT NULL,
    [ImmunizationDate]             DATE          NOT NULL,
    [CreateDate]                   DATETIME2 (7) NOT NULL,
    CONSTRAINT [StudentHealthRequiredImmunizationDate_PK] PRIMARY KEY CLUSTERED ([EducationOrganizationId] ASC, [StudentUSI] ASC, [ImmunizationTypeDescriptorId] ASC, [ImmunizationDate] ASC)
);


GO
PRINT N'Creating Table [edfi].[StudentTransportation]...';


GO
CREATE TABLE [edfi].[StudentTransportation] (
    [StudentUSI]                                             INT              NOT NULL,
    [TransportationEducationOrganizationId]                  BIGINT           NOT NULL,
    [SpecialAccomodationRequirements]                        NVARCHAR (1024)  NULL,
    [TransportationPublicExpenseEligibilityTypeDescriptorId] INT              NULL,
    [TransportationTypeDescriptorId]                         INT              NULL,
    [Discriminator]                                          NVARCHAR (128)   NULL,
    [CreateDate]                                             DATETIME2 (7)    NOT NULL,
    [LastModifiedDate]                                       DATETIME2 (7)    NOT NULL,
    [Id]                                                     UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [StudentTransportation_PK] PRIMARY KEY CLUSTERED ([StudentUSI] ASC, [TransportationEducationOrganizationId] ASC)
);


GO
PRINT N'Creating Index [edfi].[StudentTransportation].[FK_StudentTransportation_EducationOrganization]...';


GO
CREATE NONCLUSTERED INDEX [FK_StudentTransportation_EducationOrganization]
    ON [edfi].[StudentTransportation]([TransportationEducationOrganizationId] ASC);


GO
PRINT N'Creating Index [edfi].[StudentTransportation].[FK_StudentTransportation_Student]...';


GO
CREATE NONCLUSTERED INDEX [FK_StudentTransportation_Student]
    ON [edfi].[StudentTransportation]([StudentUSI] ASC);


GO
PRINT N'Creating Index [edfi].[StudentTransportation].[FK_StudentTransportation_TransportationPublicExpenseEligibilityTypeDescriptor]...';


GO
CREATE NONCLUSTERED INDEX [FK_StudentTransportation_TransportationPublicExpenseEligibilityTypeDescriptor]
    ON [edfi].[StudentTransportation]([TransportationPublicExpenseEligibilityTypeDescriptorId] ASC);


GO
PRINT N'Creating Index [edfi].[StudentTransportation].[FK_StudentTransportation_TransportationTypeDescriptor]...';


GO
CREATE NONCLUSTERED INDEX [FK_StudentTransportation_TransportationTypeDescriptor]
    ON [edfi].[StudentTransportation]([TransportationTypeDescriptorId] ASC);


GO
PRINT N'Creating Index [edfi].[StudentTransportation].[UX_StudentTransportation_Id]...';


GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_StudentTransportation_Id]
    ON [edfi].[StudentTransportation]([Id] ASC) WITH (FILLFACTOR = 75, PAD_INDEX = ON);


GO
PRINT N'Creating Table [edfi].[StudentTransportationStudentBusDetails]...';


GO
CREATE TABLE [edfi].[StudentTransportationStudentBusDetails] (
    [StudentUSI]                            INT            NOT NULL,
    [TransportationEducationOrganizationId] BIGINT         NOT NULL,
    [BusNumber]                             NVARCHAR (36)  NOT NULL,
    [BusRouteDescriptorId]                  INT            NOT NULL,
    [Mileage]                               DECIMAL (5, 2) NULL,
    [CreateDate]                            DATETIME2 (7)  NOT NULL,
    CONSTRAINT [StudentTransportationStudentBusDetails_PK] PRIMARY KEY CLUSTERED ([StudentUSI] ASC, [TransportationEducationOrganizationId] ASC)
);


GO
PRINT N'Creating Index [edfi].[StudentTransportationStudentBusDetails].[FK_StudentTransportationStudentBusDetails_BusRouteDescriptor]...';


GO
CREATE NONCLUSTERED INDEX [FK_StudentTransportationStudentBusDetails_BusRouteDescriptor]
    ON [edfi].[StudentTransportationStudentBusDetails]([BusRouteDescriptorId] ASC);


GO
PRINT N'Creating Table [edfi].[StudentTransportationStudentBusDetailsTravelDayofWeek]...';


GO
CREATE TABLE [edfi].[StudentTransportationStudentBusDetailsTravelDayofWeek] (
    [StudentUSI]                            INT           NOT NULL,
    [TransportationEducationOrganizationId] BIGINT        NOT NULL,
    [TravelDayofWeekDescriptorId]           INT           NOT NULL,
    [CreateDate]                            DATETIME2 (7) NOT NULL,
    CONSTRAINT [StudentTransportationStudentBusDetailsTravelDayofWeek_PK] PRIMARY KEY CLUSTERED ([StudentUSI] ASC, [TransportationEducationOrganizationId] ASC, [TravelDayofWeekDescriptorId] ASC)
);


GO
PRINT N'Creating Index [edfi].[StudentTransportationStudentBusDetailsTravelDayofWeek].[FK_StudentTransportationStudentBusDetailsTravelDayofWeek_TravelDayofWeekDescriptor]...';


GO
CREATE NONCLUSTERED INDEX [FK_StudentTransportationStudentBusDetailsTravelDayofWeek_TravelDayofWeekDescriptor]
    ON [edfi].[StudentTransportationStudentBusDetailsTravelDayofWeek]([TravelDayofWeekDescriptorId] ASC);


GO
PRINT N'Creating Table [edfi].[StudentTransportationStudentBusDetailsTravelDirection]...';


GO
CREATE TABLE [edfi].[StudentTransportationStudentBusDetailsTravelDirection] (
    [StudentUSI]                            INT           NOT NULL,
    [TransportationEducationOrganizationId] BIGINT        NOT NULL,
    [TravelDirectionDescriptorId]           INT           NOT NULL,
    [CreateDate]                            DATETIME2 (7) NOT NULL,
    CONSTRAINT [StudentTransportationStudentBusDetailsTravelDirection_PK] PRIMARY KEY CLUSTERED ([StudentUSI] ASC, [TransportationEducationOrganizationId] ASC, [TravelDirectionDescriptorId] ASC)
);


GO
PRINT N'Creating Index [edfi].[StudentTransportationStudentBusDetailsTravelDirection].[FK_StudentTransportationStudentBusDetailsTravelDirection_TravelDirectionDescriptor]...';


GO
CREATE NONCLUSTERED INDEX [FK_StudentTransportationStudentBusDetailsTravelDirection_TravelDirectionDescriptor]
    ON [edfi].[StudentTransportationStudentBusDetailsTravelDirection]([TravelDirectionDescriptorId] ASC);


GO
PRINT N'Creating Table [edfi].[TransportationPublicExpenseEligibilityTypeDescriptor]...';


GO
CREATE TABLE [edfi].[TransportationPublicExpenseEligibilityTypeDescriptor] (
    [TransportationPublicExpenseEligibilityTypeDescriptorId] INT NOT NULL,
    CONSTRAINT [TransportationPublicExpenseEligibilityTypeDescriptor_PK] PRIMARY KEY CLUSTERED ([TransportationPublicExpenseEligibilityTypeDescriptorId] ASC)
);


GO
PRINT N'Creating Table [edfi].[TransportationTypeDescriptor]...';


GO
CREATE TABLE [edfi].[TransportationTypeDescriptor] (
    [TransportationTypeDescriptorId] INT NOT NULL,
    CONSTRAINT [TransportationTypeDescriptor_PK] PRIMARY KEY CLUSTERED ([TransportationTypeDescriptorId] ASC)
);


GO
PRINT N'Creating Table [edfi].[TravelDayofWeekDescriptor]...';


GO
CREATE TABLE [edfi].[TravelDayofWeekDescriptor] (
    [TravelDayofWeekDescriptorId] INT NOT NULL,
    CONSTRAINT [TravelDayofWeekDescriptor_PK] PRIMARY KEY CLUSTERED ([TravelDayofWeekDescriptorId] ASC)
);


GO
PRINT N'Creating Table [edfi].[TravelDirectionDescriptor]...';


GO
CREATE TABLE [edfi].[TravelDirectionDescriptor] (
    [TravelDirectionDescriptorId] INT NOT NULL,
    CONSTRAINT [TravelDirectionDescriptor_PK] PRIMARY KEY CLUSTERED ([TravelDirectionDescriptorId] ASC)
);


GO

PRINT N'Creating Default Constraint [edfi].[CrisisEvent_DF_Id]...';


GO
ALTER TABLE [edfi].[CrisisEvent]
    ADD CONSTRAINT [CrisisEvent_DF_Id] DEFAULT (newid()) FOR [Id];


GO
PRINT N'Creating Default Constraint [edfi].[CrisisEvent_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[CrisisEvent]
    ADD CONSTRAINT [CrisisEvent_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[CrisisEvent_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[CrisisEvent]
    ADD CONSTRAINT [CrisisEvent_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentEducationOrganizationAssociationDisplacedStudent_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationDisplacedStudent]
    ADD CONSTRAINT [StudentEducationOrganizationAssociationDisplacedStudent_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentHealth_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentHealth]
    ADD CONSTRAINT [StudentHealth_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentHealth_DF_Id]...';


GO
ALTER TABLE [edfi].[StudentHealth]
    ADD CONSTRAINT [StudentHealth_DF_Id] DEFAULT (newid()) FOR [Id];


GO
PRINT N'Creating Default Constraint [edfi].[StudentHealth_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[StudentHealth]
    ADD CONSTRAINT [StudentHealth_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentHealthAdditionalImmunization_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentHealthAdditionalImmunization]
    ADD CONSTRAINT [StudentHealthAdditionalImmunization_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentHealthAdditionalImmunizationDate_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentHealthAdditionalImmunizationDate]
    ADD CONSTRAINT [StudentHealthAdditionalImmunizationDate_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentHealthRequiredImmunization_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentHealthRequiredImmunization]
    ADD CONSTRAINT [StudentHealthRequiredImmunization_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentHealthRequiredImmunizationDate_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentHealthRequiredImmunizationDate]
    ADD CONSTRAINT [StudentHealthRequiredImmunizationDate_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentTransportation_DF_Id]...';


GO
ALTER TABLE [edfi].[StudentTransportation]
    ADD CONSTRAINT [StudentTransportation_DF_Id] DEFAULT (newid()) FOR [Id];


GO
PRINT N'Creating Default Constraint [edfi].[StudentTransportation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentTransportation]
    ADD CONSTRAINT [StudentTransportation_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentTransportation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[StudentTransportation]
    ADD CONSTRAINT [StudentTransportation_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentTransportationStudentBusDetails_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentTransportationStudentBusDetails]
    ADD CONSTRAINT [StudentTransportationStudentBusDetails_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentTransportationStudentBusDetailsTravelDayofWeek_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentTransportationStudentBusDetailsTravelDayofWeek]
    ADD CONSTRAINT [StudentTransportationStudentBusDetailsTravelDayofWeek_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentTransportationStudentBusDetailsTravelDirection_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentTransportationStudentBusDetailsTravelDirection]
    ADD CONSTRAINT [StudentTransportationStudentBusDetailsTravelDirection_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating Foreign Key [edfi].[FK_BusRouteDescriptor_Descriptor]...';


GO
ALTER TABLE [edfi].[BusRouteDescriptor] WITH NOCHECK
    ADD CONSTRAINT [FK_BusRouteDescriptor_Descriptor] FOREIGN KEY ([BusRouteDescriptorId]) REFERENCES [edfi].[Descriptor] ([DescriptorId]) ON DELETE CASCADE;


GO
PRINT N'Creating Foreign Key [edfi].[FK_CrisisEvent_CrisisTypeDescriptor]...';


GO
ALTER TABLE [edfi].[CrisisEvent] WITH NOCHECK
    ADD CONSTRAINT [FK_CrisisEvent_CrisisTypeDescriptor] FOREIGN KEY ([CrisisTypeDescriptorId]) REFERENCES [edfi].[CrisisTypeDescriptor] ([CrisisTypeDescriptorId]);


GO
PRINT N'Creating Foreign Key [edfi].[FK_CrisisTypeDescriptor_Descriptor]...';


GO
ALTER TABLE [edfi].[CrisisTypeDescriptor] WITH NOCHECK
    ADD CONSTRAINT [FK_CrisisTypeDescriptor_Descriptor] FOREIGN KEY ([CrisisTypeDescriptorId]) REFERENCES [edfi].[Descriptor] ([DescriptorId]) ON DELETE CASCADE;


GO
PRINT N'Creating Foreign Key [edfi].[FK_DisplacedStudentStatusDescriptor_Descriptor]...';


GO
ALTER TABLE [edfi].[DisplacedStudentStatusDescriptor] WITH NOCHECK
    ADD CONSTRAINT [FK_DisplacedStudentStatusDescriptor_Descriptor] FOREIGN KEY ([DisplacedStudentStatusDescriptorId]) REFERENCES [edfi].[Descriptor] ([DescriptorId]) ON DELETE CASCADE;


GO
PRINT N'Creating Foreign Key [edfi].[FK_ImmunizationTypeDescriptor_Descriptor]...';


GO
ALTER TABLE [edfi].[ImmunizationTypeDescriptor] WITH NOCHECK
    ADD CONSTRAINT [FK_ImmunizationTypeDescriptor_Descriptor] FOREIGN KEY ([ImmunizationTypeDescriptorId]) REFERENCES [edfi].[Descriptor] ([DescriptorId]) ON DELETE CASCADE;


GO
PRINT N'Creating Foreign Key [edfi].[FK_NonMedicalImmunizationExemptionDescriptor_Descriptor]...';


GO
ALTER TABLE [edfi].[NonMedicalImmunizationExemptionDescriptor] WITH NOCHECK
    ADD CONSTRAINT [FK_NonMedicalImmunizationExemptionDescriptor_Descriptor] FOREIGN KEY ([NonMedicalImmunizationExemptionDescriptorId]) REFERENCES [edfi].[Descriptor] ([DescriptorId]) ON DELETE CASCADE;


GO
PRINT N'Creating Foreign Key [edfi].[FK_StudentEducationOrganizationAssociationDisplacedStudent_CrisisEvent]...';


GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationDisplacedStudent] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationDisplacedStudent_CrisisEvent] FOREIGN KEY ([CrisisEventName]) REFERENCES [edfi].[CrisisEvent] ([CrisisEventName]);


GO
PRINT N'Creating Foreign Key [edfi].[FK_StudentEducationOrganizationAssociationDisplacedStudent_DisplacedStudentStatusDescriptor]...';


GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationDisplacedStudent] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationDisplacedStudent_DisplacedStudentStatusDescriptor] FOREIGN KEY ([DisplacedStudentStatusDescriptorId]) REFERENCES [edfi].[DisplacedStudentStatusDescriptor] ([DisplacedStudentStatusDescriptorId]);


GO
PRINT N'Creating Foreign Key [edfi].[FK_StudentEducationOrganizationAssociationDisplacedStudent_StudentEducationOrganizationAssociation]...';


GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationDisplacedStudent] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationDisplacedStudent_StudentEducationOrganizationAssociation] FOREIGN KEY ([EducationOrganizationId], [StudentUSI]) REFERENCES [edfi].[StudentEducationOrganizationAssociation] ([EducationOrganizationId], [StudentUSI]) ON DELETE CASCADE;


GO
PRINT N'Creating Foreign Key [edfi].[FK_StudentHealth_EducationOrganization]...';


GO
ALTER TABLE [edfi].[StudentHealth] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentHealth_EducationOrganization] FOREIGN KEY ([EducationOrganizationId]) REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId]);


GO
PRINT N'Creating Foreign Key [edfi].[FK_StudentHealth_NonMedicalImmunizationExemptionDescriptor]...';


GO
ALTER TABLE [edfi].[StudentHealth] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentHealth_NonMedicalImmunizationExemptionDescriptor] FOREIGN KEY ([NonMedicalImmunizationExemptionDescriptorId]) REFERENCES [edfi].[NonMedicalImmunizationExemptionDescriptor] ([NonMedicalImmunizationExemptionDescriptorId]);


GO
PRINT N'Creating Foreign Key [edfi].[FK_StudentHealth_Student]...';


GO
ALTER TABLE [edfi].[StudentHealth] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentHealth_Student] FOREIGN KEY ([StudentUSI]) REFERENCES [edfi].[Student] ([StudentUSI]);


GO
PRINT N'Creating Foreign Key [edfi].[FK_StudentHealthAdditionalImmunization_StudentHealth]...';


GO
ALTER TABLE [edfi].[StudentHealthAdditionalImmunization] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentHealthAdditionalImmunization_StudentHealth] FOREIGN KEY ([EducationOrganizationId], [StudentUSI]) REFERENCES [edfi].[StudentHealth] ([EducationOrganizationId], [StudentUSI]) ON DELETE CASCADE;


GO
PRINT N'Creating Foreign Key [edfi].[FK_StudentHealthAdditionalImmunizationDate_StudentHealthAdditionalImmunization]...';


GO
ALTER TABLE [edfi].[StudentHealthAdditionalImmunizationDate] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentHealthAdditionalImmunizationDate_StudentHealthAdditionalImmunization] FOREIGN KEY ([EducationOrganizationId], [StudentUSI], [ImmunizationName]) REFERENCES [edfi].[StudentHealthAdditionalImmunization] ([EducationOrganizationId], [StudentUSI], [ImmunizationName]) ON DELETE CASCADE;


GO
PRINT N'Creating Foreign Key [edfi].[FK_StudentHealthRequiredImmunization_ImmunizationTypeDescriptor]...';


GO
ALTER TABLE [edfi].[StudentHealthRequiredImmunization] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentHealthRequiredImmunization_ImmunizationTypeDescriptor] FOREIGN KEY ([ImmunizationTypeDescriptorId]) REFERENCES [edfi].[ImmunizationTypeDescriptor] ([ImmunizationTypeDescriptorId]);


GO
PRINT N'Creating Foreign Key [edfi].[FK_StudentHealthRequiredImmunization_StudentHealth]...';


GO
ALTER TABLE [edfi].[StudentHealthRequiredImmunization] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentHealthRequiredImmunization_StudentHealth] FOREIGN KEY ([EducationOrganizationId], [StudentUSI]) REFERENCES [edfi].[StudentHealth] ([EducationOrganizationId], [StudentUSI]) ON DELETE CASCADE;


GO
PRINT N'Creating Foreign Key [edfi].[FK_StudentHealthRequiredImmunizationDate_StudentHealthRequiredImmunization]...';


GO
ALTER TABLE [edfi].[StudentHealthRequiredImmunizationDate] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentHealthRequiredImmunizationDate_StudentHealthRequiredImmunization] FOREIGN KEY ([EducationOrganizationId], [StudentUSI], [ImmunizationTypeDescriptorId]) REFERENCES [edfi].[StudentHealthRequiredImmunization] ([EducationOrganizationId], [StudentUSI], [ImmunizationTypeDescriptorId]) ON DELETE CASCADE;


GO
PRINT N'Creating Foreign Key [edfi].[FK_StudentTransportation_EducationOrganization]...';


GO
ALTER TABLE [edfi].[StudentTransportation] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentTransportation_EducationOrganization] FOREIGN KEY ([TransportationEducationOrganizationId]) REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId]);


GO
PRINT N'Creating Foreign Key [edfi].[FK_StudentTransportation_Student]...';


GO
ALTER TABLE [edfi].[StudentTransportation] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentTransportation_Student] FOREIGN KEY ([StudentUSI]) REFERENCES [edfi].[Student] ([StudentUSI]);


GO
PRINT N'Creating Foreign Key [edfi].[FK_StudentTransportation_TransportationPublicExpenseEligibilityTypeDescriptor]...';


GO
ALTER TABLE [edfi].[StudentTransportation] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentTransportation_TransportationPublicExpenseEligibilityTypeDescriptor] FOREIGN KEY ([TransportationPublicExpenseEligibilityTypeDescriptorId]) REFERENCES [edfi].[TransportationPublicExpenseEligibilityTypeDescriptor] ([TransportationPublicExpenseEligibilityTypeDescriptorId]);


GO
PRINT N'Creating Foreign Key [edfi].[FK_StudentTransportation_TransportationTypeDescriptor]...';


GO
ALTER TABLE [edfi].[StudentTransportation] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentTransportation_TransportationTypeDescriptor] FOREIGN KEY ([TransportationTypeDescriptorId]) REFERENCES [edfi].[TransportationTypeDescriptor] ([TransportationTypeDescriptorId]);


GO
PRINT N'Creating Foreign Key [edfi].[FK_StudentTransportationStudentBusDetails_BusRouteDescriptor]...';


GO
ALTER TABLE [edfi].[StudentTransportationStudentBusDetails] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentTransportationStudentBusDetails_BusRouteDescriptor] FOREIGN KEY ([BusRouteDescriptorId]) REFERENCES [edfi].[BusRouteDescriptor] ([BusRouteDescriptorId]);


GO
PRINT N'Creating Foreign Key [edfi].[FK_StudentTransportationStudentBusDetails_StudentTransportation]...';


GO
ALTER TABLE [edfi].[StudentTransportationStudentBusDetails] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentTransportationStudentBusDetails_StudentTransportation] FOREIGN KEY ([StudentUSI], [TransportationEducationOrganizationId]) REFERENCES [edfi].[StudentTransportation] ([StudentUSI], [TransportationEducationOrganizationId]) ON DELETE CASCADE;


GO
PRINT N'Creating Foreign Key [edfi].[FK_StudentTransportationStudentBusDetailsTravelDayofWeek_StudentTransportationStudentBusDetails]...';


GO
ALTER TABLE [edfi].[StudentTransportationStudentBusDetailsTravelDayofWeek] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentTransportationStudentBusDetailsTravelDayofWeek_StudentTransportationStudentBusDetails] FOREIGN KEY ([StudentUSI], [TransportationEducationOrganizationId]) REFERENCES [edfi].[StudentTransportationStudentBusDetails] ([StudentUSI], [TransportationEducationOrganizationId]) ON DELETE CASCADE;


GO
PRINT N'Creating Foreign Key [edfi].[FK_StudentTransportationStudentBusDetailsTravelDayofWeek_TravelDayofWeekDescriptor]...';


GO
ALTER TABLE [edfi].[StudentTransportationStudentBusDetailsTravelDayofWeek] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentTransportationStudentBusDetailsTravelDayofWeek_TravelDayofWeekDescriptor] FOREIGN KEY ([TravelDayofWeekDescriptorId]) REFERENCES [edfi].[TravelDayofWeekDescriptor] ([TravelDayofWeekDescriptorId]);


GO
PRINT N'Creating Foreign Key [edfi].[FK_StudentTransportationStudentBusDetailsTravelDirection_StudentTransportationStudentBusDetails]...';


GO
ALTER TABLE [edfi].[StudentTransportationStudentBusDetailsTravelDirection] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentTransportationStudentBusDetailsTravelDirection_StudentTransportationStudentBusDetails] FOREIGN KEY ([StudentUSI], [TransportationEducationOrganizationId]) REFERENCES [edfi].[StudentTransportationStudentBusDetails] ([StudentUSI], [TransportationEducationOrganizationId]) ON DELETE CASCADE;


GO
PRINT N'Creating Foreign Key [edfi].[FK_StudentTransportationStudentBusDetailsTravelDirection_TravelDirectionDescriptor]...';


GO
ALTER TABLE [edfi].[StudentTransportationStudentBusDetailsTravelDirection] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentTransportationStudentBusDetailsTravelDirection_TravelDirectionDescriptor] FOREIGN KEY ([TravelDirectionDescriptorId]) REFERENCES [edfi].[TravelDirectionDescriptor] ([TravelDirectionDescriptorId]);


GO
PRINT N'Creating Foreign Key [edfi].[FK_TransportationPublicExpenseEligibilityTypeDescriptor_Descriptor]...';


GO
ALTER TABLE [edfi].[TransportationPublicExpenseEligibilityTypeDescriptor] WITH NOCHECK
    ADD CONSTRAINT [FK_TransportationPublicExpenseEligibilityTypeDescriptor_Descriptor] FOREIGN KEY ([TransportationPublicExpenseEligibilityTypeDescriptorId]) REFERENCES [edfi].[Descriptor] ([DescriptorId]) ON DELETE CASCADE;


GO
PRINT N'Creating Foreign Key [edfi].[FK_TransportationTypeDescriptor_Descriptor]...';


GO
ALTER TABLE [edfi].[TransportationTypeDescriptor] WITH NOCHECK
    ADD CONSTRAINT [FK_TransportationTypeDescriptor_Descriptor] FOREIGN KEY ([TransportationTypeDescriptorId]) REFERENCES [edfi].[Descriptor] ([DescriptorId]) ON DELETE CASCADE;


GO
PRINT N'Creating Foreign Key [edfi].[FK_TravelDayofWeekDescriptor_Descriptor]...';


GO
ALTER TABLE [edfi].[TravelDayofWeekDescriptor] WITH NOCHECK
    ADD CONSTRAINT [FK_TravelDayofWeekDescriptor_Descriptor] FOREIGN KEY ([TravelDayofWeekDescriptorId]) REFERENCES [edfi].[Descriptor] ([DescriptorId]) ON DELETE CASCADE;


GO
PRINT N'Creating Foreign Key [edfi].[FK_TravelDirectionDescriptor_Descriptor]...';


GO
ALTER TABLE [edfi].[TravelDirectionDescriptor] WITH NOCHECK
    ADD CONSTRAINT [FK_TravelDirectionDescriptor_Descriptor] FOREIGN KEY ([TravelDirectionDescriptorId]) REFERENCES [edfi].[Descriptor] ([DescriptorId]) ON DELETE CASCADE;


GO
PRINT N'Altering Function [util].[GetEdFiOdsVersion]...';


GO
ALTER FUNCTION util.GetEdFiOdsVersion()
RETURNS VARCHAR(60)
AS
BEGIN
    RETURN '7.2'
END
GO
PRINT N'Altering Function [util].[GetEdFiStandardVersion]...';


GO
ALTER FUNCTION util.GetEdFiStandardVersion()
RETURNS VARCHAR(60)
AS
BEGIN
    RETURN '5.1'
END
GO
PRINT N'Altering Extended Property [edfi].[AcademicWeek].[SchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AcademicWeek', @level2type = N'COLUMN', @level2name = N'SchoolId';


GO
PRINT N'Altering Extended Property [edfi].[AssessmentSection].[SchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AssessmentSection', @level2type = N'COLUMN', @level2name = N'SchoolId';


GO
PRINT N'Altering Extended Property [edfi].[BellSchedule].[SchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'BellSchedule', @level2type = N'COLUMN', @level2name = N'SchoolId';


GO
PRINT N'Altering Extended Property [edfi].[BellScheduleClassPeriod].[SchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'BellScheduleClassPeriod', @level2type = N'COLUMN', @level2name = N'SchoolId';


GO
PRINT N'Altering Extended Property [edfi].[BellScheduleDate].[SchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'BellScheduleDate', @level2type = N'COLUMN', @level2name = N'SchoolId';


GO
PRINT N'Altering Extended Property [edfi].[BellScheduleGradeLevel].[SchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'BellScheduleGradeLevel', @level2type = N'COLUMN', @level2name = N'SchoolId';


GO
PRINT N'Altering Extended Property [edfi].[Calendar].[SchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'Calendar', @level2type = N'COLUMN', @level2name = N'SchoolId';


GO
PRINT N'Altering Extended Property [edfi].[CalendarDate].[SchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'CalendarDate', @level2type = N'COLUMN', @level2name = N'SchoolId';


GO
PRINT N'Altering Extended Property [edfi].[CalendarDateCalendarEvent].[SchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'CalendarDateCalendarEvent', @level2type = N'COLUMN', @level2name = N'SchoolId';


GO
PRINT N'Altering Extended Property [edfi].[CalendarGradeLevel].[SchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'CalendarGradeLevel', @level2type = N'COLUMN', @level2name = N'SchoolId';


GO
PRINT N'Altering Extended Property [edfi].[ClassPeriod].[SchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'ClassPeriod', @level2type = N'COLUMN', @level2name = N'SchoolId';


GO
PRINT N'Altering Extended Property [edfi].[ClassPeriodMeetingTime].[SchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'ClassPeriodMeetingTime', @level2type = N'COLUMN', @level2name = N'SchoolId';


GO
PRINT N'Altering Extended Property [edfi].[CommunityOrganization].[CommunityOrganizationId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a community organization. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'CommunityOrganization', @level2type = N'COLUMN', @level2name = N'CommunityOrganizationId';


GO
PRINT N'Altering Extended Property [edfi].[CommunityProvider].[CommunityOrganizationId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a community organization. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'CommunityProvider', @level2type = N'COLUMN', @level2name = N'CommunityOrganizationId';


GO
PRINT N'Altering Extended Property [edfi].[CommunityProvider].[CommunityProviderId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a community provider. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'CommunityProvider', @level2type = N'COLUMN', @level2name = N'CommunityProviderId';


GO
PRINT N'Altering Extended Property [edfi].[CommunityProviderLicense].[CommunityProviderId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a community provider. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'CommunityProviderLicense', @level2type = N'COLUMN', @level2name = N'CommunityProviderId';


GO
PRINT N'Altering Extended Property [edfi].[ContactAddress].[NameOfCounty].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The name of the county, parish, borough, or comparable unit (within a state) in which an address is located.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'ContactAddress', @level2type = N'COLUMN', @level2name = N'NameOfCounty';


GO
PRINT N'Altering Extended Property [edfi].[CourseOffering].[SchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'CourseOffering', @level2type = N'COLUMN', @level2name = N'SchoolId';


GO
PRINT N'Altering Extended Property [edfi].[CourseOfferingCourseLevelCharacteristic].[SchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'CourseOfferingCourseLevelCharacteristic', @level2type = N'COLUMN', @level2name = N'SchoolId';


GO
PRINT N'Altering Extended Property [edfi].[CourseOfferingCurriculumUsed].[SchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'CourseOfferingCurriculumUsed', @level2type = N'COLUMN', @level2name = N'SchoolId';


GO
PRINT N'Altering Extended Property [edfi].[CourseOfferingOfferedGradeLevel].[SchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'CourseOfferingOfferedGradeLevel', @level2type = N'COLUMN', @level2name = N'SchoolId';


GO
PRINT N'Altering Extended Property [edfi].[CourseTranscriptSection].[SchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'CourseTranscriptSection', @level2type = N'COLUMN', @level2name = N'SchoolId';


GO
PRINT N'Altering Extended Property [edfi].[DisciplineAction].[AssignmentSchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'DisciplineAction', @level2type = N'COLUMN', @level2name = N'AssignmentSchoolId';


GO
PRINT N'Altering Extended Property [edfi].[DisciplineAction].[ResponsibilitySchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'DisciplineAction', @level2type = N'COLUMN', @level2name = N'ResponsibilitySchoolId';


GO
PRINT N'Altering Extended Property [edfi].[DisciplineActionStudentDisciplineIncidentBehaviorAssociation].[SchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'DisciplineActionStudentDisciplineIncidentBehaviorAssociation', @level2type = N'COLUMN', @level2name = N'SchoolId';


GO
PRINT N'Altering Extended Property [edfi].[DisciplineIncident].[SchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'DisciplineIncident', @level2type = N'COLUMN', @level2name = N'SchoolId';


GO
PRINT N'Altering Extended Property [edfi].[DisciplineIncidentBehavior].[SchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'DisciplineIncidentBehavior', @level2type = N'COLUMN', @level2name = N'SchoolId';


GO
PRINT N'Altering Extended Property [edfi].[DisciplineIncidentExternalParticipant].[SchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'DisciplineIncidentExternalParticipant', @level2type = N'COLUMN', @level2name = N'SchoolId';


GO
PRINT N'Altering Extended Property [edfi].[DisciplineIncidentWeapon].[SchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'DisciplineIncidentWeapon', @level2type = N'COLUMN', @level2name = N'SchoolId';


GO
PRINT N'Altering Extended Property [edfi].[EducationOrganizationAddress].[NameOfCounty].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The name of the county, parish, borough, or comparable unit (within a state) in which an address is located.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'EducationOrganizationAddress', @level2type = N'COLUMN', @level2name = N'NameOfCounty';


GO
PRINT N'Altering Extended Property [edfi].[EducationOrganizationNetwork].[EducationOrganizationNetworkId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a network of education organizations. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'EducationOrganizationNetwork', @level2type = N'COLUMN', @level2name = N'EducationOrganizationNetworkId';


GO
PRINT N'Altering Extended Property [edfi].[EducationOrganizationNetworkAssociation].[EducationOrganizationNetworkId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a network of education organizations. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'EducationOrganizationNetworkAssociation', @level2type = N'COLUMN', @level2name = N'EducationOrganizationNetworkId';


GO
PRINT N'Altering Extended Property [edfi].[EducationServiceCenter].[EducationServiceCenterId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to an education service center. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'EducationServiceCenter', @level2type = N'COLUMN', @level2name = N'EducationServiceCenterId';


GO
PRINT N'Altering Extended Property [edfi].[EducationServiceCenter].[StateEducationAgencyId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a state education agency. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'EducationServiceCenter', @level2type = N'COLUMN', @level2name = N'StateEducationAgencyId';


GO
PRINT N'Altering Extended Property [edfi].[FeederSchoolAssociation].[FeederSchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'FeederSchoolAssociation', @level2type = N'COLUMN', @level2name = N'FeederSchoolId';


GO
PRINT N'Altering Extended Property [edfi].[FeederSchoolAssociation].[SchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'FeederSchoolAssociation', @level2type = N'COLUMN', @level2name = N'SchoolId';


GO
PRINT N'Altering Extended Property [edfi].[Grade].[SchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'Grade', @level2type = N'COLUMN', @level2name = N'SchoolId';


GO
PRINT N'Altering Extended Property [edfi].[GradebookEntry].[SchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'GradebookEntry', @level2type = N'COLUMN', @level2name = N'SchoolId';


GO
PRINT N'Altering Extended Property [edfi].[GradeLearningStandardGrade].[SchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'GradeLearningStandardGrade', @level2type = N'COLUMN', @level2name = N'SchoolId';


GO
PRINT N'Altering Extended Property [edfi].[GradingPeriod].[SchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'GradingPeriod', @level2type = N'COLUMN', @level2name = N'SchoolId';


GO
PRINT N'Altering Extended Property [edfi].[LocalEducationAgency].[EducationServiceCenterId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to an education service center. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'LocalEducationAgency', @level2type = N'COLUMN', @level2name = N'EducationServiceCenterId';


GO
PRINT N'Altering Extended Property [edfi].[LocalEducationAgency].[LocalEducationAgencyId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a local education agency. It must be distinct from any other identifier assigned to educational organizations, such as a SchoolId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'LocalEducationAgency', @level2type = N'COLUMN', @level2name = N'LocalEducationAgencyId';


GO
PRINT N'Altering Extended Property [edfi].[LocalEducationAgency].[ParentLocalEducationAgencyId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a local education agency. It must be distinct from any other identifier assigned to educational organizations, such as a SchoolId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'LocalEducationAgency', @level2type = N'COLUMN', @level2name = N'ParentLocalEducationAgencyId';


GO
PRINT N'Altering Extended Property [edfi].[LocalEducationAgency].[StateEducationAgencyId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a state education agency. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'LocalEducationAgency', @level2type = N'COLUMN', @level2name = N'StateEducationAgencyId';


GO
PRINT N'Altering Extended Property [edfi].[LocalEducationAgencyAccountability].[LocalEducationAgencyId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a local education agency. It must be distinct from any other identifier assigned to educational organizations, such as a SchoolId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'LocalEducationAgencyAccountability', @level2type = N'COLUMN', @level2name = N'LocalEducationAgencyId';


GO
PRINT N'Altering Extended Property [edfi].[LocalEducationAgencyFederalFunds].[LocalEducationAgencyId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a local education agency. It must be distinct from any other identifier assigned to educational organizations, such as a SchoolId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'LocalEducationAgencyFederalFunds', @level2type = N'COLUMN', @level2name = N'LocalEducationAgencyId';


GO
PRINT N'Altering Extended Property [edfi].[Location].[SchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'Location', @level2type = N'COLUMN', @level2name = N'SchoolId';


GO
PRINT N'Altering Extended Property [edfi].[OrganizationDepartment].[OrganizationDepartmentId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The unique identification code for the organization department. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'OrganizationDepartment', @level2type = N'COLUMN', @level2name = N'OrganizationDepartmentId';


GO
PRINT N'Altering Extended Property [edfi].[PostSecondaryEvent].[PostSecondaryInstitutionId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The ID of the post secondary institution. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'PostSecondaryEvent', @level2type = N'COLUMN', @level2name = N'PostSecondaryInstitutionId';


GO
PRINT N'Altering Extended Property [edfi].[PostSecondaryInstitution].[PostSecondaryInstitutionId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The ID of the post secondary institution. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'PostSecondaryInstitution', @level2type = N'COLUMN', @level2name = N'PostSecondaryInstitutionId';


GO
PRINT N'Altering Extended Property [edfi].[PostSecondaryInstitutionMediumOfInstruction].[PostSecondaryInstitutionId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The ID of the post secondary institution. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'PostSecondaryInstitutionMediumOfInstruction', @level2type = N'COLUMN', @level2name = N'PostSecondaryInstitutionId';


GO
PRINT N'Altering Extended Property [edfi].[ReportCard].[GradingPeriodSchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'ReportCard', @level2type = N'COLUMN', @level2name = N'GradingPeriodSchoolId';


GO
PRINT N'Altering Extended Property [edfi].[ReportCardGrade].[GradingPeriodSchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'ReportCardGrade', @level2type = N'COLUMN', @level2name = N'GradingPeriodSchoolId';


GO
PRINT N'Altering Extended Property [edfi].[ReportCardGrade].[SchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'ReportCardGrade', @level2type = N'COLUMN', @level2name = N'SchoolId';


GO
PRINT N'Altering Extended Property [edfi].[ReportCardGradePointAverage].[GradingPeriodSchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'ReportCardGradePointAverage', @level2type = N'COLUMN', @level2name = N'GradingPeriodSchoolId';


GO
PRINT N'Altering Extended Property [edfi].[ReportCardStudentCompetencyObjective].[GradingPeriodSchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'ReportCardStudentCompetencyObjective', @level2type = N'COLUMN', @level2name = N'GradingPeriodSchoolId';


GO
PRINT N'Altering Extended Property [edfi].[RestraintEvent].[SchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'RestraintEvent', @level2type = N'COLUMN', @level2name = N'SchoolId';


GO
PRINT N'Altering Extended Property [edfi].[RestraintEventProgram].[SchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'RestraintEventProgram', @level2type = N'COLUMN', @level2name = N'SchoolId';


GO
PRINT N'Altering Extended Property [edfi].[RestraintEventReason].[SchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'RestraintEventReason', @level2type = N'COLUMN', @level2name = N'SchoolId';


GO
PRINT N'Altering Extended Property [edfi].[School].[LocalEducationAgencyId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a local education agency. It must be distinct from any other identifier assigned to educational organizations, such as a SchoolId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'School', @level2type = N'COLUMN', @level2name = N'LocalEducationAgencyId';


GO
PRINT N'Altering Extended Property [edfi].[School].[SchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'School', @level2type = N'COLUMN', @level2name = N'SchoolId';


GO
PRINT N'Altering Extended Property [edfi].[SchoolCategory].[SchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SchoolCategory', @level2type = N'COLUMN', @level2name = N'SchoolId';


GO
PRINT N'Altering Extended Property [edfi].[SchoolGradeLevel].[SchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SchoolGradeLevel', @level2type = N'COLUMN', @level2name = N'SchoolId';


GO
PRINT N'Altering Extended Property [edfi].[Section].[LocationSchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'Section', @level2type = N'COLUMN', @level2name = N'LocationSchoolId';


GO
PRINT N'Altering Extended Property [edfi].[Section].[SchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'Section', @level2type = N'COLUMN', @level2name = N'SchoolId';


GO
PRINT N'Altering Extended Property [edfi].[SectionAttendanceTakenEvent].[SchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SectionAttendanceTakenEvent', @level2type = N'COLUMN', @level2name = N'SchoolId';


GO
PRINT N'Altering Extended Property [edfi].[SectionCharacteristic].[SchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SectionCharacteristic', @level2type = N'COLUMN', @level2name = N'SchoolId';


GO
PRINT N'Altering Extended Property [edfi].[SectionClassPeriod].[SchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SectionClassPeriod', @level2type = N'COLUMN', @level2name = N'SchoolId';


GO
PRINT N'Altering Extended Property [edfi].[SectionCourseLevelCharacteristic].[SchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SectionCourseLevelCharacteristic', @level2type = N'COLUMN', @level2name = N'SchoolId';


GO
PRINT N'Altering Extended Property [edfi].[SectionOfferedGradeLevel].[SchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SectionOfferedGradeLevel', @level2type = N'COLUMN', @level2name = N'SchoolId';


GO
PRINT N'Altering Extended Property [edfi].[SectionProgram].[SchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SectionProgram', @level2type = N'COLUMN', @level2name = N'SchoolId';


GO
PRINT N'Altering Extended Property [edfi].[Session].[SchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'Session', @level2type = N'COLUMN', @level2name = N'SchoolId';


GO
PRINT N'Altering Extended Property [edfi].[SessionAcademicWeek].[SchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SessionAcademicWeek', @level2type = N'COLUMN', @level2name = N'SchoolId';


GO
PRINT N'Altering Extended Property [edfi].[SessionGradingPeriod].[SchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SessionGradingPeriod', @level2type = N'COLUMN', @level2name = N'SchoolId';


GO
PRINT N'Altering Extended Property [edfi].[StaffAddress].[NameOfCounty].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The name of the county, parish, borough, or comparable unit (within a state) in which an address is located.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StaffAddress', @level2type = N'COLUMN', @level2name = N'NameOfCounty';


GO
PRINT N'Altering Extended Property [edfi].[StaffDisciplineIncidentAssociation].[SchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StaffDisciplineIncidentAssociation', @level2type = N'COLUMN', @level2name = N'SchoolId';


GO
PRINT N'Altering Extended Property [edfi].[StaffDisciplineIncidentAssociationDisciplineIncidentParticipationCode].[SchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StaffDisciplineIncidentAssociationDisciplineIncidentParticipationCode', @level2type = N'COLUMN', @level2name = N'SchoolId';


GO
PRINT N'Altering Extended Property [edfi].[StaffEducationOrganizationContactAssociationAddress].[NameOfCounty].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The name of the county, parish, borough, or comparable unit (within a state) in which an address is located.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StaffEducationOrganizationContactAssociationAddress', @level2type = N'COLUMN', @level2name = N'NameOfCounty';


GO
PRINT N'Altering Extended Property [edfi].[StaffSchoolAssociation].[SchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StaffSchoolAssociation', @level2type = N'COLUMN', @level2name = N'SchoolId';


GO
PRINT N'Altering Extended Property [edfi].[StaffSchoolAssociationAcademicSubject].[SchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StaffSchoolAssociationAcademicSubject', @level2type = N'COLUMN', @level2name = N'SchoolId';


GO
PRINT N'Altering Extended Property [edfi].[StaffSchoolAssociationGradeLevel].[SchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StaffSchoolAssociationGradeLevel', @level2type = N'COLUMN', @level2name = N'SchoolId';


GO
PRINT N'Altering Extended Property [edfi].[StaffSectionAssociation].[SchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StaffSectionAssociation', @level2type = N'COLUMN', @level2name = N'SchoolId';


GO
PRINT N'Altering Extended Property [edfi].[StateEducationAgency].[StateEducationAgencyId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a state education agency. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StateEducationAgency', @level2type = N'COLUMN', @level2name = N'StateEducationAgencyId';


GO
PRINT N'Altering Extended Property [edfi].[StateEducationAgencyAccountability].[StateEducationAgencyId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a state education agency. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StateEducationAgencyAccountability', @level2type = N'COLUMN', @level2name = N'StateEducationAgencyId';


GO
PRINT N'Altering Extended Property [edfi].[StateEducationAgencyFederalFunds].[StateEducationAgencyId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a state education agency. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StateEducationAgencyFederalFunds', @level2type = N'COLUMN', @level2name = N'StateEducationAgencyId';


GO
PRINT N'Altering Extended Property [edfi].[StudentAcademicRecordReportCard].[GradingPeriodSchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentAcademicRecordReportCard', @level2type = N'COLUMN', @level2name = N'GradingPeriodSchoolId';


GO
PRINT N'Altering Extended Property [edfi].[StudentAssessment].[ReportedSchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentAssessment', @level2type = N'COLUMN', @level2name = N'ReportedSchoolId';


GO
PRINT N'Altering Extended Property [edfi].[StudentCohortAssociationSection].[SchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentCohortAssociationSection', @level2type = N'COLUMN', @level2name = N'SchoolId';


GO
PRINT N'Altering Extended Property [edfi].[StudentCompetencyObjective].[GradingPeriodSchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentCompetencyObjective', @level2type = N'COLUMN', @level2name = N'GradingPeriodSchoolId';


GO
PRINT N'Altering Extended Property [edfi].[StudentCompetencyObjectiveGeneralStudentProgramAssociation].[GradingPeriodSchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentCompetencyObjectiveGeneralStudentProgramAssociation', @level2type = N'COLUMN', @level2name = N'GradingPeriodSchoolId';


GO
PRINT N'Altering Extended Property [edfi].[StudentCompetencyObjectiveStudentSectionAssociation].[GradingPeriodSchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentCompetencyObjectiveStudentSectionAssociation', @level2type = N'COLUMN', @level2name = N'GradingPeriodSchoolId';


GO
PRINT N'Altering Extended Property [edfi].[StudentCompetencyObjectiveStudentSectionAssociation].[SchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentCompetencyObjectiveStudentSectionAssociation', @level2type = N'COLUMN', @level2name = N'SchoolId';


GO
PRINT N'Altering Extended Property [edfi].[StudentDisciplineIncidentBehaviorAssociation].[SchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentDisciplineIncidentBehaviorAssociation', @level2type = N'COLUMN', @level2name = N'SchoolId';


GO
PRINT N'Altering Extended Property [edfi].[StudentDisciplineIncidentBehaviorAssociationDisciplineIncidentParticipationCode].[SchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentDisciplineIncidentBehaviorAssociationDisciplineIncidentParticipationCode', @level2type = N'COLUMN', @level2name = N'SchoolId';


GO
PRINT N'Altering Extended Property [edfi].[StudentDisciplineIncidentNonOffenderAssociation].[SchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentDisciplineIncidentNonOffenderAssociation', @level2type = N'COLUMN', @level2name = N'SchoolId';


GO
PRINT N'Altering Extended Property [edfi].[StudentDisciplineIncidentNonOffenderAssociationDisciplineIncidentParticipationCode].[SchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentDisciplineIncidentNonOffenderAssociationDisciplineIncidentParticipationCode', @level2type = N'COLUMN', @level2name = N'SchoolId';


GO
PRINT N'Altering Extended Property [edfi].[StudentEducationOrganizationAssociationAddress].[NameOfCounty].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The name of the county, parish, borough, or comparable unit (within a state) in which an address is located.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationAssociationAddress', @level2type = N'COLUMN', @level2name = N'NameOfCounty';


GO
PRINT N'Altering Extended Property [edfi].[StudentSchoolAssociation].[NextYearSchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSchoolAssociation', @level2type = N'COLUMN', @level2name = N'NextYearSchoolId';


GO
PRINT N'Altering Extended Property [edfi].[StudentSchoolAssociation].[SchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSchoolAssociation', @level2type = N'COLUMN', @level2name = N'SchoolId';


GO
PRINT N'Altering Extended Property [edfi].[StudentSchoolAssociationAlternativeGraduationPlan].[SchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSchoolAssociationAlternativeGraduationPlan', @level2type = N'COLUMN', @level2name = N'SchoolId';


GO
PRINT N'Altering Extended Property [edfi].[StudentSchoolAssociationEducationPlan].[SchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSchoolAssociationEducationPlan', @level2type = N'COLUMN', @level2name = N'SchoolId';


GO
PRINT N'Altering Extended Property [edfi].[StudentSchoolAttendanceEvent].[SchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSchoolAttendanceEvent', @level2type = N'COLUMN', @level2name = N'SchoolId';


GO
PRINT N'Altering Extended Property [edfi].[StudentSectionAssociation].[SchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSectionAssociation', @level2type = N'COLUMN', @level2name = N'SchoolId';


GO
PRINT N'Altering Extended Property [edfi].[StudentSectionAssociationProgram].[SchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSectionAssociationProgram', @level2type = N'COLUMN', @level2name = N'SchoolId';


GO
PRINT N'Altering Extended Property [edfi].[StudentSectionAttendanceEvent].[SchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSectionAttendanceEvent', @level2type = N'COLUMN', @level2name = N'SchoolId';


GO
PRINT N'Altering Extended Property [edfi].[StudentSectionAttendanceEventClassPeriod].[SchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSectionAttendanceEventClassPeriod', @level2type = N'COLUMN', @level2name = N'SchoolId';


GO
PRINT N'Altering Extended Property [edfi].[Survey].[SchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'Survey', @level2type = N'COLUMN', @level2name = N'SchoolId';


GO
PRINT N'Altering Extended Property [edfi].[SurveySectionAssociation].[SchoolId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveySectionAssociation', @level2type = N'COLUMN', @level2name = N'SchoolId';


GO
PRINT N'Creating Extended Property [edfi].[BusRouteDescriptor].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identifies the specific route taken by a bus for student transportation.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'BusRouteDescriptor';


GO
PRINT N'Creating Extended Property [edfi].[BusRouteDescriptor].[BusRouteDescriptorId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'BusRouteDescriptor', @level2type = N'COLUMN', @level2name = N'BusRouteDescriptorId';


GO
PRINT N'Creating Extended Property [edfi].[CrisisEvent].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A natural or man-made event that causes the disruption of school-level activities and the temporary or permanent displacement of students.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'CrisisEvent';


GO
PRINT N'Creating Extended Property [edfi].[CrisisEvent].[CrisisEventName].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The name of the crisis event that occurred. If there is no generally accepted name for this crisis event, the suggested format: Location + Crisis type + Year.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'CrisisEvent', @level2type = N'COLUMN', @level2name = N'CrisisEventName';


GO
PRINT N'Creating Extended Property [edfi].[CrisisEvent].[CrisisDescription].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Provides a textual description of the crisis event affecting the student. It may include details such as the nature of the crisis (e.g., natural disaster, conflict, medical emergency), its severity, location, and any other relevant information describing the crisis situation.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'CrisisEvent', @level2type = N'COLUMN', @level2name = N'CrisisDescription';


GO
PRINT N'Creating Extended Property [edfi].[CrisisEvent].[CrisisEndDate].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The date on which the crisis ceased to affect the student.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'CrisisEvent', @level2type = N'COLUMN', @level2name = N'CrisisEndDate';


GO
PRINT N'Creating Extended Property [edfi].[CrisisEvent].[CrisisStartDate].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The year, month and day on which the crisis affected the student. This date may not be the same as the date the crisis occurred if evacuation orders are implemented in anticipation of a crisis.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'CrisisEvent', @level2type = N'COLUMN', @level2name = N'CrisisStartDate';


GO
PRINT N'Creating Extended Property [edfi].[CrisisEvent].[CrisisTypeDescriptorId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The type or category of crisis.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'CrisisEvent', @level2type = N'COLUMN', @level2name = N'CrisisTypeDescriptorId';


GO
PRINT N'Creating Extended Property [edfi].[CrisisTypeDescriptor].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The type or category of crisis.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'CrisisTypeDescriptor';


GO
PRINT N'Creating Extended Property [edfi].[CrisisTypeDescriptor].[CrisisTypeDescriptorId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'CrisisTypeDescriptor', @level2type = N'COLUMN', @level2name = N'CrisisTypeDescriptorId';


GO
PRINT N'Creating Extended Property [edfi].[DisplacedStudentStatusDescriptor].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Indicates whether a student has been displaced as a result of a crisis event.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'DisplacedStudentStatusDescriptor';


GO
PRINT N'Creating Extended Property [edfi].[DisplacedStudentStatusDescriptor].[DisplacedStudentStatusDescriptorId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'DisplacedStudentStatusDescriptor', @level2type = N'COLUMN', @level2name = N'DisplacedStudentStatusDescriptorId';


GO
PRINT N'Creating Extended Property [edfi].[ImmunizationTypeDescriptor].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'An indication of the type of immunization that an individual has satisfactorily received.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'ImmunizationTypeDescriptor';


GO
PRINT N'Creating Extended Property [edfi].[ImmunizationTypeDescriptor].[ImmunizationTypeDescriptorId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'ImmunizationTypeDescriptor', @level2type = N'COLUMN', @level2name = N'ImmunizationTypeDescriptorId';


GO
PRINT N'Creating Extended Property [edfi].[NonMedicalImmunizationExemptionDescriptor].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The type of nonmedical exemption from vaccination claimed by the student''s parent or guardian.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'NonMedicalImmunizationExemptionDescriptor';


GO
PRINT N'Creating Extended Property [edfi].[NonMedicalImmunizationExemptionDescriptor].[NonMedicalImmunizationExemptionDescriptorId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'NonMedicalImmunizationExemptionDescriptor', @level2type = N'COLUMN', @level2name = N'NonMedicalImmunizationExemptionDescriptorId';


GO
PRINT N'Creating Extended Property [edfi].[StudentEducationOrganizationAssociationDisplacedStudent].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Information about student who was enrolled, or eligible for enrollment, but has temporarily or permanently enrolled in another school or district because of a crisis-related disruption in educational services.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationAssociationDisplacedStudent';


GO
PRINT N'Creating Extended Property [edfi].[StudentEducationOrganizationAssociationDisplacedStudent].[EducationOrganizationId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to an education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationAssociationDisplacedStudent', @level2type = N'COLUMN', @level2name = N'EducationOrganizationId';


GO
PRINT N'Creating Extended Property [edfi].[StudentEducationOrganizationAssociationDisplacedStudent].[StudentUSI].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique alphanumeric code assigned to a student.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationAssociationDisplacedStudent', @level2type = N'COLUMN', @level2name = N'StudentUSI';


GO
PRINT N'Creating Extended Property [edfi].[StudentEducationOrganizationAssociationDisplacedStudent].[CrisisEventName].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The name of the crisis event that occurred. If there is no generally accepted name for this crisis event, the suggested format: Location + Crisis type + Year.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationAssociationDisplacedStudent', @level2type = N'COLUMN', @level2name = N'CrisisEventName';


GO
PRINT N'Creating Extended Property [edfi].[StudentEducationOrganizationAssociationDisplacedStudent].[CrisisHomelessnessIndicator].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Any student considered homeless (defined by the McKinney-Vento Homeless Education Assistance Act as lacking a fixed, regular, and adequate nighttime residence) as a result of the crisis event.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationAssociationDisplacedStudent', @level2type = N'COLUMN', @level2name = N'CrisisHomelessnessIndicator';


GO
PRINT N'Creating Extended Property [edfi].[StudentEducationOrganizationAssociationDisplacedStudent].[DisplacedStudentEndDate].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The date marking the end of the period during which a student is considered displaced due to a crisis event.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationAssociationDisplacedStudent', @level2type = N'COLUMN', @level2name = N'DisplacedStudentEndDate';


GO
PRINT N'Creating Extended Property [edfi].[StudentEducationOrganizationAssociationDisplacedStudent].[DisplacedStudentStartDate].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The date on which a student is officially identified as displaced due to a crisis event.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationAssociationDisplacedStudent', @level2type = N'COLUMN', @level2name = N'DisplacedStudentStartDate';


GO
PRINT N'Creating Extended Property [edfi].[StudentEducationOrganizationAssociationDisplacedStudent].[DisplacedStudentStatusDescriptorId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Indicates whether a student has been displaced as a result of a crisis event.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationAssociationDisplacedStudent', @level2type = N'COLUMN', @level2name = N'DisplacedStudentStatusDescriptorId';


GO
PRINT N'Creating Extended Property [edfi].[StudentHealth].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'This entity stores the student health records.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentHealth';


GO
PRINT N'Creating Extended Property [edfi].[StudentHealth].[EducationOrganizationId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to an education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentHealth', @level2type = N'COLUMN', @level2name = N'EducationOrganizationId';


GO
PRINT N'Creating Extended Property [edfi].[StudentHealth].[StudentUSI].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique alphanumeric code assigned to a student.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentHealth', @level2type = N'COLUMN', @level2name = N'StudentUSI';


GO
PRINT N'Creating Extended Property [edfi].[StudentHealth].[AsOfDate].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date of last update of the student''s health record.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentHealth', @level2type = N'COLUMN', @level2name = N'AsOfDate';


GO
PRINT N'Creating Extended Property [edfi].[StudentHealth].[NonMedicalImmunizationExemptionDate].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The year, month and day of the nonmedical exemption from vaccination claimed by the student''s parent or guardian.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentHealth', @level2type = N'COLUMN', @level2name = N'NonMedicalImmunizationExemptionDate';


GO
PRINT N'Creating Extended Property [edfi].[StudentHealth].[NonMedicalImmunizationExemptionDescriptorId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The type of nonmedical exemption from vaccination claimed by the student''s parent or guardian.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentHealth', @level2type = N'COLUMN', @level2name = N'NonMedicalImmunizationExemptionDescriptorId';


GO
PRINT N'Creating Extended Property [edfi].[StudentHealthAdditionalImmunization].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A record of additional immunizations satisfactorily received and reported.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentHealthAdditionalImmunization';


GO
PRINT N'Creating Extended Property [edfi].[StudentHealthAdditionalImmunization].[EducationOrganizationId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to an education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentHealthAdditionalImmunization', @level2type = N'COLUMN', @level2name = N'EducationOrganizationId';


GO
PRINT N'Creating Extended Property [edfi].[StudentHealthAdditionalImmunization].[StudentUSI].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique alphanumeric code assigned to a student.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentHealthAdditionalImmunization', @level2type = N'COLUMN', @level2name = N'StudentUSI';


GO
PRINT N'Creating Extended Property [edfi].[StudentHealthAdditionalImmunization].[ImmunizationName].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The name of the immunization that the student has received.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentHealthAdditionalImmunization', @level2type = N'COLUMN', @level2name = N'ImmunizationName';


GO
PRINT N'Creating Extended Property [edfi].[StudentHealthAdditionalImmunizationDate].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The year, month and day of the related additional immunization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentHealthAdditionalImmunizationDate';


GO
PRINT N'Creating Extended Property [edfi].[StudentHealthAdditionalImmunizationDate].[EducationOrganizationId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to an education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentHealthAdditionalImmunizationDate', @level2type = N'COLUMN', @level2name = N'EducationOrganizationId';


GO
PRINT N'Creating Extended Property [edfi].[StudentHealthAdditionalImmunizationDate].[StudentUSI].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique alphanumeric code assigned to a student.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentHealthAdditionalImmunizationDate', @level2type = N'COLUMN', @level2name = N'StudentUSI';


GO
PRINT N'Creating Extended Property [edfi].[StudentHealthAdditionalImmunizationDate].[ImmunizationName].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The name of the immunization that the student has received.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentHealthAdditionalImmunizationDate', @level2type = N'COLUMN', @level2name = N'ImmunizationName';


GO
PRINT N'Creating Extended Property [edfi].[StudentHealthAdditionalImmunizationDate].[ImmunizationDate].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The year, month and day of the related additional immunization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentHealthAdditionalImmunizationDate', @level2type = N'COLUMN', @level2name = N'ImmunizationDate';


GO
PRINT N'Creating Extended Property [edfi].[StudentHealthRequiredImmunization].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A record of the immunizations satisfactorily  received for those recommended to protect the student against vaccine-preventable diseases.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentHealthRequiredImmunization';


GO
PRINT N'Creating Extended Property [edfi].[StudentHealthRequiredImmunization].[EducationOrganizationId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to an education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentHealthRequiredImmunization', @level2type = N'COLUMN', @level2name = N'EducationOrganizationId';


GO
PRINT N'Creating Extended Property [edfi].[StudentHealthRequiredImmunization].[StudentUSI].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique alphanumeric code assigned to a student.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentHealthRequiredImmunization', @level2type = N'COLUMN', @level2name = N'StudentUSI';


GO
PRINT N'Creating Extended Property [edfi].[StudentHealthRequiredImmunization].[ImmunizationTypeDescriptorId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'An indication of the type of immunization that the student has received.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentHealthRequiredImmunization', @level2type = N'COLUMN', @level2name = N'ImmunizationTypeDescriptorId';


GO
PRINT N'Creating Extended Property [edfi].[StudentHealthRequiredImmunization].[MedicalExemption].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The medical condition identified by a physician that contraindicates the vaccine.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentHealthRequiredImmunization', @level2type = N'COLUMN', @level2name = N'MedicalExemption';


GO
PRINT N'Creating Extended Property [edfi].[StudentHealthRequiredImmunization].[MedicalExemptionDate].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The year, month, and day of the medical exemption by a physician.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentHealthRequiredImmunization', @level2type = N'COLUMN', @level2name = N'MedicalExemptionDate';


GO
PRINT N'Creating Extended Property [edfi].[StudentHealthRequiredImmunizationDate].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The year, month and day of the related required immunization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentHealthRequiredImmunizationDate';


GO
PRINT N'Creating Extended Property [edfi].[StudentHealthRequiredImmunizationDate].[EducationOrganizationId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to an education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentHealthRequiredImmunizationDate', @level2type = N'COLUMN', @level2name = N'EducationOrganizationId';


GO
PRINT N'Creating Extended Property [edfi].[StudentHealthRequiredImmunizationDate].[StudentUSI].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique alphanumeric code assigned to a student.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentHealthRequiredImmunizationDate', @level2type = N'COLUMN', @level2name = N'StudentUSI';


GO
PRINT N'Creating Extended Property [edfi].[StudentHealthRequiredImmunizationDate].[ImmunizationTypeDescriptorId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'An indication of the type of immunization that the student has received.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentHealthRequiredImmunizationDate', @level2type = N'COLUMN', @level2name = N'ImmunizationTypeDescriptorId';


GO
PRINT N'Creating Extended Property [edfi].[StudentHealthRequiredImmunizationDate].[ImmunizationDate].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The year, month and day of the related required immunization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentHealthRequiredImmunizationDate', @level2type = N'COLUMN', @level2name = N'ImmunizationDate';


GO
PRINT N'Creating Extended Property [edfi].[StudentTransportation].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'This entity captures a student''s specific transportation arrangement.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentTransportation';


GO
PRINT N'Creating Extended Property [edfi].[StudentTransportation].[StudentUSI].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique alphanumeric code assigned to a student.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentTransportation', @level2type = N'COLUMN', @level2name = N'StudentUSI';


GO
PRINT N'Creating Extended Property [edfi].[StudentTransportation].[TransportationEducationOrganizationId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to an education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentTransportation', @level2type = N'COLUMN', @level2name = N'TransportationEducationOrganizationId';


GO
PRINT N'Creating Extended Property [edfi].[StudentTransportation].[SpecialAccomodationRequirements].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Specific requirements needed to accommodate a student''s physical needs which may include special equipment installed in a vehicle or a special arrangement for transportation.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentTransportation', @level2type = N'COLUMN', @level2name = N'SpecialAccomodationRequirements';


GO
PRINT N'Creating Extended Property [edfi].[StudentTransportation].[TransportationPublicExpenseEligibilityTypeDescriptorId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The primary type of eligibility for transporting a student at public expense.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentTransportation', @level2type = N'COLUMN', @level2name = N'TransportationPublicExpenseEligibilityTypeDescriptorId';


GO
PRINT N'Creating Extended Property [edfi].[StudentTransportation].[TransportationTypeDescriptorId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The mode or type of transportation utilized by a student to commute to and from school', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentTransportation', @level2type = N'COLUMN', @level2name = N'TransportationTypeDescriptorId';


GO
PRINT N'Creating Extended Property [edfi].[StudentTransportationStudentBusDetails].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Stores details associated with student-bus assignment within a transportation system.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentTransportationStudentBusDetails';


GO
PRINT N'Creating Extended Property [edfi].[StudentTransportationStudentBusDetails].[StudentUSI].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique alphanumeric code assigned to a student.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentTransportationStudentBusDetails', @level2type = N'COLUMN', @level2name = N'StudentUSI';


GO
PRINT N'Creating Extended Property [edfi].[StudentTransportationStudentBusDetails].[TransportationEducationOrganizationId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to an education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentTransportationStudentBusDetails', @level2type = N'COLUMN', @level2name = N'TransportationEducationOrganizationId';


GO
PRINT N'Creating Extended Property [edfi].[StudentTransportationStudentBusDetails].[BusNumber].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The unique identifier assigned to the bus used for transporting the student.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentTransportationStudentBusDetails', @level2type = N'COLUMN', @level2name = N'BusNumber';


GO
PRINT N'Creating Extended Property [edfi].[StudentTransportationStudentBusDetails].[BusRouteDescriptorId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identifies the specific route taken by a bus for student transportation.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentTransportationStudentBusDetails', @level2type = N'COLUMN', @level2name = N'BusRouteDescriptorId';


GO
PRINT N'Creating Extended Property [edfi].[StudentTransportationStudentBusDetails].[Mileage].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The distance, typically measured in miles, that a student was transported along the route of the bus during a single trip.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentTransportationStudentBusDetails', @level2type = N'COLUMN', @level2name = N'Mileage';


GO
PRINT N'Creating Extended Property [edfi].[StudentTransportationStudentBusDetailsTravelDayofWeek].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Specifies the day(s) of the week on which student transportation occurs.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentTransportationStudentBusDetailsTravelDayofWeek';


GO
PRINT N'Creating Extended Property [edfi].[StudentTransportationStudentBusDetailsTravelDayofWeek].[StudentUSI].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique alphanumeric code assigned to a student.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentTransportationStudentBusDetailsTravelDayofWeek', @level2type = N'COLUMN', @level2name = N'StudentUSI';


GO
PRINT N'Creating Extended Property [edfi].[StudentTransportationStudentBusDetailsTravelDayofWeek].[TransportationEducationOrganizationId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to an education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentTransportationStudentBusDetailsTravelDayofWeek', @level2type = N'COLUMN', @level2name = N'TransportationEducationOrganizationId';


GO
PRINT N'Creating Extended Property [edfi].[StudentTransportationStudentBusDetailsTravelDayofWeek].[TravelDayofWeekDescriptorId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Specifies the day(s) of the week on which student transportation occurs.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentTransportationStudentBusDetailsTravelDayofWeek', @level2type = N'COLUMN', @level2name = N'TravelDayofWeekDescriptorId';


GO
PRINT N'Creating Extended Property [edfi].[StudentTransportationStudentBusDetailsTravelDirection].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Indicates the direction of travel for the student transportation route (e.g., to school, from school).', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentTransportationStudentBusDetailsTravelDirection';


GO
PRINT N'Creating Extended Property [edfi].[StudentTransportationStudentBusDetailsTravelDirection].[StudentUSI].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique alphanumeric code assigned to a student.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentTransportationStudentBusDetailsTravelDirection', @level2type = N'COLUMN', @level2name = N'StudentUSI';


GO
PRINT N'Creating Extended Property [edfi].[StudentTransportationStudentBusDetailsTravelDirection].[TransportationEducationOrganizationId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to an education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentTransportationStudentBusDetailsTravelDirection', @level2type = N'COLUMN', @level2name = N'TransportationEducationOrganizationId';


GO
PRINT N'Creating Extended Property [edfi].[StudentTransportationStudentBusDetailsTravelDirection].[TravelDirectionDescriptorId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Indicates the direction of travel for the student transportation route (e.g., to school, from school).', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentTransportationStudentBusDetailsTravelDirection', @level2type = N'COLUMN', @level2name = N'TravelDirectionDescriptorId';


GO
PRINT N'Creating Extended Property [edfi].[TransportationPublicExpenseEligibilityTypeDescriptor].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The primary type of eligibility for transporting a student at public expense.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'TransportationPublicExpenseEligibilityTypeDescriptor';


GO
PRINT N'Creating Extended Property [edfi].[TransportationPublicExpenseEligibilityTypeDescriptor].[TransportationPublicExpenseEligibilityTypeDescriptorId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'TransportationPublicExpenseEligibilityTypeDescriptor', @level2type = N'COLUMN', @level2name = N'TransportationPublicExpenseEligibilityTypeDescriptorId';


GO
PRINT N'Creating Extended Property [edfi].[TransportationTypeDescriptor].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The mode or type of transportation utilized by a student to commute to and from school', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'TransportationTypeDescriptor';


GO
PRINT N'Creating Extended Property [edfi].[TransportationTypeDescriptor].[TransportationTypeDescriptorId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'TransportationTypeDescriptor', @level2type = N'COLUMN', @level2name = N'TransportationTypeDescriptorId';


GO
PRINT N'Creating Extended Property [edfi].[TravelDayofWeekDescriptor].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Specifies the day(s) of the week on which student transportation occurs.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'TravelDayofWeekDescriptor';


GO
PRINT N'Creating Extended Property [edfi].[TravelDayofWeekDescriptor].[TravelDayofWeekDescriptorId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'TravelDayofWeekDescriptor', @level2type = N'COLUMN', @level2name = N'TravelDayofWeekDescriptorId';


GO
PRINT N'Creating Extended Property [edfi].[TravelDirectionDescriptor].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Indicates the direction of travel for the student transportation route (e.g., to school, from school).', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'TravelDirectionDescriptor';


GO
PRINT N'Creating Extended Property [edfi].[TravelDirectionDescriptor].[TravelDirectionDescriptorId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'TravelDirectionDescriptor', @level2type = N'COLUMN', @level2name = N'TravelDirectionDescriptorId';


GO
PRINT N'Checking existing data against newly created constraints';


GO
ALTER TABLE [edfi].[BusRouteDescriptor] WITH CHECK CHECK CONSTRAINT [FK_BusRouteDescriptor_Descriptor];

ALTER TABLE [edfi].[CrisisEvent] WITH CHECK CHECK CONSTRAINT [FK_CrisisEvent_CrisisTypeDescriptor];

ALTER TABLE [edfi].[CrisisTypeDescriptor] WITH CHECK CHECK CONSTRAINT [FK_CrisisTypeDescriptor_Descriptor];

ALTER TABLE [edfi].[DisplacedStudentStatusDescriptor] WITH CHECK CHECK CONSTRAINT [FK_DisplacedStudentStatusDescriptor_Descriptor];

ALTER TABLE [edfi].[ImmunizationTypeDescriptor] WITH CHECK CHECK CONSTRAINT [FK_ImmunizationTypeDescriptor_Descriptor];

ALTER TABLE [edfi].[NonMedicalImmunizationExemptionDescriptor] WITH CHECK CHECK CONSTRAINT [FK_NonMedicalImmunizationExemptionDescriptor_Descriptor];

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationDisplacedStudent] WITH CHECK CHECK CONSTRAINT [FK_StudentEducationOrganizationAssociationDisplacedStudent_CrisisEvent];

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationDisplacedStudent] WITH CHECK CHECK CONSTRAINT [FK_StudentEducationOrganizationAssociationDisplacedStudent_DisplacedStudentStatusDescriptor];

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationDisplacedStudent] WITH CHECK CHECK CONSTRAINT [FK_StudentEducationOrganizationAssociationDisplacedStudent_StudentEducationOrganizationAssociation];

ALTER TABLE [edfi].[StudentHealth] WITH CHECK CHECK CONSTRAINT [FK_StudentHealth_EducationOrganization];

ALTER TABLE [edfi].[StudentHealth] WITH CHECK CHECK CONSTRAINT [FK_StudentHealth_NonMedicalImmunizationExemptionDescriptor];

ALTER TABLE [edfi].[StudentHealth] WITH CHECK CHECK CONSTRAINT [FK_StudentHealth_Student];

ALTER TABLE [edfi].[StudentHealthAdditionalImmunization] WITH CHECK CHECK CONSTRAINT [FK_StudentHealthAdditionalImmunization_StudentHealth];

ALTER TABLE [edfi].[StudentHealthAdditionalImmunizationDate] WITH CHECK CHECK CONSTRAINT [FK_StudentHealthAdditionalImmunizationDate_StudentHealthAdditionalImmunization];

ALTER TABLE [edfi].[StudentHealthRequiredImmunization] WITH CHECK CHECK CONSTRAINT [FK_StudentHealthRequiredImmunization_ImmunizationTypeDescriptor];

ALTER TABLE [edfi].[StudentHealthRequiredImmunization] WITH CHECK CHECK CONSTRAINT [FK_StudentHealthRequiredImmunization_StudentHealth];

ALTER TABLE [edfi].[StudentHealthRequiredImmunizationDate] WITH CHECK CHECK CONSTRAINT [FK_StudentHealthRequiredImmunizationDate_StudentHealthRequiredImmunization];

ALTER TABLE [edfi].[StudentTransportation] WITH CHECK CHECK CONSTRAINT [FK_StudentTransportation_EducationOrganization];

ALTER TABLE [edfi].[StudentTransportation] WITH CHECK CHECK CONSTRAINT [FK_StudentTransportation_Student];

ALTER TABLE [edfi].[StudentTransportation] WITH CHECK CHECK CONSTRAINT [FK_StudentTransportation_TransportationPublicExpenseEligibilityTypeDescriptor];

ALTER TABLE [edfi].[StudentTransportation] WITH CHECK CHECK CONSTRAINT [FK_StudentTransportation_TransportationTypeDescriptor];

ALTER TABLE [edfi].[StudentTransportationStudentBusDetails] WITH CHECK CHECK CONSTRAINT [FK_StudentTransportationStudentBusDetails_BusRouteDescriptor];

ALTER TABLE [edfi].[StudentTransportationStudentBusDetails] WITH CHECK CHECK CONSTRAINT [FK_StudentTransportationStudentBusDetails_StudentTransportation];

ALTER TABLE [edfi].[StudentTransportationStudentBusDetailsTravelDayofWeek] WITH CHECK CHECK CONSTRAINT [FK_StudentTransportationStudentBusDetailsTravelDayofWeek_StudentTransportationStudentBusDetails];

ALTER TABLE [edfi].[StudentTransportationStudentBusDetailsTravelDayofWeek] WITH CHECK CHECK CONSTRAINT [FK_StudentTransportationStudentBusDetailsTravelDayofWeek_TravelDayofWeekDescriptor];

ALTER TABLE [edfi].[StudentTransportationStudentBusDetailsTravelDirection] WITH CHECK CHECK CONSTRAINT [FK_StudentTransportationStudentBusDetailsTravelDirection_StudentTransportationStudentBusDetails];

ALTER TABLE [edfi].[StudentTransportationStudentBusDetailsTravelDirection] WITH CHECK CHECK CONSTRAINT [FK_StudentTransportationStudentBusDetailsTravelDirection_TravelDirectionDescriptor];

ALTER TABLE [edfi].[TransportationPublicExpenseEligibilityTypeDescriptor] WITH CHECK CHECK CONSTRAINT [FK_TransportationPublicExpenseEligibilityTypeDescriptor_Descriptor];

ALTER TABLE [edfi].[TransportationTypeDescriptor] WITH CHECK CHECK CONSTRAINT [FK_TransportationTypeDescriptor_Descriptor];

ALTER TABLE [edfi].[TravelDayofWeekDescriptor] WITH CHECK CHECK CONSTRAINT [FK_TravelDayofWeekDescriptor_Descriptor];

ALTER TABLE [edfi].[TravelDirectionDescriptor] WITH CHECK CHECK CONSTRAINT [FK_TravelDirectionDescriptor_Descriptor];


GO
PRINT N'Updating DeployJournal Scripts';
GO
/****** Object:  Table [dbo].[DeployJournal]    Script Date: 10/24/2023 9:40:30 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DeployJournal]') AND type in (N'U'))
DROP TABLE [dbo].[DeployJournal]
GO

/****** Object:  Table [dbo].[DeployJournal]    Script Date: 9/3/2024 4:34:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (1, N'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.MsSql.Structure.Ods.0010-Schemas.sql', CAST(N'2024-05-10 20:58:57.380' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (2, N'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.MsSql.Structure.Ods.0020-Tables.sql', CAST(N'2024-05-10 20:59:00.070' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (3, N'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.MsSql.Structure.Ods.0030-ForeignKeys.sql', CAST(N'2024-05-10 20:59:03.503' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (4, N'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.MsSql.Structure.Ods.0040-IdColumnUniqueIndexes.sql', CAST(N'2024-05-10 20:59:04.093' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (5, N'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.MsSql.Structure.Ods.0050-ExtendedProperties.sql', CAST(N'2024-05-10 20:59:09.467' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (6, N'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.MsSql.Structure.Ods.1002-AuthViews.sql', CAST(N'2024-05-10 20:59:09.517' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (7, N'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.MsSql.Structure.Ods.1003-CompositesHierarchicalViews.sql', CAST(N'2024-05-10 20:59:09.563' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (8, N'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.MsSql.Structure.Ods.1004-ViewIndexes.sql', CAST(N'2024-05-10 20:59:09.610' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (9, N'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.MsSql.Structure.Ods.1005-AddSQLTypes.sql', CAST(N'2024-05-10 20:59:09.617' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (10, N'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.MsSql.Structure.Ods.1006-AddSQLTypes-BigInt.sql', CAST(N'2024-05-10 20:59:09.620' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (11, N'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.MsSql.Structure.Ods.1020-Interoperability-Extension.sql', CAST(N'2024-05-10 20:59:09.657' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (12, N'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.MsSql.Structure.Ods.1021-OperationalContextView.sql', CAST(N'2024-05-10 20:59:09.670' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (13, N'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.MsSql.Structure.Ods.1022-SetVersion.sql', CAST(N'2024-05-10 20:59:09.673' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (14, N'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.MsSql.Structure.Ods.1030-AddSessionCascadeSupport.sql', CAST(N'2024-05-10 20:59:09.793' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (15, N'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.MsSql.Structure.Ods.1031-Create-SetSchoolYear-stored-procedure.sql', CAST(N'2024-05-10 20:59:09.797' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (16, N'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.MsSql.Structure.Ods.1034-RemoveDatesFromAuthViews.sql', CAST(N'2024-05-10 20:59:09.883' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (17, N'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.MsSql.Structure.Ods.1035-UpdateViewsToGoThroughStudendEdOrgResponsibiltyAssociation.sql', CAST(N'2024-05-10 20:59:09.890' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (18, N'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.MsSql.Structure.Ods.1070-RemoveDatesFromAuthViews.sql', CAST(N'2024-05-10 20:59:09.977' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (19, N'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.MsSql.Structure.Ods.1080-UpdateViewsToGoThroughStudendEdOrgResponsibiltyAssociation.sql', CAST(N'2024-05-10 20:59:09.983' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (20, N'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.MsSql.Structure.Ods.1090-MissingSecurityViews.sql', CAST(N'2024-05-10 20:59:09.990' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (21, N'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.MsSql.Structure.Ods.1100-AddMoreContextToEducationIdentifiersView.sql', CAST(N'2024-05-10 20:59:09.997' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (22, N'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.MsSql.Structure.Ods.1100-CorrectCommunityOrganizationAuthViews.sql', CAST(N'2024-05-10 20:59:10.003' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (23, N'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.MsSql.Structure.Ods.1120-RemoveCompositesHierarchicalViews.sql', CAST(N'2024-05-10 20:59:10.027' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (24, N'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.MsSql.Structure.Ods.1150-UpdatedAuthViewsToPreventDuplicatesFromStaffEdOrgAssignmentsAndEmployments.sql', CAST(N'2024-05-10 20:59:10.040' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (25, N'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.MsSql.Structure.Ods.1160-UpdateVersionTo510.sql', CAST(N'2024-05-10 20:59:10.050' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (26, N'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.MsSql.Structure.Ods.1170-UpdatedAuthViewsToRemoveJoin.sql', CAST(N'2024-05-10 20:59:10.053' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (27, N'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.MsSql.Structure.Ods.1180-Add-OrgDeptId-to-EdOrgIdentifiers.sql', CAST(N'2024-05-10 20:59:10.060' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (28, N'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.MsSql.Structure.Ods.1190-UpdateVersionTo520.sql', CAST(N'2024-05-10 20:59:10.067' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (29, N'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.MsSql.Structure.Ods.1200-AuthViewsSupportOrgDeptId.sql', CAST(N'2024-05-10 20:59:10.080' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (30, N'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.MsSql.Structure.Ods.1290-RemoveAllUnusedAuthorizationViews.sql', CAST(N'2024-05-10 20:59:10.220' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (31, N'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.MsSql.Structure.Ods.1300-CreateEdOrgToEdOrgTable.sql', CAST(N'2024-05-10 20:59:10.223' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (32, N'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.MsSql.Structure.Ods.1302-CreateEdOrgToEdOrgTriggers.sql', CAST(N'2024-05-10 20:59:10.277' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (33, N'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.MsSql.Structure.Ods.1303-AuthViewEducationOrganizationIdToStudentUSI.sql', CAST(N'2024-05-10 20:59:10.280' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (34, N'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.MsSql.Structure.Ods.1304-AuthViewEducationOrganizationIdToContactUSI.sql', CAST(N'2024-05-10 20:59:10.283' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (35, N'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.MsSql.Structure.Ods.1305-AuthViewsEducationOrganizationIdToStaffUSI.sql', CAST(N'2024-05-10 20:59:10.290' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (36, N'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.MsSql.Structure.Ods.1306-AuthViewEducationOrganizationIdToStudentUSIThroughResponsibility.sql', CAST(N'2024-05-10 20:59:10.293' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (37, N'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.MsSql.Structure.Ods.1320-UpdateVersionTo53.sql', CAST(N'2024-05-10 20:59:10.297' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (38, N'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.MsSql.Structure.Ods.1340-AuthViewIndexedEducationOrganizationIdToStudentUSI.sql', CAST(N'2024-05-10 20:59:10.303' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (39, N'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.MsSql.Structure.Ods.1350-AuthViewIndexedEducationOrganizationIdToContactUSI.sql', CAST(N'2024-05-10 20:59:10.313' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (40, N'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.MsSql.Structure.Ods.1360-UpdateVersionTo60.sql', CAST(N'2024-05-10 20:59:10.317' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (41, N'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.MsSql.Structure.Ods.1370-AddEducationOrganizationIdToEducationOrganizationIdIndex.sql', CAST(N'2024-05-10 20:59:10.320' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (42, N'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.MsSql.Structure.Ods.1380-UpdateVersionTo61.sql', CAST(N'2024-05-10 20:59:10.327' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (43, N'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.MsSql.Structure.Ods.1390-UpdateVersionTo70.sql', CAST(N'2024-05-10 20:59:10.330' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (44, N'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.MsSql.Structure.Ods.1400-Alter-EducationOrganizationId-to-bigint.sql', CAST(N'2024-05-10 20:59:10.387' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (45, N'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.MsSql.Structure.Ods.1410-CreateIndex-EdOrgIdsRelationship-AuthPerformance.sql', CAST(N'2024-05-10 20:59:10.773' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (46, N'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.MsSql.Structure.Ods.1420-UpdateEdFiStandardVersionTo50.sql', CAST(N'2024-05-10 20:59:10.777' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (47, N'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.MsSql.Structure.Ods.1430-UpdateVersionTo71.sql', CAST(N'2024-05-10 20:59:10.783' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (48, N'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.MsSql.Structure.Ods.1440-UpdateEdFiStandardVersionTo51.sql', CAST(N'2024-05-10 20:59:10.787' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (49, N'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.MsSql.Structure.Ods.1450-UpdateVersionTo72.sql', CAST(N'2024-05-10 20:59:10.790' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (50, N'EdFi.Ods.Standard.Standard.5.1.0.Artifacts.MsSql.Data.Ods.0020-SchoolYears.sql', CAST(N'2024-05-10 20:59:10.893' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[DeployJournal] OFF
GO



PRINT N'Update complete.';

