-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding 7.2 descriptors'
GO

INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/CrisisTypeDescriptor', 'Active Shooter', 'Active Shooter', 'Active Shooter', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/CrisisTypeDescriptor', 'Avalanche', 'Avalanche', 'Avalanche', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/CrisisTypeDescriptor', 'Cyberattack', 'Cyberattack', 'Cyberattack', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/CrisisTypeDescriptor', 'Earthquake', 'Earthquake', 'Earthquake', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/CrisisTypeDescriptor', 'Extreme Heat', 'Extreme Heat', 'Extreme Heat', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/CrisisTypeDescriptor', 'Financial Emergency', 'Financial Emergency', 'Financial Emergency', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/CrisisTypeDescriptor', 'Flood', 'Flood', 'Flood', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/CrisisTypeDescriptor', 'Hurricane', 'Hurricane', 'Hurricane', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/CrisisTypeDescriptor', 'Landslide', 'Landslide', 'Landslide', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/CrisisTypeDescriptor', 'Novel Pandemic', 'Novel Pandemic', 'Novel Pandemic', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/CrisisTypeDescriptor', 'Nuclear Explosion', 'Nuclear Explosion', 'Nuclear Explosion', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/CrisisTypeDescriptor', 'Other', 'Other', 'Other', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/CrisisTypeDescriptor', 'Power Outage', 'Power Outage', 'Power Outage', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/CrisisTypeDescriptor', 'Thunderstorm, Lightning, or Hail', 'Thunderstorm, Lightning, or Hail', 'Thunderstorm, Lightning, or Hail', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/CrisisTypeDescriptor', 'Tornado', 'Tornado', 'Tornado', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/CrisisTypeDescriptor', 'Tsunami', 'Tsunami', 'Tsunami', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/CrisisTypeDescriptor', 'Volcano', 'Volcano', 'Volcano', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/CrisisTypeDescriptor', 'Wildfires', 'Wildfires', 'Wildfires', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/CrisisTypeDescriptor', 'Winter Storm', 'Winter Storm', 'Winter Storm', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/DisplacedStudentStatusDescriptor', 'Displaced', 'Displaced', 'Displaced', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/DisplacedStudentStatusDescriptor', 'Not Displaced', 'Not Displaced', 'Not Displaced', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/DisplacedStudentStatusDescriptor', 'Pending Displacement', 'Pending Displacement', 'Pending Displacement', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/DisplacedStudentStatusDescriptor', 'Unknown', 'Unknown', 'Unknown', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/ImmunizationTypeDescriptor', '1vCOV', 'COVID-19', 'COVID-19', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/ImmunizationTypeDescriptor', 'DEN4CYD', 'Dengue', 'Dengue', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/ImmunizationTypeDescriptor', 'DTaP', 'Diphtheria, tetanus and acellular pertussis', 'Diphtheria, tetanus and acellular pertussis', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/ImmunizationTypeDescriptor', 'HepA', 'Hepatitis A', 'Hepatitis A', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/ImmunizationTypeDescriptor', 'HepB', 'Hepatitis B', 'Hepatitis B', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/ImmunizationTypeDescriptor', 'Hib', 'Haemophilus influenzae type b', 'Haemophilus influenzae type b', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/ImmunizationTypeDescriptor', 'HPV', 'Human papillomavirus', 'Human papillomavirus', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/ImmunizationTypeDescriptor', 'IIV4', 'Influenza', 'Influenza', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/ImmunizationTypeDescriptor', 'IPV', 'Inactivated poliovirus', 'Inactivated poliovirus', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/ImmunizationTypeDescriptor', 'LAIV4', 'Influenza', 'Influenza', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/ImmunizationTypeDescriptor', 'MenACWY', 'Meningococcal serogroup A,C,W,Y', 'Meningococcal serogroup A,C,W,Y', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/ImmunizationTypeDescriptor', 'MenB', 'Meningococcal serogroup B', 'Meningococcal serogroup B', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/ImmunizationTypeDescriptor', 'MMR', 'Measles, mumps, rubella', 'Measles, mumps, rubella', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/ImmunizationTypeDescriptor', 'Mpox', 'Mpox', 'Mpox', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/ImmunizationTypeDescriptor', 'PCV', 'Pneumococcal conjugate', 'Pneumococcal conjugate', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/ImmunizationTypeDescriptor', 'RSV', 'Respiratory syncytial virus', 'Respiratory syncytial virus', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/ImmunizationTypeDescriptor', 'RV', 'Rotavirus', 'Rotavirus', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/ImmunizationTypeDescriptor', 'VAR', 'Varicella (chickenpox)', 'Varicella (chickenpox)', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/NonMedicalImmunizationExemptionDescriptor', 'Other', 'Other', 'Other', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/NonMedicalImmunizationExemptionDescriptor', 'Philosophical', 'Philosophical belief', 'Philosophical belief', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/NonMedicalImmunizationExemptionDescriptor', 'Religious', 'Religious belief', 'Religious belief', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/TransportationPublicExpenseEligibilityTypeDescriptor', 'Eligible - CTE', 'Eligible because of CTE participation', 'Student is eligible for transportation at public expense because of their participation in a CTE program.', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/TransportationPublicExpenseEligibilityTypeDescriptor', 'Eligible - Desegregation', 'Eligible because of desegregation', 'Student is eligible for transportation at public expense because of a locally initiated or court mandated program for achieving racial or cultural integration or for ending previous segregation.', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/TransportationPublicExpenseEligibilityTypeDescriptor', 'Eligible - Disability', 'Eligible because of disability', 'Student is eligible for transportation at public expense because of the their disability and IEP.', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/TransportationPublicExpenseEligibilityTypeDescriptor', 'Eligible - Distance', 'Eligible because of distance', 'Student is eligible for transportation at public expense because of the distance between school and transportation address.', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/TransportationPublicExpenseEligibilityTypeDescriptor', 'Eligible - Health Impaired', 'Eigible because of health impairement', 'Student is eligible for transportation at public expense because of the health impairement that doesn''t make the student eligible for IEP', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/TransportationPublicExpenseEligibilityTypeDescriptor', 'Eligible - Homelessness', 'Eligible because of homeless status', 'Student is eligible for transportation at public expense because of being homeless as defined by the McKinney-Vento Act.', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/TransportationPublicExpenseEligibilityTypeDescriptor', 'Eligible - Other', 'Eligible for other reason', 'Student is eligible for transportation at public expense because of the other reasons not listed.', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/TransportationPublicExpenseEligibilityTypeDescriptor', 'Eligible - Shelter Care', 'Eligible from shelter care facility', 'Student is eligible for transportation at public expense because of their short or long term stay at a shelter care that is not covered by the McKinney-Vento Act.', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/TransportationPublicExpenseEligibilityTypeDescriptor', 'Eligible - Special Instruction', 'Eligible because of special instruction', 'Student is eligible for transportation at public expense because of the special instruction not due to a disability.', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/TransportationPublicExpenseEligibilityTypeDescriptor', 'Eligible - Unsafe Walk', 'Eligible because of hazardous conditions', 'Student is eligible for transportation at public expense because of the hazardous conditions that makes the walk between the school and the transportation address unsafe for the student.', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/TransportationPublicExpenseEligibilityTypeDescriptor', 'Not Eligible', 'Not Eligible', 'Student is not eligeble for transporation at public expense.', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/TransportationTypeDescriptor', 'General Public Transportation', 'General Public Transportation', 'General Public Transportation', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/TransportationTypeDescriptor', 'Responsible for own transportation', 'Responsible for own transportation', 'Responsible for own transportation', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/TransportationTypeDescriptor', 'School Bus', 'School Bus', 'School Bus', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/TransportationTypeDescriptor', 'School Van or SUV', 'School Van or SUV', 'School Van or SUV', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/TransportationTypeDescriptor', 'Special Needs Bus', 'Special Needs Bus', 'Special Needs Bus', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/TravelDayofWeekDescriptor', 'Friday', 'Friday', 'Friday', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/TravelDayofWeekDescriptor', 'Monday', 'Monday', 'Monday', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/TravelDayofWeekDescriptor', 'Saturday', 'Saturday', 'Saturday', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/TravelDayofWeekDescriptor', 'Sunday', 'Sunday', 'Sunday', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/TravelDayofWeekDescriptor', 'Thursday', 'Thursday', 'Thursday', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/TravelDayofWeekDescriptor', 'Tuesday', 'Tuesday', 'Tuesday', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/TravelDayofWeekDescriptor', 'Wednesday', 'Wednesday', 'Wednesday', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/TravelDirectionDescriptor', 'From School', 'From School', 'From School', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/TravelDirectionDescriptor', 'To and From School', 'To and From School', 'To and From School', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/TravelDirectionDescriptor', 'To School', 'To School', 'To School', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[CrisisTypeDescriptor] SELECT [DescriptorId] FROM [edfi].[Descriptor] WHERE [Namespace] = 'uri://ed-fi.org/CrisisTypeDescriptor'
GO
INSERT INTO [edfi].[DisplacedStudentStatusDescriptor] SELECT [DescriptorId] FROM [edfi].[Descriptor] WHERE [Namespace] = 'uri://ed-fi.org/DisplacedStudentStatusDescriptor'
GO
INSERT INTO [edfi].[ImmunizationTypeDescriptor] SELECT [DescriptorId] FROM [edfi].[Descriptor] WHERE [Namespace] = 'uri://ed-fi.org/ImmunizationTypeDescriptor'
GO
INSERT INTO [edfi].[NonMedicalImmunizationExemptionDescriptor] SELECT [DescriptorId] FROM [edfi].[Descriptor] WHERE [Namespace] = 'uri://ed-fi.org/NonMedicalImmunizationExemptionDescriptor'
GO
INSERT INTO [edfi].[TransportationPublicExpenseEligibilityTypeDescriptor] SELECT [DescriptorId] FROM [edfi].[Descriptor] WHERE [Namespace] = 'uri://ed-fi.org/TransportationPublicExpenseEligibilityTypeDescriptor'
GO
INSERT INTO [edfi].[TransportationTypeDescriptor] SELECT [DescriptorId] FROM [edfi].[Descriptor] WHERE [Namespace] = 'uri://ed-fi.org/TransportationTypeDescriptor'
GO
INSERT INTO [edfi].[TravelDayofWeekDescriptor] SELECT [DescriptorId] FROM [edfi].[Descriptor] WHERE [Namespace] = 'uri://ed-fi.org/TravelDayofWeekDescriptor'
GO
INSERT INTO [edfi].[TravelDirectionDescriptor] SELECT [DescriptorId] FROM [edfi].[Descriptor] WHERE [Namespace] = 'uri://ed-fi.org/TravelDirectionDescriptor'
GO

PRINT N'Update complete.';
