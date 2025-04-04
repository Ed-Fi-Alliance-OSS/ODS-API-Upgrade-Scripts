-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding 7.3 descriptors'
GO

INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/DualCreditTypeDescriptor', 'Advanced Courses Eligible for College Credit', 'Advanced course eligible for college credit', 'High school courses such as Advanced Placement (AP), or International Baccalaureate (IB), where  students earn high school academic credit that is accepted by some colleges and universities.', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/DualCreditTypeDescriptor', 'Concurrent Enrollment', 'Concurrent enrollment in college courses taught in high school', 'College courses taught in high school by college-approved high school teachers. Students earn college academic credit and may earn simultaneous high school academic credit.', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/DualCreditTypeDescriptor', 'Dual Enrollment', 'Dual enrollment in college courses', 'College-taught courses taken while enrolled in high school. Students earn college academic credit and may earn simultaneous high school academic credit.', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/Section504DisabilityDescriptor', 'Any Rare Disease', 'A condition that affects a small number of people.', 'A condition that affects a small number of people, often with limited information or treatment options.', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/Section504DisabilityDescriptor', 'Attention Deficit Hyperactivity Disorder', 'A condition characterized by inattention, hyperactivity, and impulsivity.', 'A neurodevelopmental disorder characterized by inattention, hyperactivity, and impulsivity, which can make it difficult to focus, control impulses, and stay organized.', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/Section504DisabilityDescriptor', 'Autism Spectrum Disorder', 'A condition affecting communication, behavior, and social interaction.', 'A developmental disorder affecting communication, behavior, and social interaction, often resulting in challenges with social skills, repetitive behaviors, and sensory sensitivities.', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/Section504DisabilityDescriptor', 'Bipolar Disorder', 'A mental health condition characterized by extreme mood swings.', 'A mental health condition characterized by extreme mood swings, including periods of mania and depression, which can significantly impact daily life.', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/Section504DisabilityDescriptor', 'Cancer', 'A disease caused by abnormal cell growth.', 'A disease caused by abnormal cell growth, which can lead to tumors and other health problems.', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/Section504DisabilityDescriptor', 'Cerebral Palsy', 'A physical disability affecting movement and coordination.', 'A physical disability affecting movement and coordination, often caused by damage to the brain during development, resulting in varying levels of muscle weakness, spasticity, and difficulty with motor skills.', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/Section504DisabilityDescriptor', 'Cystic Fibrosis', 'A genetic condition affecting the lungs and other organs.', 'A genetic disorder affecting the lungs and other organs, causing thick mucus buildup and leading to respiratory problems, digestive issues, and other health challenges.', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/Section504DisabilityDescriptor', 'Deafness', 'A complete or partial loss of hearing.', 'A complete or partial loss of hearing, which can significantly impact communication and social interactions.', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/Section504DisabilityDescriptor', 'Down Syndrome', 'A genetic condition causing intellectual and physical challenges.', 'A genetic condition causing intellectual and physical challenges, including delayed development, cognitive impairments, and physical features such as a flat face, slanted eyes, and a small head.', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/Section504DisabilityDescriptor', 'Drug or Alcohol Abuse', 'The harmful use of substances.', 'The harmful use of substances, which can lead to addiction, health problems, and social consequences.', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/Section504DisabilityDescriptor', 'Dual Sensory Impairment', 'Having both hearing and vision impairments.', 'Having both hearing and vision impairments, which can present unique challenges in communication, mobility, and daily living.', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/Section504DisabilityDescriptor', 'Dyslexia', 'A learning disability that affects reading and writing.', 'A learning disability that affects reading and writing, often characterized by difficulty recognizing words, decoding sounds, and understanding written language.', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/Section504DisabilityDescriptor', 'Emotional or Behavorial Disorder', 'A mental health condition affecting emotions and behavior.', 'A mental health condition affecting emotions and behavior, which can include anxiety, depression, conduct disorders, and other emotional or behavioral difficulties.', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/Section504DisabilityDescriptor', 'Epilepsy', 'A neurological condition characterized by seizures.', 'A neurological disorder characterized by seizures, which are sudden, uncontrolled electrical activity in the brain.', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/Section504DisabilityDescriptor', 'Hearing Impairment', 'A partial loss of hearing.', 'A partial loss of hearing, which can affect communication and social interactions, particularly in noisy environments or when speaking at a distance.', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/Section504DisabilityDescriptor', 'Intellectual Disability', 'A cognitive impairment that affects learning and problem-solving.', 'A cognitive impairment that affects learning and problem-solving, often characterized by limitations in intellectual functioning and adaptive behavior.', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/Section504DisabilityDescriptor', 'Muscular Distrophy', 'A group of genetic conditions that cause muscle weakness.', 'A group of genetic disorders that cause muscle weakness and wasting, leading to progressive loss of muscle function and mobility.', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/Section504DisabilityDescriptor', 'Other Reason', 'A disability not listed.', 'A disability not listed, which may include a variety of conditions that affect an individual''s abilities or functioning.', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/Section504DisabilityDescriptor', 'Specific Learning Disability', 'A learning condition affecting a specific academic skill.', 'A learning disorder affecting a specific academic skill, such as reading, writing, or math, which can make it difficult to learn and achieve academic success.', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/Section504DisabilityDescriptor', 'Spina Bifida', 'A birth condition affecting the spinal cord.', 'A birth defect affecting the spinal cord, which can cause paralysis, sensory loss, and other health problems.', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/Section504DisabilityDescriptor', 'Traumatic Brain Injury', 'An injury to the brain caused by a sudden blow to the head.', 'An injury to the brain caused by a sudden blow to the head, which can result in a wide range of physical, cognitive, emotional, and behavioral impairments.', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[Descriptor]([Namespace],[CodeValue],[ShortDescription],[Description],[CreateDate],[LastModifiedDate],[Id]) VALUES ('uri://ed-fi.org/Section504DisabilityDescriptor', 'Visual Impairment', 'A partial or complete loss of vision.', 'A partial or complete loss of vision, which can affect daily activities, communication, and mobility.', GETDATE(), GETDATE(), NEWID())
GO
INSERT INTO [edfi].[DualCreditTypeDescriptor] SELECT [DescriptorId] FROM [edfi].[Descriptor] WHERE [Namespace] = 'uri://ed-fi.org/DualCreditTypeDescriptor'
GO
INSERT INTO [edfi].[Section504DisabilityDescriptor] SELECT [DescriptorId] FROM [edfi].[Descriptor] WHERE [Namespace] = 'uri://ed-fi.org/Section504DisabilityDescriptor'
GO

PRINT N'Update complete.';
GO