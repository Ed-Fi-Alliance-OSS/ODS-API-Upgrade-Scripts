-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Updating ODS Database With ChangeQueries disabled and TPDM extension to 7.3';
GO

PRINT N'Dropping Extended Property [edfi].[StudentParticipationCodeDescriptor].[StudentParticipationCodeDescriptorId].[MS_Description]...';


GO
EXECUTE sp_dropextendedproperty @name = N'MS_Description', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentParticipationCodeDescriptor', @level2type = N'COLUMN', @level2name = N'StudentParticipationCodeDescriptorId';


GO
PRINT N'Dropping Index [tpdm].[Candidate].[FK_Candidate_SexDescriptor]...';


GO
DROP INDEX [FK_Candidate_SexDescriptor]
    ON [tpdm].[Candidate];


GO
PRINT N'Dropping Index [edfi].[AcademicWeek].[IX_AcademicWeek_SchoolId]...';


GO
DROP INDEX [IX_AcademicWeek_SchoolId]
    ON [edfi].[AcademicWeek];


GO
PRINT N'Dropping Index [edfi].[AccountabilityRating].[IX_AccountabilityRating_EducationOrganizationId]...';


GO
DROP INDEX [IX_AccountabilityRating_EducationOrganizationId]
    ON [edfi].[AccountabilityRating];


GO
PRINT N'Dropping Index [edfi].[Assessment].[IX_Assessment_EducationOrganizationId]...';


GO
DROP INDEX [IX_Assessment_EducationOrganizationId]
    ON [edfi].[Assessment];


GO
PRINT N'Dropping Index [edfi].[BellSchedule].[IX_BellSchedule_SchoolId]...';


GO
DROP INDEX [IX_BellSchedule_SchoolId]
    ON [edfi].[BellSchedule];


GO
PRINT N'Dropping Index [edfi].[Calendar].[IX_Calendar_SchoolId]...';


GO
DROP INDEX [IX_Calendar_SchoolId]
    ON [edfi].[Calendar];


GO
PRINT N'Dropping Index [edfi].[CalendarDate].[IX_CalendarDate_SchoolId]...';


GO
DROP INDEX [IX_CalendarDate_SchoolId]
    ON [edfi].[CalendarDate];


GO
PRINT N'Dropping Index [edfi].[ChartOfAccount].[IX_ChartOfAccount_EducationOrganizationId]...';


GO
DROP INDEX [IX_ChartOfAccount_EducationOrganizationId]
    ON [edfi].[ChartOfAccount];


GO
PRINT N'Dropping Index [edfi].[ClassPeriod].[IX_ClassPeriod_SchoolId]...';


GO
DROP INDEX [IX_ClassPeriod_SchoolId]
    ON [edfi].[ClassPeriod];


GO
PRINT N'Dropping Index [edfi].[Cohort].[IX_Cohort_EducationOrganizationId]...';


GO
DROP INDEX [IX_Cohort_EducationOrganizationId]
    ON [edfi].[Cohort];


GO
PRINT N'Dropping Index [edfi].[CommunityProviderLicense].[IX_CommunityProviderLicense_CommunityProviderId]...';


GO
DROP INDEX [IX_CommunityProviderLicense_CommunityProviderId]
    ON [edfi].[CommunityProviderLicense];


GO
PRINT N'Dropping Index [edfi].[CompetencyObjective].[IX_CompetencyObjective_EducationOrganizationId]...';


GO
DROP INDEX [IX_CompetencyObjective_EducationOrganizationId]
    ON [edfi].[CompetencyObjective];


GO
PRINT N'Dropping Index [edfi].[Course].[IX_Course_EducationOrganizationId]...';


GO
DROP INDEX [IX_Course_EducationOrganizationId]
    ON [edfi].[Course];


GO
PRINT N'Dropping Index [edfi].[CourseOffering].[IX_CourseOffering_EducationOrganizationId]...';


GO
DROP INDEX [IX_CourseOffering_EducationOrganizationId]
    ON [edfi].[CourseOffering];


GO
PRINT N'Dropping Index [edfi].[CourseOffering].[IX_CourseOffering_SchoolId]...';


GO
DROP INDEX [IX_CourseOffering_SchoolId]
    ON [edfi].[CourseOffering];


GO
PRINT N'Dropping Index [edfi].[CourseTranscript].[IX_CourseTranscript_EducationOrganizationId]...';


GO
DROP INDEX [IX_CourseTranscript_EducationOrganizationId]
    ON [edfi].[CourseTranscript];


GO
PRINT N'Dropping Index [edfi].[DisciplineIncident].[IX_DisciplineIncident_SchoolId]...';


GO
DROP INDEX [IX_DisciplineIncident_SchoolId]
    ON [edfi].[DisciplineIncident];


GO
PRINT N'Dropping Index [edfi].[EducationOrganization].[IX_EducationOrganization_EducationOrganizationId]...';


GO
DROP INDEX [IX_EducationOrganization_EducationOrganizationId]
    ON [edfi].[EducationOrganization];


GO
PRINT N'Dropping Index [edfi].[EducationOrganizationInterventionPrescriptionAssociation].[IX_EducationOrganizationInterventionPrescriptionAssociation_EducationOrganizationId]...';


GO
DROP INDEX [IX_EducationOrganizationInterventionPrescriptionAssociation_EducationOrganizationId]
    ON [edfi].[EducationOrganizationInterventionPrescriptionAssociation];


GO
PRINT N'Dropping Index [edfi].[EducationOrganizationNetworkAssociation].[IX_EducationOrganizationNetworkAssociation_EducationOrganizationNetworkId]...';


GO
DROP INDEX [IX_EducationOrganizationNetworkAssociation_EducationOrganizationNetworkId]
    ON [edfi].[EducationOrganizationNetworkAssociation];


GO
PRINT N'Dropping Index [edfi].[EducationOrganizationPeerAssociation].[IX_EducationOrganizationPeerAssociation_EducationOrganizationId]...';


GO
DROP INDEX [IX_EducationOrganizationPeerAssociation_EducationOrganizationId]
    ON [edfi].[EducationOrganizationPeerAssociation];


GO
PRINT N'Dropping Index [edfi].[EvaluationRubricDimension].[IX_EvaluationRubricDimension_ProgramEducationOrganizationId]...';


GO
DROP INDEX [IX_EvaluationRubricDimension_ProgramEducationOrganizationId]
    ON [edfi].[EvaluationRubricDimension];


GO
PRINT N'Dropping Index [edfi].[FeederSchoolAssociation].[IX_FeederSchoolAssociation_SchoolId]...';


GO
DROP INDEX [IX_FeederSchoolAssociation_SchoolId]
    ON [edfi].[FeederSchoolAssociation];


GO
PRINT N'Dropping Index [edfi].[GeneralStudentProgramAssociation].[IX_GeneralStudentProgramAssociation_EducationOrganizationId]...';


GO
DROP INDEX [IX_GeneralStudentProgramAssociation_EducationOrganizationId]
    ON [edfi].[GeneralStudentProgramAssociation];


GO
PRINT N'Dropping Index [edfi].[Grade].[IX_Grade_SchoolId]...';


GO
DROP INDEX [IX_Grade_SchoolId]
    ON [edfi].[Grade];


GO
PRINT N'Dropping Index [edfi].[GradebookEntry].[IX_GradebookEntry_SchoolId]...';


GO
DROP INDEX [IX_GradebookEntry_SchoolId]
    ON [edfi].[GradebookEntry];


GO
PRINT N'Dropping Index [edfi].[GradingPeriod].[IX_GradingPeriod_SchoolId]...';


GO
DROP INDEX [IX_GradingPeriod_SchoolId]
    ON [edfi].[GradingPeriod];


GO
PRINT N'Dropping Index [edfi].[GraduationPlan].[IX_GraduationPlan_EducationOrganizationId]...';


GO
DROP INDEX [IX_GraduationPlan_EducationOrganizationId]
    ON [edfi].[GraduationPlan];


GO
PRINT N'Dropping Index [edfi].[Intervention].[IX_Intervention_EducationOrganizationId]...';


GO
DROP INDEX [IX_Intervention_EducationOrganizationId]
    ON [edfi].[Intervention];


GO
PRINT N'Dropping Index [edfi].[InterventionPrescription].[IX_InterventionPrescription_EducationOrganizationId]...';


GO
DROP INDEX [IX_InterventionPrescription_EducationOrganizationId]
    ON [edfi].[InterventionPrescription];


GO
PRINT N'Dropping Index [edfi].[InterventionStudy].[IX_InterventionStudy_EducationOrganizationId]...';


GO
DROP INDEX [IX_InterventionStudy_EducationOrganizationId]
    ON [edfi].[InterventionStudy];


GO
PRINT N'Dropping Index [edfi].[LocalAccount].[IX_LocalAccount_EducationOrganizationId]...';


GO
DROP INDEX [IX_LocalAccount_EducationOrganizationId]
    ON [edfi].[LocalAccount];


GO
PRINT N'Dropping Index [edfi].[LocalActual].[IX_LocalActual_EducationOrganizationId]...';


GO
DROP INDEX [IX_LocalActual_EducationOrganizationId]
    ON [edfi].[LocalActual];


GO
PRINT N'Dropping Index [edfi].[LocalBudget].[IX_LocalBudget_EducationOrganizationId]...';


GO
DROP INDEX [IX_LocalBudget_EducationOrganizationId]
    ON [edfi].[LocalBudget];


GO
PRINT N'Dropping Index [edfi].[LocalContractedStaff].[IX_LocalContractedStaff_EducationOrganizationId]...';


GO
DROP INDEX [IX_LocalContractedStaff_EducationOrganizationId]
    ON [edfi].[LocalContractedStaff];


GO
PRINT N'Dropping Index [edfi].[LocalEncumbrance].[IX_LocalEncumbrance_EducationOrganizationId]...';


GO
DROP INDEX [IX_LocalEncumbrance_EducationOrganizationId]
    ON [edfi].[LocalEncumbrance];


GO
PRINT N'Dropping Index [edfi].[LocalPayroll].[IX_LocalPayroll_EducationOrganizationId]...';


GO
DROP INDEX [IX_LocalPayroll_EducationOrganizationId]
    ON [edfi].[LocalPayroll];


GO
PRINT N'Dropping Index [edfi].[Location].[IX_Location_SchoolId]...';


GO
DROP INDEX [IX_Location_SchoolId]
    ON [edfi].[Location];


GO
PRINT N'Dropping Index [edfi].[OpenStaffPosition].[IX_OpenStaffPosition_EducationOrganizationId]...';


GO
DROP INDEX [IX_OpenStaffPosition_EducationOrganizationId]
    ON [edfi].[OpenStaffPosition];


GO
PRINT N'Dropping Index [edfi].[PostSecondaryEvent].[IX_PostSecondaryEvent_PostSecondaryInstitutionId]...';


GO
DROP INDEX [IX_PostSecondaryEvent_PostSecondaryInstitutionId]
    ON [edfi].[PostSecondaryEvent];


GO
PRINT N'Dropping Index [edfi].[Program].[IX_Program_EducationOrganizationId]...';


GO
DROP INDEX [IX_Program_EducationOrganizationId]
    ON [edfi].[Program];


GO
PRINT N'Dropping Index [edfi].[ProgramEvaluationElement].[IX_ProgramEvaluationElement_ProgramEducationOrganizationId]...';


GO
DROP INDEX [IX_ProgramEvaluationElement_ProgramEducationOrganizationId]
    ON [edfi].[ProgramEvaluationElement];


GO
PRINT N'Dropping Index [edfi].[ProgramEvaluationObjective].[IX_ProgramEvaluationObjective_ProgramEducationOrganizationId]...';


GO
DROP INDEX [IX_ProgramEvaluationObjective_ProgramEducationOrganizationId]
    ON [edfi].[ProgramEvaluationObjective];


GO
PRINT N'Dropping Index [edfi].[ReportCard].[IX_ReportCard_EducationOrganizationId]...';


GO
DROP INDEX [IX_ReportCard_EducationOrganizationId]
    ON [edfi].[ReportCard];


GO
PRINT N'Dropping Index [edfi].[Section].[IX_Section_SchoolId]...';


GO
DROP INDEX [IX_Section_SchoolId]
    ON [edfi].[Section];


GO
PRINT N'Dropping Index [edfi].[SectionAttendanceTakenEvent].[IX_SectionAttendanceTakenEvent_SchoolId]...';


GO
DROP INDEX [IX_SectionAttendanceTakenEvent_SchoolId]
    ON [edfi].[SectionAttendanceTakenEvent];


GO
PRINT N'Dropping Index [edfi].[Session].[IX_Session_SchoolId]...';


GO
DROP INDEX [IX_Session_SchoolId]
    ON [edfi].[Session];


GO
PRINT N'Dropping Index [edfi].[StaffCohortAssociation].[IX_StaffCohortAssociation_EducationOrganizationId]...';


GO
DROP INDEX [IX_StaffCohortAssociation_EducationOrganizationId]
    ON [edfi].[StaffCohortAssociation];


GO
PRINT N'Dropping Index [edfi].[StaffDisciplineIncidentAssociation].[IX_StaffDisciplineIncidentAssociation_SchoolId]...';


GO
DROP INDEX [IX_StaffDisciplineIncidentAssociation_SchoolId]
    ON [edfi].[StaffDisciplineIncidentAssociation];


GO
PRINT N'Dropping Index [edfi].[StaffEducationOrganizationAssignmentAssociation].[IX_StaffEducationOrganizationAssignmentAssociation_EducationOrganizationId]...';


GO
DROP INDEX [IX_StaffEducationOrganizationAssignmentAssociation_EducationOrganizationId]
    ON [edfi].[StaffEducationOrganizationAssignmentAssociation];


GO
PRINT N'Dropping Index [edfi].[StaffEducationOrganizationContactAssociation].[IX_StaffEducationOrganizationContactAssociation_EducationOrganizationId]...';


GO
DROP INDEX [IX_StaffEducationOrganizationContactAssociation_EducationOrganizationId]
    ON [edfi].[StaffEducationOrganizationContactAssociation];


GO
PRINT N'Dropping Index [edfi].[StaffEducationOrganizationEmploymentAssociation].[IX_StaffEducationOrganizationEmploymentAssociation_EducationOrganizationId]...';


GO
DROP INDEX [IX_StaffEducationOrganizationEmploymentAssociation_EducationOrganizationId]
    ON [edfi].[StaffEducationOrganizationEmploymentAssociation];


GO
PRINT N'Dropping Index [edfi].[StaffSchoolAssociation].[IX_StaffSchoolAssociation_SchoolId]...';


GO
DROP INDEX [IX_StaffSchoolAssociation_SchoolId]
    ON [edfi].[StaffSchoolAssociation];


GO
PRINT N'Dropping Index [edfi].[StaffSectionAssociation].[IX_StaffSectionAssociation_SchoolId]...';


GO
DROP INDEX [IX_StaffSectionAssociation_SchoolId]
    ON [edfi].[StaffSectionAssociation];


GO
PRINT N'Dropping Index [edfi].[StudentAcademicRecord].[IX_StudentAcademicRecord_EducationOrganizationId]...';


GO
DROP INDEX [IX_StudentAcademicRecord_EducationOrganizationId]
    ON [edfi].[StudentAcademicRecord];


GO
PRINT N'Dropping Index [edfi].[StudentAssessmentEducationOrganizationAssociation].[IX_StudentAssessmentEducationOrganizationAssociation_EducationOrganizationId]...';


GO
DROP INDEX [IX_StudentAssessmentEducationOrganizationAssociation_EducationOrganizationId]
    ON [edfi].[StudentAssessmentEducationOrganizationAssociation];


GO
PRINT N'Dropping Index [edfi].[StudentCohortAssociation].[IX_StudentCohortAssociation_EducationOrganizationId]...';


GO
DROP INDEX [IX_StudentCohortAssociation_EducationOrganizationId]
    ON [edfi].[StudentCohortAssociation];


GO
PRINT N'Dropping Index [edfi].[StudentDisciplineIncidentBehaviorAssociation].[IX_StudentDisciplineIncidentBehaviorAssociation_SchoolId]...';


GO
DROP INDEX [IX_StudentDisciplineIncidentBehaviorAssociation_SchoolId]
    ON [edfi].[StudentDisciplineIncidentBehaviorAssociation];


GO
PRINT N'Dropping Index [edfi].[StudentDisciplineIncidentNonOffenderAssociation].[IX_StudentDisciplineIncidentNonOffenderAssociation_SchoolId]...';


GO
DROP INDEX [IX_StudentDisciplineIncidentNonOffenderAssociation_SchoolId]
    ON [edfi].[StudentDisciplineIncidentNonOffenderAssociation];


GO
PRINT N'Dropping Index [edfi].[StudentEducationOrganizationAssociation].[IX_StudentEducationOrganizationAssociation_EducationOrganizationId]...';


GO
DROP INDEX [IX_StudentEducationOrganizationAssociation_EducationOrganizationId]
    ON [edfi].[StudentEducationOrganizationAssociation];


GO
PRINT N'Dropping Index [edfi].[StudentEducationOrganizationResponsibilityAssociation].[IX_StudentEducationOrganizationResponsibilityAssociation_EducationOrganizationId]...';


GO
DROP INDEX [IX_StudentEducationOrganizationResponsibilityAssociation_EducationOrganizationId]
    ON [edfi].[StudentEducationOrganizationResponsibilityAssociation];


GO
PRINT N'Dropping Index [edfi].[StudentHealth].[IX_StudentHealth_EducationOrganizationId]...';


GO
DROP INDEX [IX_StudentHealth_EducationOrganizationId]
    ON [edfi].[StudentHealth];


GO
PRINT N'Dropping Index [edfi].[StudentInterventionAssociation].[IX_StudentInterventionAssociation_EducationOrganizationId]...';


GO
DROP INDEX [IX_StudentInterventionAssociation_EducationOrganizationId]
    ON [edfi].[StudentInterventionAssociation];


GO
PRINT N'Dropping Index [edfi].[StudentInterventionAttendanceEvent].[IX_StudentInterventionAttendanceEvent_EducationOrganizationId]...';


GO
DROP INDEX [IX_StudentInterventionAttendanceEvent_EducationOrganizationId]
    ON [edfi].[StudentInterventionAttendanceEvent];


GO
PRINT N'Dropping Index [edfi].[StudentProgramAttendanceEvent].[IX_StudentProgramAttendanceEvent_EducationOrganizationId]...';


GO
DROP INDEX [IX_StudentProgramAttendanceEvent_EducationOrganizationId]
    ON [edfi].[StudentProgramAttendanceEvent];


GO
PRINT N'Dropping Index [edfi].[StudentProgramEvaluation].[IX_StudentProgramEvaluation_EducationOrganizationId]...';


GO
DROP INDEX [IX_StudentProgramEvaluation_EducationOrganizationId]
    ON [edfi].[StudentProgramEvaluation];


GO
PRINT N'Dropping Index [edfi].[StudentProgramEvaluation].[IX_StudentProgramEvaluation_ProgramEducationOrganizationId]...';


GO
DROP INDEX [IX_StudentProgramEvaluation_ProgramEducationOrganizationId]
    ON [edfi].[StudentProgramEvaluation];


GO
PRINT N'Dropping Index [edfi].[StudentSchoolAssociation].[IX_StudentSchoolAssociation_EducationOrganizationId]...';


GO
DROP INDEX [IX_StudentSchoolAssociation_EducationOrganizationId]
    ON [edfi].[StudentSchoolAssociation];


GO
PRINT N'Dropping Index [edfi].[StudentSchoolAssociation].[IX_StudentSchoolAssociation_SchoolId]...';


GO
DROP INDEX [IX_StudentSchoolAssociation_SchoolId]
    ON [edfi].[StudentSchoolAssociation];


GO
PRINT N'Dropping Index [edfi].[StudentSchoolAttendanceEvent].[IX_StudentSchoolAttendanceEvent_SchoolId]...';


GO
DROP INDEX [IX_StudentSchoolAttendanceEvent_SchoolId]
    ON [edfi].[StudentSchoolAttendanceEvent];


GO
PRINT N'Dropping Index [edfi].[StudentSectionAttendanceEvent].[IX_StudentSectionAttendanceEvent_SchoolId]...';


GO
DROP INDEX [IX_StudentSectionAttendanceEvent_SchoolId]
    ON [edfi].[StudentSectionAttendanceEvent];


GO
PRINT N'Dropping Index [edfi].[Survey].[IX_Survey_EducationOrganizationId]...';


GO
DROP INDEX [IX_Survey_EducationOrganizationId]
    ON [edfi].[Survey];


GO
PRINT N'Dropping Index [edfi].[Survey].[IX_Survey_SchoolId]...';


GO
DROP INDEX [IX_Survey_SchoolId]
    ON [edfi].[Survey];


GO
PRINT N'Dropping Index [edfi].[SurveyCourseAssociation].[IX_SurveyCourseAssociation_EducationOrganizationId]...';


GO
DROP INDEX [IX_SurveyCourseAssociation_EducationOrganizationId]
    ON [edfi].[SurveyCourseAssociation];


GO
PRINT N'Dropping Index [edfi].[SurveyProgramAssociation].[IX_SurveyProgramAssociation_EducationOrganizationId]...';


GO
DROP INDEX [IX_SurveyProgramAssociation_EducationOrganizationId]
    ON [edfi].[SurveyProgramAssociation];


GO
PRINT N'Dropping Index [edfi].[SurveyResponseEducationOrganizationTargetAssociation].[IX_SurveyResponseEducationOrganizationTargetAssociation_EducationOrganizationId]...';


GO
DROP INDEX [IX_SurveyResponseEducationOrganizationTargetAssociation_EducationOrganizationId]
    ON [edfi].[SurveyResponseEducationOrganizationTargetAssociation];


GO
PRINT N'Dropping Index [edfi].[SurveySectionAssociation].[IX_SurveySectionAssociation_SchoolId]...';


GO
DROP INDEX [IX_SurveySectionAssociation_SchoolId]
    ON [edfi].[SurveySectionAssociation];


GO
PRINT N'Dropping Index [edfi].[SurveySectionResponseEducationOrganizationTargetAssociation].[IX_SurveySectionResponseEducationOrganizationTargetAssociation_EducationOrganizationId]...';


GO
DROP INDEX [IX_SurveySectionResponseEducationOrganizationTargetAssociation_EducationOrganizationId]
    ON [edfi].[SurveySectionResponseEducationOrganizationTargetAssociation];


GO
PRINT N'Dropping Index [tpdm].[CandidateEducatorPreparationProgramAssociation].[IX_CandidateEducatorPreparationProgramAssociation_EducationOrganizationId]...';


GO
DROP INDEX [IX_CandidateEducatorPreparationProgramAssociation_EducationOrganizationId]
    ON [tpdm].[CandidateEducatorPreparationProgramAssociation];


GO
PRINT N'Dropping Index [tpdm].[EducatorPreparationProgram].[IX_EducatorPreparationProgram_EducationOrganizationId]...';


GO
DROP INDEX [IX_EducatorPreparationProgram_EducationOrganizationId]
    ON [tpdm].[EducatorPreparationProgram];


GO
PRINT N'Dropping Index [tpdm].[Evaluation].[IX_Evaluation_EducationOrganizationId]...';


GO
DROP INDEX [IX_Evaluation_EducationOrganizationId]
    ON [tpdm].[Evaluation];


GO
PRINT N'Dropping Index [tpdm].[EvaluationElement].[IX_EvaluationElement_EducationOrganizationId]...';


GO
DROP INDEX [IX_EvaluationElement_EducationOrganizationId]
    ON [tpdm].[EvaluationElement];


GO
PRINT N'Dropping Index [tpdm].[EvaluationElementRating].[IX_EvaluationElementRating_EducationOrganizationId]...';


GO
DROP INDEX [IX_EvaluationElementRating_EducationOrganizationId]
    ON [tpdm].[EvaluationElementRating];


GO
PRINT N'Dropping Index [tpdm].[EvaluationObjective].[IX_EvaluationObjective_EducationOrganizationId]...';


GO
DROP INDEX [IX_EvaluationObjective_EducationOrganizationId]
    ON [tpdm].[EvaluationObjective];


GO
PRINT N'Dropping Index [tpdm].[EvaluationObjectiveRating].[IX_EvaluationObjectiveRating_EducationOrganizationId]...';


GO
DROP INDEX [IX_EvaluationObjectiveRating_EducationOrganizationId]
    ON [tpdm].[EvaluationObjectiveRating];


GO
PRINT N'Dropping Index [tpdm].[PerformanceEvaluation].[IX_PerformanceEvaluation_EducationOrganizationId]...';


GO
DROP INDEX [IX_PerformanceEvaluation_EducationOrganizationId]
    ON [tpdm].[PerformanceEvaluation];


GO
PRINT N'Dropping Index [tpdm].[PerformanceEvaluationRating].[IX_PerformanceEvaluationRating_EducationOrganizationId]...';


GO
DROP INDEX [IX_PerformanceEvaluationRating_EducationOrganizationId]
    ON [tpdm].[PerformanceEvaluationRating];


GO
PRINT N'Dropping Index [tpdm].[RubricDimension].[IX_RubricDimension_EducationOrganizationId]...';


GO
DROP INDEX [IX_RubricDimension_EducationOrganizationId]
    ON [tpdm].[RubricDimension];


GO
PRINT N'Dropping Index [edfi].[DisciplineAction].[FK_DisciplineAction_Student]...';


GO
DROP INDEX [FK_DisciplineAction_Student]
    ON [edfi].[DisciplineAction];


GO
PRINT N'Dropping Index [edfi].[GeneralStudentProgramAssociation].[FK_GeneralStudentProgramAssociation_Student]...';


GO
DROP INDEX [FK_GeneralStudentProgramAssociation_Student]
    ON [edfi].[GeneralStudentProgramAssociation];


GO
PRINT N'Dropping Index [edfi].[LocalContractedStaff].[FK_LocalContractedStaff_Staff]...';


GO
DROP INDEX [FK_LocalContractedStaff_Staff]
    ON [edfi].[LocalContractedStaff];


GO
PRINT N'Dropping Index [edfi].[LocalPayroll].[FK_LocalPayroll_Staff]...';


GO
DROP INDEX [FK_LocalPayroll_Staff]
    ON [edfi].[LocalPayroll];


GO
PRINT N'Dropping Index [edfi].[PostSecondaryEvent].[FK_PostSecondaryEvent_Student]...';


GO
DROP INDEX [FK_PostSecondaryEvent_Student]
    ON [edfi].[PostSecondaryEvent];


GO
PRINT N'Dropping Index [edfi].[ReportCard].[FK_ReportCard_Student]...';


GO
DROP INDEX [FK_ReportCard_Student]
    ON [edfi].[ReportCard];


GO
PRINT N'Dropping Index [edfi].[RestraintEvent].[FK_RestraintEvent_Student]...';


GO
DROP INDEX [FK_RestraintEvent_Student]
    ON [edfi].[RestraintEvent];


GO
PRINT N'Dropping Index [edfi].[SectionAttendanceTakenEvent].[FK_SectionAttendanceTakenEvent_Staff]...';


GO
DROP INDEX [FK_SectionAttendanceTakenEvent_Staff]
    ON [edfi].[SectionAttendanceTakenEvent];


GO
PRINT N'Dropping Index [edfi].[StaffAbsenceEvent].[FK_StaffAbsenceEvent_Staff]...';


GO
DROP INDEX [FK_StaffAbsenceEvent_Staff]
    ON [edfi].[StaffAbsenceEvent];


GO
PRINT N'Dropping Index [edfi].[StaffCohortAssociation].[FK_StaffCohortAssociation_Staff]...';


GO
DROP INDEX [FK_StaffCohortAssociation_Staff]
    ON [edfi].[StaffCohortAssociation];


GO
PRINT N'Dropping Index [edfi].[StaffDisciplineIncidentAssociation].[FK_StaffDisciplineIncidentAssociation_Staff]...';


GO
DROP INDEX [FK_StaffDisciplineIncidentAssociation_Staff]
    ON [edfi].[StaffDisciplineIncidentAssociation];


GO
PRINT N'Dropping Index [edfi].[StaffEducationOrganizationAssignmentAssociation].[FK_StaffEducationOrganizationAssignmentAssociation_Staff]...';


GO
DROP INDEX [FK_StaffEducationOrganizationAssignmentAssociation_Staff]
    ON [edfi].[StaffEducationOrganizationAssignmentAssociation];


GO
PRINT N'Dropping Index [edfi].[StaffEducationOrganizationContactAssociation].[FK_StaffEducationOrganizationContactAssociation_Staff]...';


GO
DROP INDEX [FK_StaffEducationOrganizationContactAssociation_Staff]
    ON [edfi].[StaffEducationOrganizationContactAssociation];


GO
PRINT N'Dropping Index [edfi].[StaffEducationOrganizationEmploymentAssociation].[FK_StaffEducationOrganizationEmploymentAssociation_Staff]...';


GO
DROP INDEX [FK_StaffEducationOrganizationEmploymentAssociation_Staff]
    ON [edfi].[StaffEducationOrganizationEmploymentAssociation];


GO
PRINT N'Dropping Index [edfi].[StaffLeave].[FK_StaffLeave_Staff]...';


GO
DROP INDEX [FK_StaffLeave_Staff]
    ON [edfi].[StaffLeave];


GO
PRINT N'Dropping Index [edfi].[StaffProgramAssociation].[FK_StaffProgramAssociation_Staff]...';


GO
DROP INDEX [FK_StaffProgramAssociation_Staff]
    ON [edfi].[StaffProgramAssociation];


GO
PRINT N'Dropping Index [edfi].[StaffSchoolAssociation].[FK_StaffSchoolAssociation_Staff]...';


GO
DROP INDEX [FK_StaffSchoolAssociation_Staff]
    ON [edfi].[StaffSchoolAssociation];


GO
PRINT N'Dropping Index [edfi].[StaffSectionAssociation].[FK_StaffSectionAssociation_Staff]...';


GO
DROP INDEX [FK_StaffSectionAssociation_Staff]
    ON [edfi].[StaffSectionAssociation];


GO
PRINT N'Dropping Index [edfi].[StudentAcademicRecord].[FK_StudentAcademicRecord_Student]...';


GO
DROP INDEX [FK_StudentAcademicRecord_Student]
    ON [edfi].[StudentAcademicRecord];


GO
PRINT N'Dropping Index [edfi].[StudentAssessment].[FK_StudentAssessment_Student]...';


GO
DROP INDEX [FK_StudentAssessment_Student]
    ON [edfi].[StudentAssessment];


GO
PRINT N'Dropping Index [edfi].[StudentCohortAssociation].[FK_StudentCohortAssociation_Student]...';


GO
DROP INDEX [FK_StudentCohortAssociation_Student]
    ON [edfi].[StudentCohortAssociation];


GO
PRINT N'Dropping Index [edfi].[StudentCompetencyObjective].[FK_StudentCompetencyObjective_Student]...';


GO
DROP INDEX [FK_StudentCompetencyObjective_Student]
    ON [edfi].[StudentCompetencyObjective];


GO
PRINT N'Dropping Index [edfi].[StudentDisciplineIncidentBehaviorAssociation].[FK_StudentDisciplineIncidentBehaviorAssociation_Student]...';


GO
DROP INDEX [FK_StudentDisciplineIncidentBehaviorAssociation_Student]
    ON [edfi].[StudentDisciplineIncidentBehaviorAssociation];


GO
PRINT N'Dropping Index [edfi].[StudentDisciplineIncidentNonOffenderAssociation].[FK_StudentDisciplineIncidentNonOffenderAssociation_Student]...';


GO
DROP INDEX [FK_StudentDisciplineIncidentNonOffenderAssociation_Student]
    ON [edfi].[StudentDisciplineIncidentNonOffenderAssociation];


GO
PRINT N'Dropping Index [edfi].[StudentEducationOrganizationAssociation].[FK_StudentEducationOrganizationAssociation_Student]...';


GO
DROP INDEX [FK_StudentEducationOrganizationAssociation_Student]
    ON [edfi].[StudentEducationOrganizationAssociation];


GO
PRINT N'Dropping Index [edfi].[StudentEducationOrganizationResponsibilityAssociation].[FK_StudentEducationOrganizationResponsibilityAssociation_Student]...';


GO
DROP INDEX [FK_StudentEducationOrganizationResponsibilityAssociation_Student]
    ON [edfi].[StudentEducationOrganizationResponsibilityAssociation];


GO
PRINT N'Dropping Index [edfi].[StudentGradebookEntry].[FK_StudentGradebookEntry_Student]...';


GO
DROP INDEX [FK_StudentGradebookEntry_Student]
    ON [edfi].[StudentGradebookEntry];


GO
PRINT N'Dropping Index [edfi].[StudentHealth].[FK_StudentHealth_Student]...';


GO
DROP INDEX [FK_StudentHealth_Student]
    ON [edfi].[StudentHealth];


GO
PRINT N'Dropping Index [edfi].[StudentInterventionAssociation].[FK_StudentInterventionAssociation_Student]...';


GO
DROP INDEX [FK_StudentInterventionAssociation_Student]
    ON [edfi].[StudentInterventionAssociation];


GO
PRINT N'Dropping Index [edfi].[StudentInterventionAttendanceEvent].[FK_StudentInterventionAttendanceEvent_Student]...';


GO
DROP INDEX [FK_StudentInterventionAttendanceEvent_Student]
    ON [edfi].[StudentInterventionAttendanceEvent];


GO
PRINT N'Dropping Index [edfi].[StudentProgramAttendanceEvent].[FK_StudentProgramAttendanceEvent_Student]...';


GO
DROP INDEX [FK_StudentProgramAttendanceEvent_Student]
    ON [edfi].[StudentProgramAttendanceEvent];


GO
PRINT N'Dropping Index [edfi].[StudentSchoolAssociation].[FK_StudentSchoolAssociation_Student]...';


GO
DROP INDEX [FK_StudentSchoolAssociation_Student]
    ON [edfi].[StudentSchoolAssociation];


GO
PRINT N'Dropping Index [edfi].[StudentSchoolAttendanceEvent].[FK_StudentSchoolAttendanceEvent_Student]...';


GO
DROP INDEX [FK_StudentSchoolAttendanceEvent_Student]
    ON [edfi].[StudentSchoolAttendanceEvent];


GO
PRINT N'Dropping Index [edfi].[StudentSectionAssociation].[FK_StudentSectionAssociation_Student]...';


GO
DROP INDEX [FK_StudentSectionAssociation_Student]
    ON [edfi].[StudentSectionAssociation];


GO
PRINT N'Dropping Index [edfi].[StudentSectionAttendanceEvent].[FK_StudentSectionAttendanceEvent_Student]...';


GO
DROP INDEX [FK_StudentSectionAttendanceEvent_Student]
    ON [edfi].[StudentSectionAttendanceEvent];


GO
PRINT N'Dropping Index [edfi].[StudentSpecialEducationProgramEligibilityAssociation].[FK_StudentSpecialEducationProgramEligibilityAssociation_Student]...';


GO
DROP INDEX [FK_StudentSpecialEducationProgramEligibilityAssociation_Student]
    ON [edfi].[StudentSpecialEducationProgramEligibilityAssociation];


GO
PRINT N'Dropping Index [edfi].[StudentTransportation].[FK_StudentTransportation_Student]...';


GO
DROP INDEX [FK_StudentTransportation_Student]
    ON [edfi].[StudentTransportation];


GO
PRINT N'Dropping Index [edfi].[SurveyResponseStaffTargetAssociation].[FK_SurveyResponseStaffTargetAssociation_Staff]...';


GO
DROP INDEX [FK_SurveyResponseStaffTargetAssociation_Staff]
    ON [edfi].[SurveyResponseStaffTargetAssociation];


GO
PRINT N'Dropping Index [edfi].[SurveySectionResponseStaffTargetAssociation].[FK_SurveySectionResponseStaffTargetAssociation_Staff]...';


GO
DROP INDEX [FK_SurveySectionResponseStaffTargetAssociation_Staff]
    ON [edfi].[SurveySectionResponseStaffTargetAssociation];


GO
PRINT N'Dropping Index [tpdm].[FinancialAid].[FK_FinancialAid_Student]...';


GO
DROP INDEX [FK_FinancialAid_Student]
    ON [tpdm].[FinancialAid];


GO
PRINT N'Dropping Default Constraint [edfi].[RestraintEvent_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[RestraintEvent] DROP CONSTRAINT [RestraintEvent_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[RestraintEvent_DF_Id]...';


GO
ALTER TABLE [edfi].[RestraintEvent] DROP CONSTRAINT [RestraintEvent_DF_Id];


GO
PRINT N'Dropping Default Constraint [edfi].[RestraintEvent_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[RestraintEvent] DROP CONSTRAINT [RestraintEvent_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentSectionAssociation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentSectionAssociation] DROP CONSTRAINT [StudentSectionAssociation_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentSectionAssociation_DF_Id]...';


GO
ALTER TABLE [edfi].[StudentSectionAssociation] DROP CONSTRAINT [StudentSectionAssociation_DF_Id];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentSectionAssociation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[StudentSectionAssociation] DROP CONSTRAINT [StudentSectionAssociation_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentSpecialEducationProgramEligibilityAssociation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentSpecialEducationProgramEligibilityAssociation] DROP CONSTRAINT [StudentSpecialEducationProgramEligibilityAssociation_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentSpecialEducationProgramEligibilityAssociation_DF_Id]...';


GO
ALTER TABLE [edfi].[StudentSpecialEducationProgramEligibilityAssociation] DROP CONSTRAINT [StudentSpecialEducationProgramEligibilityAssociation_DF_Id];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentSpecialEducationProgramEligibilityAssociation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[StudentSpecialEducationProgramEligibilityAssociation] DROP CONSTRAINT [StudentSpecialEducationProgramEligibilityAssociation_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [tpdm].[EvaluationRating_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[EvaluationRating] DROP CONSTRAINT [EvaluationRating_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [tpdm].[EvaluationRating_DF_Id]...';


GO
ALTER TABLE [tpdm].[EvaluationRating] DROP CONSTRAINT [EvaluationRating_DF_Id];


GO
PRINT N'Dropping Default Constraint [tpdm].[EvaluationRating_DF_LastModifiedDate]...';


GO
ALTER TABLE [tpdm].[EvaluationRating] DROP CONSTRAINT [EvaluationRating_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[AcademicWeek_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[AcademicWeek] DROP CONSTRAINT [AcademicWeek_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[AcademicWeek_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[AcademicWeek] DROP CONSTRAINT [AcademicWeek_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[AccountabilityRating_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[AccountabilityRating] DROP CONSTRAINT [AccountabilityRating_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[AccountabilityRating_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[AccountabilityRating] DROP CONSTRAINT [AccountabilityRating_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[Assessment_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[Assessment] DROP CONSTRAINT [Assessment_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[Assessment_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[Assessment] DROP CONSTRAINT [Assessment_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[AssessmentAcademicSubject_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[AssessmentAcademicSubject] DROP CONSTRAINT [AssessmentAcademicSubject_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[AssessmentAssessedGradeLevel_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[AssessmentAssessedGradeLevel] DROP CONSTRAINT [AssessmentAssessedGradeLevel_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[AssessmentContentStandard_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[AssessmentContentStandard] DROP CONSTRAINT [AssessmentContentStandard_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[AssessmentContentStandardAuthor_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[AssessmentContentStandardAuthor] DROP CONSTRAINT [AssessmentContentStandardAuthor_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[AssessmentIdentificationCode_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[AssessmentIdentificationCode] DROP CONSTRAINT [AssessmentIdentificationCode_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[AssessmentItem_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[AssessmentItem] DROP CONSTRAINT [AssessmentItem_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[AssessmentItem_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[AssessmentItem] DROP CONSTRAINT [AssessmentItem_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[AssessmentItemLearningStandard_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[AssessmentItemLearningStandard] DROP CONSTRAINT [AssessmentItemLearningStandard_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[AssessmentItemPossibleResponse_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[AssessmentItemPossibleResponse] DROP CONSTRAINT [AssessmentItemPossibleResponse_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[AssessmentLanguage_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[AssessmentLanguage] DROP CONSTRAINT [AssessmentLanguage_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[AssessmentPerformanceLevel_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[AssessmentPerformanceLevel] DROP CONSTRAINT [AssessmentPerformanceLevel_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[AssessmentPeriod_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[AssessmentPeriod] DROP CONSTRAINT [AssessmentPeriod_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[AssessmentPlatformType_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[AssessmentPlatformType] DROP CONSTRAINT [AssessmentPlatformType_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[AssessmentProgram_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[AssessmentProgram] DROP CONSTRAINT [AssessmentProgram_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[AssessmentScore_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[AssessmentScore] DROP CONSTRAINT [AssessmentScore_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[AssessmentScoreRangeLearningStandard_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[AssessmentScoreRangeLearningStandard] DROP CONSTRAINT [AssessmentScoreRangeLearningStandard_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[AssessmentScoreRangeLearningStandard_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[AssessmentScoreRangeLearningStandard] DROP CONSTRAINT [AssessmentScoreRangeLearningStandard_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[AssessmentScoreRangeLearningStandardLearningStandard_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[AssessmentScoreRangeLearningStandardLearningStandard] DROP CONSTRAINT [AssessmentScoreRangeLearningStandardLearningStandard_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[AssessmentSection_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[AssessmentSection] DROP CONSTRAINT [AssessmentSection_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[BalanceSheetDimension_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[BalanceSheetDimension] DROP CONSTRAINT [BalanceSheetDimension_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[BalanceSheetDimension_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[BalanceSheetDimension] DROP CONSTRAINT [BalanceSheetDimension_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[BalanceSheetDimensionReportingTag_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[BalanceSheetDimensionReportingTag] DROP CONSTRAINT [BalanceSheetDimensionReportingTag_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[BellSchedule_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[BellSchedule] DROP CONSTRAINT [BellSchedule_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[BellSchedule_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[BellSchedule] DROP CONSTRAINT [BellSchedule_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[BellScheduleClassPeriod_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[BellScheduleClassPeriod] DROP CONSTRAINT [BellScheduleClassPeriod_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[BellScheduleDate_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[BellScheduleDate] DROP CONSTRAINT [BellScheduleDate_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[BellScheduleGradeLevel_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[BellScheduleGradeLevel] DROP CONSTRAINT [BellScheduleGradeLevel_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[Calendar_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[Calendar] DROP CONSTRAINT [Calendar_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[Calendar_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[Calendar] DROP CONSTRAINT [Calendar_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[CalendarDate_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[CalendarDate] DROP CONSTRAINT [CalendarDate_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[CalendarDate_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[CalendarDate] DROP CONSTRAINT [CalendarDate_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[CalendarDateCalendarEvent_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[CalendarDateCalendarEvent] DROP CONSTRAINT [CalendarDateCalendarEvent_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[CalendarGradeLevel_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[CalendarGradeLevel] DROP CONSTRAINT [CalendarGradeLevel_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[ChartOfAccount_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[ChartOfAccount] DROP CONSTRAINT [ChartOfAccount_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[ChartOfAccount_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[ChartOfAccount] DROP CONSTRAINT [ChartOfAccount_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[ChartOfAccountReportingTag_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[ChartOfAccountReportingTag] DROP CONSTRAINT [ChartOfAccountReportingTag_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[ClassPeriod_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[ClassPeriod] DROP CONSTRAINT [ClassPeriod_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[ClassPeriod_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[ClassPeriod] DROP CONSTRAINT [ClassPeriod_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[ClassPeriodMeetingTime_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[ClassPeriodMeetingTime] DROP CONSTRAINT [ClassPeriodMeetingTime_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[Cohort_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[Cohort] DROP CONSTRAINT [Cohort_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[Cohort_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[Cohort] DROP CONSTRAINT [Cohort_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[CohortProgram_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[CohortProgram] DROP CONSTRAINT [CohortProgram_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[CommunityProviderLicense_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[CommunityProviderLicense] DROP CONSTRAINT [CommunityProviderLicense_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[CommunityProviderLicense_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[CommunityProviderLicense] DROP CONSTRAINT [CommunityProviderLicense_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[CompetencyObjective_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[CompetencyObjective] DROP CONSTRAINT [CompetencyObjective_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[CompetencyObjective_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[CompetencyObjective] DROP CONSTRAINT [CompetencyObjective_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[Contact_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[Contact] DROP CONSTRAINT [Contact_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[Contact_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[Contact] DROP CONSTRAINT [Contact_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[ContactAddress_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[ContactAddress] DROP CONSTRAINT [ContactAddress_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[ContactAddressPeriod_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[ContactAddressPeriod] DROP CONSTRAINT [ContactAddressPeriod_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[ContactElectronicMail_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[ContactElectronicMail] DROP CONSTRAINT [ContactElectronicMail_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[ContactInternationalAddress_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[ContactInternationalAddress] DROP CONSTRAINT [ContactInternationalAddress_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[ContactLanguage_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[ContactLanguage] DROP CONSTRAINT [ContactLanguage_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[ContactLanguageUse_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[ContactLanguageUse] DROP CONSTRAINT [ContactLanguageUse_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[ContactOtherName_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[ContactOtherName] DROP CONSTRAINT [ContactOtherName_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[ContactPersonalIdentificationDocument_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[ContactPersonalIdentificationDocument] DROP CONSTRAINT [ContactPersonalIdentificationDocument_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[ContactTelephone_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[ContactTelephone] DROP CONSTRAINT [ContactTelephone_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[Course_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[Course] DROP CONSTRAINT [Course_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[Course_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[Course] DROP CONSTRAINT [Course_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[CourseAcademicSubject_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[CourseAcademicSubject] DROP CONSTRAINT [CourseAcademicSubject_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[CourseCompetencyLevel_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[CourseCompetencyLevel] DROP CONSTRAINT [CourseCompetencyLevel_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[CourseIdentificationCode_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[CourseIdentificationCode] DROP CONSTRAINT [CourseIdentificationCode_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[CourseLearningStandard_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[CourseLearningStandard] DROP CONSTRAINT [CourseLearningStandard_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[CourseLevelCharacteristic_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[CourseLevelCharacteristic] DROP CONSTRAINT [CourseLevelCharacteristic_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[CourseOfferedGradeLevel_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[CourseOfferedGradeLevel] DROP CONSTRAINT [CourseOfferedGradeLevel_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[CourseOffering_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[CourseOffering] DROP CONSTRAINT [CourseOffering_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[CourseOffering_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[CourseOffering] DROP CONSTRAINT [CourseOffering_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[CourseOfferingCourseLevelCharacteristic_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[CourseOfferingCourseLevelCharacteristic] DROP CONSTRAINT [CourseOfferingCourseLevelCharacteristic_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[CourseOfferingCurriculumUsed_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[CourseOfferingCurriculumUsed] DROP CONSTRAINT [CourseOfferingCurriculumUsed_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[CourseOfferingOfferedGradeLevel_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[CourseOfferingOfferedGradeLevel] DROP CONSTRAINT [CourseOfferingOfferedGradeLevel_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[CourseTranscript_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[CourseTranscript] DROP CONSTRAINT [CourseTranscript_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[CourseTranscript_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[CourseTranscript] DROP CONSTRAINT [CourseTranscript_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[CourseTranscriptAcademicSubject_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[CourseTranscriptAcademicSubject] DROP CONSTRAINT [CourseTranscriptAcademicSubject_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[CourseTranscriptAlternativeCourseIdentificationCode_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[CourseTranscriptAlternativeCourseIdentificationCode] DROP CONSTRAINT [CourseTranscriptAlternativeCourseIdentificationCode_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[CourseTranscriptCourseProgram_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[CourseTranscriptCourseProgram] DROP CONSTRAINT [CourseTranscriptCourseProgram_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[CourseTranscriptCreditCategory_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[CourseTranscriptCreditCategory] DROP CONSTRAINT [CourseTranscriptCreditCategory_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[CourseTranscriptEarnedAdditionalCredits_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[CourseTranscriptEarnedAdditionalCredits] DROP CONSTRAINT [CourseTranscriptEarnedAdditionalCredits_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[CourseTranscriptPartialCourseTranscriptAwards_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[CourseTranscriptPartialCourseTranscriptAwards] DROP CONSTRAINT [CourseTranscriptPartialCourseTranscriptAwards_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[CourseTranscriptSection_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[CourseTranscriptSection] DROP CONSTRAINT [CourseTranscriptSection_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[Credential_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[Credential] DROP CONSTRAINT [Credential_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[Credential_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[Credential] DROP CONSTRAINT [Credential_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[CredentialAcademicSubject_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[CredentialAcademicSubject] DROP CONSTRAINT [CredentialAcademicSubject_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[CredentialEndorsement_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[CredentialEndorsement] DROP CONSTRAINT [CredentialEndorsement_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[CredentialGradeLevel_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[CredentialGradeLevel] DROP CONSTRAINT [CredentialGradeLevel_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[CrisisEvent_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[CrisisEvent] DROP CONSTRAINT [CrisisEvent_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[CrisisEvent_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[CrisisEvent] DROP CONSTRAINT [CrisisEvent_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[Descriptor_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[Descriptor] DROP CONSTRAINT [Descriptor_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[Descriptor_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[Descriptor] DROP CONSTRAINT [Descriptor_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[DescriptorMapping_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[DescriptorMapping] DROP CONSTRAINT [DescriptorMapping_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[DescriptorMapping_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[DescriptorMapping] DROP CONSTRAINT [DescriptorMapping_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[DescriptorMappingModelEntity_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[DescriptorMappingModelEntity] DROP CONSTRAINT [DescriptorMappingModelEntity_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[DisciplineAction_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[DisciplineAction] DROP CONSTRAINT [DisciplineAction_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[DisciplineAction_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[DisciplineAction] DROP CONSTRAINT [DisciplineAction_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[DisciplineActionDiscipline_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[DisciplineActionDiscipline] DROP CONSTRAINT [DisciplineActionDiscipline_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[DisciplineActionStaff_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[DisciplineActionStaff] DROP CONSTRAINT [DisciplineActionStaff_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[DisciplineActionStudentDisciplineIncidentBehaviorAssociation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[DisciplineActionStudentDisciplineIncidentBehaviorAssociation] DROP CONSTRAINT [DisciplineActionStudentDisciplineIncidentBehaviorAssociation_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[DisciplineIncident_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[DisciplineIncident] DROP CONSTRAINT [DisciplineIncident_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[DisciplineIncident_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[DisciplineIncident] DROP CONSTRAINT [DisciplineIncident_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[DisciplineIncidentBehavior_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[DisciplineIncidentBehavior] DROP CONSTRAINT [DisciplineIncidentBehavior_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[DisciplineIncidentExternalParticipant_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[DisciplineIncidentExternalParticipant] DROP CONSTRAINT [DisciplineIncidentExternalParticipant_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[DisciplineIncidentWeapon_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[DisciplineIncidentWeapon] DROP CONSTRAINT [DisciplineIncidentWeapon_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[EducationContent_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[EducationContent] DROP CONSTRAINT [EducationContent_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[EducationContent_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[EducationContent] DROP CONSTRAINT [EducationContent_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[EducationContentAppropriateGradeLevel_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[EducationContentAppropriateGradeLevel] DROP CONSTRAINT [EducationContentAppropriateGradeLevel_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[EducationContentAppropriateSex_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[EducationContentAppropriateSex] DROP CONSTRAINT [EducationContentAppropriateSex_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[EducationContentAuthor_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[EducationContentAuthor] DROP CONSTRAINT [EducationContentAuthor_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[EducationContentDerivativeSourceEducationContent_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[EducationContentDerivativeSourceEducationContent] DROP CONSTRAINT [EducationContentDerivativeSourceEducationContent_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[EducationContentDerivativeSourceLearningResourceMetadataURI_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[EducationContentDerivativeSourceLearningResourceMetadataURI] DROP CONSTRAINT [EducationContentDerivativeSourceLearningResourceMetadataURI_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[EducationContentDerivativeSourceURI_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[EducationContentDerivativeSourceURI] DROP CONSTRAINT [EducationContentDerivativeSourceURI_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[EducationContentLanguage_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[EducationContentLanguage] DROP CONSTRAINT [EducationContentLanguage_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[EducationOrganization_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[EducationOrganization] DROP CONSTRAINT [EducationOrganization_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[EducationOrganization_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[EducationOrganization] DROP CONSTRAINT [EducationOrganization_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[EducationOrganizationAddress_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[EducationOrganizationAddress] DROP CONSTRAINT [EducationOrganizationAddress_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[EducationOrganizationAddressPeriod_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[EducationOrganizationAddressPeriod] DROP CONSTRAINT [EducationOrganizationAddressPeriod_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[EducationOrganizationCategory_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[EducationOrganizationCategory] DROP CONSTRAINT [EducationOrganizationCategory_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[EducationOrganizationIdentificationCode_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[EducationOrganizationIdentificationCode] DROP CONSTRAINT [EducationOrganizationIdentificationCode_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[EducationOrganizationIndicator_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[EducationOrganizationIndicator] DROP CONSTRAINT [EducationOrganizationIndicator_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[EducationOrganizationIndicatorPeriod_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[EducationOrganizationIndicatorPeriod] DROP CONSTRAINT [EducationOrganizationIndicatorPeriod_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[EducationOrganizationInstitutionTelephone_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[EducationOrganizationInstitutionTelephone] DROP CONSTRAINT [EducationOrganizationInstitutionTelephone_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[EducationOrganizationInternationalAddress_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[EducationOrganizationInternationalAddress] DROP CONSTRAINT [EducationOrganizationInternationalAddress_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[EducationOrganizationInterventionPrescriptionAssociation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[EducationOrganizationInterventionPrescriptionAssociation] DROP CONSTRAINT [EducationOrganizationInterventionPrescriptionAssociation_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[EducationOrganizationInterventionPrescriptionAssociation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[EducationOrganizationInterventionPrescriptionAssociation] DROP CONSTRAINT [EducationOrganizationInterventionPrescriptionAssociation_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[EducationOrganizationNetworkAssociation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[EducationOrganizationNetworkAssociation] DROP CONSTRAINT [EducationOrganizationNetworkAssociation_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[EducationOrganizationNetworkAssociation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[EducationOrganizationNetworkAssociation] DROP CONSTRAINT [EducationOrganizationNetworkAssociation_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[EducationOrganizationPeerAssociation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[EducationOrganizationPeerAssociation] DROP CONSTRAINT [EducationOrganizationPeerAssociation_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[EducationOrganizationPeerAssociation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[EducationOrganizationPeerAssociation] DROP CONSTRAINT [EducationOrganizationPeerAssociation_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[EvaluationRubricDimension_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[EvaluationRubricDimension] DROP CONSTRAINT [EvaluationRubricDimension_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[EvaluationRubricDimension_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[EvaluationRubricDimension] DROP CONSTRAINT [EvaluationRubricDimension_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[FeederSchoolAssociation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[FeederSchoolAssociation] DROP CONSTRAINT [FeederSchoolAssociation_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[FeederSchoolAssociation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[FeederSchoolAssociation] DROP CONSTRAINT [FeederSchoolAssociation_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[FunctionDimension_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[FunctionDimension] DROP CONSTRAINT [FunctionDimension_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[FunctionDimension_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[FunctionDimension] DROP CONSTRAINT [FunctionDimension_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[FunctionDimensionReportingTag_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[FunctionDimensionReportingTag] DROP CONSTRAINT [FunctionDimensionReportingTag_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[FundDimension_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[FundDimension] DROP CONSTRAINT [FundDimension_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[FundDimension_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[FundDimension] DROP CONSTRAINT [FundDimension_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[FundDimensionReportingTag_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[FundDimensionReportingTag] DROP CONSTRAINT [FundDimensionReportingTag_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[GeneralStudentProgramAssociation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[GeneralStudentProgramAssociation] DROP CONSTRAINT [GeneralStudentProgramAssociation_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[GeneralStudentProgramAssociation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[GeneralStudentProgramAssociation] DROP CONSTRAINT [GeneralStudentProgramAssociation_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[GeneralStudentProgramAssociationProgramParticipationStatus_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[GeneralStudentProgramAssociationProgramParticipationStatus] DROP CONSTRAINT [GeneralStudentProgramAssociationProgramParticipationStatus_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[Grade_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[Grade] DROP CONSTRAINT [Grade_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[Grade_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[Grade] DROP CONSTRAINT [Grade_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[GradebookEntry_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[GradebookEntry] DROP CONSTRAINT [GradebookEntry_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[GradebookEntry_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[GradebookEntry] DROP CONSTRAINT [GradebookEntry_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[GradebookEntryLearningStandard_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[GradebookEntryLearningStandard] DROP CONSTRAINT [GradebookEntryLearningStandard_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[GradeLearningStandardGrade_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[GradeLearningStandardGrade] DROP CONSTRAINT [GradeLearningStandardGrade_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[GradingPeriod_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[GradingPeriod] DROP CONSTRAINT [GradingPeriod_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[GradingPeriod_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[GradingPeriod] DROP CONSTRAINT [GradingPeriod_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[GraduationPlan_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[GraduationPlan] DROP CONSTRAINT [GraduationPlan_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[GraduationPlan_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[GraduationPlan] DROP CONSTRAINT [GraduationPlan_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[GraduationPlanCreditsByCourse_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[GraduationPlanCreditsByCourse] DROP CONSTRAINT [GraduationPlanCreditsByCourse_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[GraduationPlanCreditsByCourseCourse_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[GraduationPlanCreditsByCourseCourse] DROP CONSTRAINT [GraduationPlanCreditsByCourseCourse_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[GraduationPlanCreditsByCreditCategory_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[GraduationPlanCreditsByCreditCategory] DROP CONSTRAINT [GraduationPlanCreditsByCreditCategory_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[GraduationPlanCreditsBySubject_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[GraduationPlanCreditsBySubject] DROP CONSTRAINT [GraduationPlanCreditsBySubject_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[GraduationPlanRequiredAssessment_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[GraduationPlanRequiredAssessment] DROP CONSTRAINT [GraduationPlanRequiredAssessment_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[GraduationPlanRequiredAssessmentPerformanceLevel_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[GraduationPlanRequiredAssessmentPerformanceLevel] DROP CONSTRAINT [GraduationPlanRequiredAssessmentPerformanceLevel_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[GraduationPlanRequiredAssessmentScore_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[GraduationPlanRequiredAssessmentScore] DROP CONSTRAINT [GraduationPlanRequiredAssessmentScore_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[Intervention_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[Intervention] DROP CONSTRAINT [Intervention_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[Intervention_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[Intervention] DROP CONSTRAINT [Intervention_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[InterventionAppropriateGradeLevel_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[InterventionAppropriateGradeLevel] DROP CONSTRAINT [InterventionAppropriateGradeLevel_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[InterventionAppropriateSex_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[InterventionAppropriateSex] DROP CONSTRAINT [InterventionAppropriateSex_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[InterventionDiagnosis_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[InterventionDiagnosis] DROP CONSTRAINT [InterventionDiagnosis_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[InterventionEducationContent_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[InterventionEducationContent] DROP CONSTRAINT [InterventionEducationContent_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[InterventionInterventionPrescription_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[InterventionInterventionPrescription] DROP CONSTRAINT [InterventionInterventionPrescription_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[InterventionLearningResourceMetadataURI_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[InterventionLearningResourceMetadataURI] DROP CONSTRAINT [InterventionLearningResourceMetadataURI_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[InterventionMeetingTime_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[InterventionMeetingTime] DROP CONSTRAINT [InterventionMeetingTime_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[InterventionPopulationServed_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[InterventionPopulationServed] DROP CONSTRAINT [InterventionPopulationServed_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[InterventionPrescription_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[InterventionPrescription] DROP CONSTRAINT [InterventionPrescription_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[InterventionPrescription_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[InterventionPrescription] DROP CONSTRAINT [InterventionPrescription_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[InterventionPrescriptionAppropriateGradeLevel_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[InterventionPrescriptionAppropriateGradeLevel] DROP CONSTRAINT [InterventionPrescriptionAppropriateGradeLevel_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[InterventionPrescriptionAppropriateSex_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[InterventionPrescriptionAppropriateSex] DROP CONSTRAINT [InterventionPrescriptionAppropriateSex_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[InterventionPrescriptionDiagnosis_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[InterventionPrescriptionDiagnosis] DROP CONSTRAINT [InterventionPrescriptionDiagnosis_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[InterventionPrescriptionEducationContent_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[InterventionPrescriptionEducationContent] DROP CONSTRAINT [InterventionPrescriptionEducationContent_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[InterventionPrescriptionLearningResourceMetadataURI_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[InterventionPrescriptionLearningResourceMetadataURI] DROP CONSTRAINT [InterventionPrescriptionLearningResourceMetadataURI_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[InterventionPrescriptionPopulationServed_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[InterventionPrescriptionPopulationServed] DROP CONSTRAINT [InterventionPrescriptionPopulationServed_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[InterventionPrescriptionURI_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[InterventionPrescriptionURI] DROP CONSTRAINT [InterventionPrescriptionURI_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[InterventionStaff_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[InterventionStaff] DROP CONSTRAINT [InterventionStaff_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[InterventionStudy_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[InterventionStudy] DROP CONSTRAINT [InterventionStudy_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[InterventionStudy_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[InterventionStudy] DROP CONSTRAINT [InterventionStudy_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[InterventionStudyAppropriateGradeLevel_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[InterventionStudyAppropriateGradeLevel] DROP CONSTRAINT [InterventionStudyAppropriateGradeLevel_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[InterventionStudyAppropriateSex_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[InterventionStudyAppropriateSex] DROP CONSTRAINT [InterventionStudyAppropriateSex_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[InterventionStudyEducationContent_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[InterventionStudyEducationContent] DROP CONSTRAINT [InterventionStudyEducationContent_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[InterventionStudyInterventionEffectiveness_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[InterventionStudyInterventionEffectiveness] DROP CONSTRAINT [InterventionStudyInterventionEffectiveness_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[InterventionStudyLearningResourceMetadataURI_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[InterventionStudyLearningResourceMetadataURI] DROP CONSTRAINT [InterventionStudyLearningResourceMetadataURI_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[InterventionStudyPopulationServed_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[InterventionStudyPopulationServed] DROP CONSTRAINT [InterventionStudyPopulationServed_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[InterventionStudyStateAbbreviation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[InterventionStudyStateAbbreviation] DROP CONSTRAINT [InterventionStudyStateAbbreviation_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[InterventionStudyURI_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[InterventionStudyURI] DROP CONSTRAINT [InterventionStudyURI_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[InterventionURI_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[InterventionURI] DROP CONSTRAINT [InterventionURI_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[LearningStandard_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[LearningStandard] DROP CONSTRAINT [LearningStandard_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[LearningStandard_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[LearningStandard] DROP CONSTRAINT [LearningStandard_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[LearningStandardAcademicSubject_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[LearningStandardAcademicSubject] DROP CONSTRAINT [LearningStandardAcademicSubject_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[LearningStandardContentStandard_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[LearningStandardContentStandard] DROP CONSTRAINT [LearningStandardContentStandard_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[LearningStandardContentStandardAuthor_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[LearningStandardContentStandardAuthor] DROP CONSTRAINT [LearningStandardContentStandardAuthor_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[LearningStandardEquivalenceAssociation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[LearningStandardEquivalenceAssociation] DROP CONSTRAINT [LearningStandardEquivalenceAssociation_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[LearningStandardEquivalenceAssociation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[LearningStandardEquivalenceAssociation] DROP CONSTRAINT [LearningStandardEquivalenceAssociation_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[LearningStandardGradeLevel_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[LearningStandardGradeLevel] DROP CONSTRAINT [LearningStandardGradeLevel_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[LearningStandardIdentificationCode_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[LearningStandardIdentificationCode] DROP CONSTRAINT [LearningStandardIdentificationCode_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[LocalAccount_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[LocalAccount] DROP CONSTRAINT [LocalAccount_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[LocalAccount_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[LocalAccount] DROP CONSTRAINT [LocalAccount_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[LocalAccountReportingTag_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[LocalAccountReportingTag] DROP CONSTRAINT [LocalAccountReportingTag_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[LocalActual_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[LocalActual] DROP CONSTRAINT [LocalActual_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[LocalActual_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[LocalActual] DROP CONSTRAINT [LocalActual_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[LocalBudget_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[LocalBudget] DROP CONSTRAINT [LocalBudget_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[LocalBudget_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[LocalBudget] DROP CONSTRAINT [LocalBudget_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[LocalContractedStaff_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[LocalContractedStaff] DROP CONSTRAINT [LocalContractedStaff_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[LocalContractedStaff_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[LocalContractedStaff] DROP CONSTRAINT [LocalContractedStaff_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[LocalEducationAgencyAccountability_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[LocalEducationAgencyAccountability] DROP CONSTRAINT [LocalEducationAgencyAccountability_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[LocalEducationAgencyFederalFunds_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[LocalEducationAgencyFederalFunds] DROP CONSTRAINT [LocalEducationAgencyFederalFunds_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[LocalEncumbrance_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[LocalEncumbrance] DROP CONSTRAINT [LocalEncumbrance_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[LocalEncumbrance_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[LocalEncumbrance] DROP CONSTRAINT [LocalEncumbrance_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[LocalPayroll_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[LocalPayroll] DROP CONSTRAINT [LocalPayroll_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[LocalPayroll_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[LocalPayroll] DROP CONSTRAINT [LocalPayroll_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[Location_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[Location] DROP CONSTRAINT [Location_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[Location_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[Location] DROP CONSTRAINT [Location_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[ObjectDimension_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[ObjectDimension] DROP CONSTRAINT [ObjectDimension_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[ObjectDimension_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[ObjectDimension] DROP CONSTRAINT [ObjectDimension_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[ObjectDimensionReportingTag_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[ObjectDimensionReportingTag] DROP CONSTRAINT [ObjectDimensionReportingTag_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[ObjectiveAssessment_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[ObjectiveAssessment] DROP CONSTRAINT [ObjectiveAssessment_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[ObjectiveAssessment_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[ObjectiveAssessment] DROP CONSTRAINT [ObjectiveAssessment_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[ObjectiveAssessmentAssessmentItem_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[ObjectiveAssessmentAssessmentItem] DROP CONSTRAINT [ObjectiveAssessmentAssessmentItem_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[ObjectiveAssessmentLearningStandard_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[ObjectiveAssessmentLearningStandard] DROP CONSTRAINT [ObjectiveAssessmentLearningStandard_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[ObjectiveAssessmentPerformanceLevel_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[ObjectiveAssessmentPerformanceLevel] DROP CONSTRAINT [ObjectiveAssessmentPerformanceLevel_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[ObjectiveAssessmentScore_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[ObjectiveAssessmentScore] DROP CONSTRAINT [ObjectiveAssessmentScore_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[OpenStaffPosition_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[OpenStaffPosition] DROP CONSTRAINT [OpenStaffPosition_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[OpenStaffPosition_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[OpenStaffPosition] DROP CONSTRAINT [OpenStaffPosition_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[OpenStaffPositionAcademicSubject_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[OpenStaffPositionAcademicSubject] DROP CONSTRAINT [OpenStaffPositionAcademicSubject_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[OpenStaffPositionInstructionalGradeLevel_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[OpenStaffPositionInstructionalGradeLevel] DROP CONSTRAINT [OpenStaffPositionInstructionalGradeLevel_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[OperationalUnitDimension_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[OperationalUnitDimension] DROP CONSTRAINT [OperationalUnitDimension_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[OperationalUnitDimension_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[OperationalUnitDimension] DROP CONSTRAINT [OperationalUnitDimension_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[OperationalUnitDimensionReportingTag_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[OperationalUnitDimensionReportingTag] DROP CONSTRAINT [OperationalUnitDimensionReportingTag_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[Person_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[Person] DROP CONSTRAINT [Person_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[Person_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[Person] DROP CONSTRAINT [Person_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[PostSecondaryEvent_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[PostSecondaryEvent] DROP CONSTRAINT [PostSecondaryEvent_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[PostSecondaryEvent_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[PostSecondaryEvent] DROP CONSTRAINT [PostSecondaryEvent_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[PostSecondaryInstitutionMediumOfInstruction_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[PostSecondaryInstitutionMediumOfInstruction] DROP CONSTRAINT [PostSecondaryInstitutionMediumOfInstruction_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[Program_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[Program] DROP CONSTRAINT [Program_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[Program_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[Program] DROP CONSTRAINT [Program_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[ProgramCharacteristic_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[ProgramCharacteristic] DROP CONSTRAINT [ProgramCharacteristic_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[ProgramDimension_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[ProgramDimension] DROP CONSTRAINT [ProgramDimension_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[ProgramDimension_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[ProgramDimension] DROP CONSTRAINT [ProgramDimension_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[ProgramDimensionReportingTag_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[ProgramDimensionReportingTag] DROP CONSTRAINT [ProgramDimensionReportingTag_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[ProgramEvaluation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[ProgramEvaluation] DROP CONSTRAINT [ProgramEvaluation_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[ProgramEvaluation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[ProgramEvaluation] DROP CONSTRAINT [ProgramEvaluation_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[ProgramEvaluationElement_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[ProgramEvaluationElement] DROP CONSTRAINT [ProgramEvaluationElement_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[ProgramEvaluationElement_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[ProgramEvaluationElement] DROP CONSTRAINT [ProgramEvaluationElement_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[ProgramEvaluationElementProgramEvaluationLevel_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[ProgramEvaluationElementProgramEvaluationLevel] DROP CONSTRAINT [ProgramEvaluationElementProgramEvaluationLevel_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[ProgramEvaluationLevel_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[ProgramEvaluationLevel] DROP CONSTRAINT [ProgramEvaluationLevel_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[ProgramEvaluationObjective_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[ProgramEvaluationObjective] DROP CONSTRAINT [ProgramEvaluationObjective_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[ProgramEvaluationObjective_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[ProgramEvaluationObjective] DROP CONSTRAINT [ProgramEvaluationObjective_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[ProgramEvaluationObjectiveProgramEvaluationLevel_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[ProgramEvaluationObjectiveProgramEvaluationLevel] DROP CONSTRAINT [ProgramEvaluationObjectiveProgramEvaluationLevel_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[ProgramLearningStandard_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[ProgramLearningStandard] DROP CONSTRAINT [ProgramLearningStandard_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[ProgramSponsor_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[ProgramSponsor] DROP CONSTRAINT [ProgramSponsor_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[ProjectDimension_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[ProjectDimension] DROP CONSTRAINT [ProjectDimension_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[ProjectDimension_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[ProjectDimension] DROP CONSTRAINT [ProjectDimension_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[ProjectDimensionReportingTag_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[ProjectDimensionReportingTag] DROP CONSTRAINT [ProjectDimensionReportingTag_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[ReportCard_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[ReportCard] DROP CONSTRAINT [ReportCard_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[ReportCard_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[ReportCard] DROP CONSTRAINT [ReportCard_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[ReportCardGrade_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[ReportCardGrade] DROP CONSTRAINT [ReportCardGrade_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[ReportCardGradePointAverage_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[ReportCardGradePointAverage] DROP CONSTRAINT [ReportCardGradePointAverage_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[ReportCardStudentCompetencyObjective_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[ReportCardStudentCompetencyObjective] DROP CONSTRAINT [ReportCardStudentCompetencyObjective_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[RestraintEventProgram_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[RestraintEventProgram] DROP CONSTRAINT [RestraintEventProgram_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[RestraintEventReason_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[RestraintEventReason] DROP CONSTRAINT [RestraintEventReason_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[SchoolCategory_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[SchoolCategory] DROP CONSTRAINT [SchoolCategory_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[SchoolGradeLevel_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[SchoolGradeLevel] DROP CONSTRAINT [SchoolGradeLevel_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[SchoolYearType_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[SchoolYearType] DROP CONSTRAINT [SchoolYearType_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[SchoolYearType_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[SchoolYearType] DROP CONSTRAINT [SchoolYearType_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[Section_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[Section] DROP CONSTRAINT [Section_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[Section_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[Section] DROP CONSTRAINT [Section_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[SectionAttendanceTakenEvent_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[SectionAttendanceTakenEvent] DROP CONSTRAINT [SectionAttendanceTakenEvent_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[SectionAttendanceTakenEvent_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[SectionAttendanceTakenEvent] DROP CONSTRAINT [SectionAttendanceTakenEvent_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[SectionCharacteristic_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[SectionCharacteristic] DROP CONSTRAINT [SectionCharacteristic_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[SectionClassPeriod_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[SectionClassPeriod] DROP CONSTRAINT [SectionClassPeriod_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[SectionCourseLevelCharacteristic_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[SectionCourseLevelCharacteristic] DROP CONSTRAINT [SectionCourseLevelCharacteristic_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[SectionOfferedGradeLevel_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[SectionOfferedGradeLevel] DROP CONSTRAINT [SectionOfferedGradeLevel_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[SectionProgram_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[SectionProgram] DROP CONSTRAINT [SectionProgram_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[Session_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[Session] DROP CONSTRAINT [Session_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[Session_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[Session] DROP CONSTRAINT [Session_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[SessionAcademicWeek_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[SessionAcademicWeek] DROP CONSTRAINT [SessionAcademicWeek_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[SessionGradingPeriod_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[SessionGradingPeriod] DROP CONSTRAINT [SessionGradingPeriod_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[SourceDimension_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[SourceDimension] DROP CONSTRAINT [SourceDimension_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[SourceDimension_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[SourceDimension] DROP CONSTRAINT [SourceDimension_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[SourceDimensionReportingTag_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[SourceDimensionReportingTag] DROP CONSTRAINT [SourceDimensionReportingTag_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[Staff_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[Staff] DROP CONSTRAINT [Staff_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[Staff_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[Staff] DROP CONSTRAINT [Staff_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StaffAbsenceEvent_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StaffAbsenceEvent] DROP CONSTRAINT [StaffAbsenceEvent_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StaffAbsenceEvent_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[StaffAbsenceEvent] DROP CONSTRAINT [StaffAbsenceEvent_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StaffAddress_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StaffAddress] DROP CONSTRAINT [StaffAddress_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StaffAddressPeriod_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StaffAddressPeriod] DROP CONSTRAINT [StaffAddressPeriod_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StaffAncestryEthnicOrigin_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StaffAncestryEthnicOrigin] DROP CONSTRAINT [StaffAncestryEthnicOrigin_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StaffCohortAssociation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StaffCohortAssociation] DROP CONSTRAINT [StaffCohortAssociation_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StaffCohortAssociation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[StaffCohortAssociation] DROP CONSTRAINT [StaffCohortAssociation_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StaffCredential_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StaffCredential] DROP CONSTRAINT [StaffCredential_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StaffDisciplineIncidentAssociation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StaffDisciplineIncidentAssociation] DROP CONSTRAINT [StaffDisciplineIncidentAssociation_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StaffDisciplineIncidentAssociation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[StaffDisciplineIncidentAssociation] DROP CONSTRAINT [StaffDisciplineIncidentAssociation_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StaffDisciplineIncidentAssociationDisciplineIncidentParticipationCode_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StaffDisciplineIncidentAssociationDisciplineIncidentParticipationCode] DROP CONSTRAINT [StaffDisciplineIncidentAssociationDisciplineIncidentParticipationCode_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StaffEducationOrganizationAssignmentAssociation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StaffEducationOrganizationAssignmentAssociation] DROP CONSTRAINT [StaffEducationOrganizationAssignmentAssociation_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StaffEducationOrganizationAssignmentAssociation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[StaffEducationOrganizationAssignmentAssociation] DROP CONSTRAINT [StaffEducationOrganizationAssignmentAssociation_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StaffEducationOrganizationContactAssociation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StaffEducationOrganizationContactAssociation] DROP CONSTRAINT [StaffEducationOrganizationContactAssociation_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StaffEducationOrganizationContactAssociation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[StaffEducationOrganizationContactAssociation] DROP CONSTRAINT [StaffEducationOrganizationContactAssociation_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StaffEducationOrganizationContactAssociationAddress_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StaffEducationOrganizationContactAssociationAddress] DROP CONSTRAINT [StaffEducationOrganizationContactAssociationAddress_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StaffEducationOrganizationContactAssociationAddressPeriod_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StaffEducationOrganizationContactAssociationAddressPeriod] DROP CONSTRAINT [StaffEducationOrganizationContactAssociationAddressPeriod_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StaffEducationOrganizationContactAssociationTelephone_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StaffEducationOrganizationContactAssociationTelephone] DROP CONSTRAINT [StaffEducationOrganizationContactAssociationTelephone_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StaffEducationOrganizationEmploymentAssociation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StaffEducationOrganizationEmploymentAssociation] DROP CONSTRAINT [StaffEducationOrganizationEmploymentAssociation_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StaffEducationOrganizationEmploymentAssociation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[StaffEducationOrganizationEmploymentAssociation] DROP CONSTRAINT [StaffEducationOrganizationEmploymentAssociation_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StaffElectronicMail_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StaffElectronicMail] DROP CONSTRAINT [StaffElectronicMail_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StaffIdentificationCode_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StaffIdentificationCode] DROP CONSTRAINT [StaffIdentificationCode_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StaffIdentificationDocument_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StaffIdentificationDocument] DROP CONSTRAINT [StaffIdentificationDocument_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StaffInternationalAddress_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StaffInternationalAddress] DROP CONSTRAINT [StaffInternationalAddress_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StaffLanguage_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StaffLanguage] DROP CONSTRAINT [StaffLanguage_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StaffLanguageUse_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StaffLanguageUse] DROP CONSTRAINT [StaffLanguageUse_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StaffLeave_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StaffLeave] DROP CONSTRAINT [StaffLeave_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StaffLeave_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[StaffLeave] DROP CONSTRAINT [StaffLeave_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StaffOtherName_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StaffOtherName] DROP CONSTRAINT [StaffOtherName_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StaffPersonalIdentificationDocument_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StaffPersonalIdentificationDocument] DROP CONSTRAINT [StaffPersonalIdentificationDocument_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StaffProgramAssociation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StaffProgramAssociation] DROP CONSTRAINT [StaffProgramAssociation_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StaffProgramAssociation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[StaffProgramAssociation] DROP CONSTRAINT [StaffProgramAssociation_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StaffRace_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StaffRace] DROP CONSTRAINT [StaffRace_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StaffRecognition_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StaffRecognition] DROP CONSTRAINT [StaffRecognition_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StaffSchoolAssociation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StaffSchoolAssociation] DROP CONSTRAINT [StaffSchoolAssociation_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StaffSchoolAssociation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[StaffSchoolAssociation] DROP CONSTRAINT [StaffSchoolAssociation_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StaffSchoolAssociationAcademicSubject_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StaffSchoolAssociationAcademicSubject] DROP CONSTRAINT [StaffSchoolAssociationAcademicSubject_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StaffSchoolAssociationGradeLevel_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StaffSchoolAssociationGradeLevel] DROP CONSTRAINT [StaffSchoolAssociationGradeLevel_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StaffSectionAssociation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StaffSectionAssociation] DROP CONSTRAINT [StaffSectionAssociation_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StaffSectionAssociation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[StaffSectionAssociation] DROP CONSTRAINT [StaffSectionAssociation_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StaffTelephone_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StaffTelephone] DROP CONSTRAINT [StaffTelephone_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StaffTribalAffiliation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StaffTribalAffiliation] DROP CONSTRAINT [StaffTribalAffiliation_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StaffVisa_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StaffVisa] DROP CONSTRAINT [StaffVisa_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StateEducationAgencyAccountability_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StateEducationAgencyAccountability] DROP CONSTRAINT [StateEducationAgencyAccountability_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StateEducationAgencyFederalFunds_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StateEducationAgencyFederalFunds] DROP CONSTRAINT [StateEducationAgencyFederalFunds_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[Student_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[Student] DROP CONSTRAINT [Student_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[Student_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[Student] DROP CONSTRAINT [Student_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentAcademicRecord_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentAcademicRecord] DROP CONSTRAINT [StudentAcademicRecord_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentAcademicRecord_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[StudentAcademicRecord] DROP CONSTRAINT [StudentAcademicRecord_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentAcademicRecordAcademicHonor_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentAcademicRecordAcademicHonor] DROP CONSTRAINT [StudentAcademicRecordAcademicHonor_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentAcademicRecordClassRanking_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentAcademicRecordClassRanking] DROP CONSTRAINT [StudentAcademicRecordClassRanking_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentAcademicRecordDiploma_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentAcademicRecordDiploma] DROP CONSTRAINT [StudentAcademicRecordDiploma_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentAcademicRecordGradePointAverage_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentAcademicRecordGradePointAverage] DROP CONSTRAINT [StudentAcademicRecordGradePointAverage_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentAcademicRecordRecognition_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentAcademicRecordRecognition] DROP CONSTRAINT [StudentAcademicRecordRecognition_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentAcademicRecordReportCard_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentAcademicRecordReportCard] DROP CONSTRAINT [StudentAcademicRecordReportCard_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentAssessment_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentAssessment] DROP CONSTRAINT [StudentAssessment_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentAssessment_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[StudentAssessment] DROP CONSTRAINT [StudentAssessment_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentAssessmentAccommodation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentAssessmentAccommodation] DROP CONSTRAINT [StudentAssessmentAccommodation_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentAssessmentEducationOrganizationAssociation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentAssessmentEducationOrganizationAssociation] DROP CONSTRAINT [StudentAssessmentEducationOrganizationAssociation_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentAssessmentEducationOrganizationAssociation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[StudentAssessmentEducationOrganizationAssociation] DROP CONSTRAINT [StudentAssessmentEducationOrganizationAssociation_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentAssessmentItem_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentAssessmentItem] DROP CONSTRAINT [StudentAssessmentItem_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentAssessmentPerformanceLevel_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentAssessmentPerformanceLevel] DROP CONSTRAINT [StudentAssessmentPerformanceLevel_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentAssessmentPeriod_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentAssessmentPeriod] DROP CONSTRAINT [StudentAssessmentPeriod_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentAssessmentScoreResult_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentAssessmentScoreResult] DROP CONSTRAINT [StudentAssessmentScoreResult_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentAssessmentStudentObjectiveAssessment_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentAssessmentStudentObjectiveAssessment] DROP CONSTRAINT [StudentAssessmentStudentObjectiveAssessment_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentAssessmentStudentObjectiveAssessmentPerformanceLevel_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentAssessmentStudentObjectiveAssessmentPerformanceLevel] DROP CONSTRAINT [StudentAssessmentStudentObjectiveAssessmentPerformanceLevel_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentAssessmentStudentObjectiveAssessmentScoreResult_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentAssessmentStudentObjectiveAssessmentScoreResult] DROP CONSTRAINT [StudentAssessmentStudentObjectiveAssessmentScoreResult_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentCohortAssociation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentCohortAssociation] DROP CONSTRAINT [StudentCohortAssociation_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentCohortAssociation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[StudentCohortAssociation] DROP CONSTRAINT [StudentCohortAssociation_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentCohortAssociationSection_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentCohortAssociationSection] DROP CONSTRAINT [StudentCohortAssociationSection_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentCompetencyObjective_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentCompetencyObjective] DROP CONSTRAINT [StudentCompetencyObjective_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentCompetencyObjective_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[StudentCompetencyObjective] DROP CONSTRAINT [StudentCompetencyObjective_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentCompetencyObjectiveGeneralStudentProgramAssociation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentCompetencyObjectiveGeneralStudentProgramAssociation] DROP CONSTRAINT [StudentCompetencyObjectiveGeneralStudentProgramAssociation_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentCompetencyObjectiveStudentSectionAssociation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentCompetencyObjectiveStudentSectionAssociation] DROP CONSTRAINT [StudentCompetencyObjectiveStudentSectionAssociation_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentContactAssociation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentContactAssociation] DROP CONSTRAINT [StudentContactAssociation_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentContactAssociation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[StudentContactAssociation] DROP CONSTRAINT [StudentContactAssociation_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentCTEProgramAssociationCTEProgramService_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentCTEProgramAssociationCTEProgramService] DROP CONSTRAINT [StudentCTEProgramAssociationCTEProgramService_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentDisciplineIncidentBehaviorAssociation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentDisciplineIncidentBehaviorAssociation] DROP CONSTRAINT [StudentDisciplineIncidentBehaviorAssociation_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentDisciplineIncidentBehaviorAssociation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[StudentDisciplineIncidentBehaviorAssociation] DROP CONSTRAINT [StudentDisciplineIncidentBehaviorAssociation_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentDisciplineIncidentBehaviorAssociationDisciplineIncidentParticipationCode_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentDisciplineIncidentBehaviorAssociationDisciplineIncidentParticipationCode] DROP CONSTRAINT [StudentDisciplineIncidentBehaviorAssociationDisciplineIncidentParticipationCode_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentDisciplineIncidentNonOffenderAssociation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentDisciplineIncidentNonOffenderAssociation] DROP CONSTRAINT [StudentDisciplineIncidentNonOffenderAssociation_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentDisciplineIncidentNonOffenderAssociation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[StudentDisciplineIncidentNonOffenderAssociation] DROP CONSTRAINT [StudentDisciplineIncidentNonOffenderAssociation_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentDisciplineIncidentNonOffenderAssociationDisciplineIncidentParticipationCode_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentDisciplineIncidentNonOffenderAssociationDisciplineIncidentParticipationCode] DROP CONSTRAINT [StudentDisciplineIncidentNonOffenderAssociationDisciplineIncidentParticipationCode_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentEducationOrganizationAssociation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociation] DROP CONSTRAINT [StudentEducationOrganizationAssociation_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentEducationOrganizationAssociation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociation] DROP CONSTRAINT [StudentEducationOrganizationAssociation_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentEducationOrganizationAssociationAddress_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationAddress] DROP CONSTRAINT [StudentEducationOrganizationAssociationAddress_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentEducationOrganizationAssociationAddressPeriod_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationAddressPeriod] DROP CONSTRAINT [StudentEducationOrganizationAssociationAddressPeriod_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentEducationOrganizationAssociationAncestryEthnicOrigin_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationAncestryEthnicOrigin] DROP CONSTRAINT [StudentEducationOrganizationAssociationAncestryEthnicOrigin_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentEducationOrganizationAssociationCohortYear_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationCohortYear] DROP CONSTRAINT [StudentEducationOrganizationAssociationCohortYear_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentEducationOrganizationAssociationDisability_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationDisability] DROP CONSTRAINT [StudentEducationOrganizationAssociationDisability_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentEducationOrganizationAssociationDisabilityDesignation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationDisabilityDesignation] DROP CONSTRAINT [StudentEducationOrganizationAssociationDisabilityDesignation_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentEducationOrganizationAssociationDisplacedStudent_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationDisplacedStudent] DROP CONSTRAINT [StudentEducationOrganizationAssociationDisplacedStudent_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentEducationOrganizationAssociationElectronicMail_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationElectronicMail] DROP CONSTRAINT [StudentEducationOrganizationAssociationElectronicMail_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentEducationOrganizationAssociationInternationalAddress_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationInternationalAddress] DROP CONSTRAINT [StudentEducationOrganizationAssociationInternationalAddress_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentEducationOrganizationAssociationLanguage_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationLanguage] DROP CONSTRAINT [StudentEducationOrganizationAssociationLanguage_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentEducationOrganizationAssociationLanguageUse_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationLanguageUse] DROP CONSTRAINT [StudentEducationOrganizationAssociationLanguageUse_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentEducationOrganizationAssociationRace_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationRace] DROP CONSTRAINT [StudentEducationOrganizationAssociationRace_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentEducationOrganizationAssociationStudentCharacteristic_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationStudentCharacteristic] DROP CONSTRAINT [StudentEducationOrganizationAssociationStudentCharacteristic_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentEducationOrganizationAssociationStudentCharacteristicPeriod_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationStudentCharacteristicPeriod] DROP CONSTRAINT [StudentEducationOrganizationAssociationStudentCharacteristicPeriod_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentEducationOrganizationAssociationStudentIdentificationCode_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationStudentIdentificationCode] DROP CONSTRAINT [StudentEducationOrganizationAssociationStudentIdentificationCode_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentEducationOrganizationAssociationStudentIndicator_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationStudentIndicator] DROP CONSTRAINT [StudentEducationOrganizationAssociationStudentIndicator_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentEducationOrganizationAssociationStudentIndicatorPeriod_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationStudentIndicatorPeriod] DROP CONSTRAINT [StudentEducationOrganizationAssociationStudentIndicatorPeriod_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentEducationOrganizationAssociationTelephone_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationTelephone] DROP CONSTRAINT [StudentEducationOrganizationAssociationTelephone_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentEducationOrganizationAssociationTribalAffiliation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationTribalAffiliation] DROP CONSTRAINT [StudentEducationOrganizationAssociationTribalAffiliation_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentEducationOrganizationResponsibilityAssociation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentEducationOrganizationResponsibilityAssociation] DROP CONSTRAINT [StudentEducationOrganizationResponsibilityAssociation_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentEducationOrganizationResponsibilityAssociation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[StudentEducationOrganizationResponsibilityAssociation] DROP CONSTRAINT [StudentEducationOrganizationResponsibilityAssociation_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentGradebookEntry_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentGradebookEntry] DROP CONSTRAINT [StudentGradebookEntry_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentGradebookEntry_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[StudentGradebookEntry] DROP CONSTRAINT [StudentGradebookEntry_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentHealth_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentHealth] DROP CONSTRAINT [StudentHealth_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentHealth_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[StudentHealth] DROP CONSTRAINT [StudentHealth_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentHealthAdditionalImmunization_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentHealthAdditionalImmunization] DROP CONSTRAINT [StudentHealthAdditionalImmunization_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentHealthAdditionalImmunizationDate_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentHealthAdditionalImmunizationDate] DROP CONSTRAINT [StudentHealthAdditionalImmunizationDate_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentHealthRequiredImmunization_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentHealthRequiredImmunization] DROP CONSTRAINT [StudentHealthRequiredImmunization_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentHealthRequiredImmunizationDate_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentHealthRequiredImmunizationDate] DROP CONSTRAINT [StudentHealthRequiredImmunizationDate_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentHomelessProgramAssociationHomelessProgramService_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentHomelessProgramAssociationHomelessProgramService] DROP CONSTRAINT [StudentHomelessProgramAssociationHomelessProgramService_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentIdentificationDocument_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentIdentificationDocument] DROP CONSTRAINT [StudentIdentificationDocument_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentInterventionAssociation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentInterventionAssociation] DROP CONSTRAINT [StudentInterventionAssociation_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentInterventionAssociation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[StudentInterventionAssociation] DROP CONSTRAINT [StudentInterventionAssociation_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentInterventionAssociationInterventionEffectiveness_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentInterventionAssociationInterventionEffectiveness] DROP CONSTRAINT [StudentInterventionAssociationInterventionEffectiveness_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentInterventionAttendanceEvent_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentInterventionAttendanceEvent] DROP CONSTRAINT [StudentInterventionAttendanceEvent_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentInterventionAttendanceEvent_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[StudentInterventionAttendanceEvent] DROP CONSTRAINT [StudentInterventionAttendanceEvent_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentLanguageInstructionProgramAssociationEnglishLanguageProficiencyAssessment_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentLanguageInstructionProgramAssociationEnglishLanguageProficiencyAssessment] DROP CONSTRAINT [StudentLanguageInstructionProgramAssociationEnglishLanguageProficiencyAssessment_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentLanguageInstructionProgramAssociationLanguageInstructionProgramService_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentLanguageInstructionProgramAssociationLanguageInstructionProgramService] DROP CONSTRAINT [StudentLanguageInstructionProgramAssociationLanguageInstructionProgramService_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentMigrantEducationProgramAssociationMigrantEducationProgramService_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentMigrantEducationProgramAssociationMigrantEducationProgramService] DROP CONSTRAINT [StudentMigrantEducationProgramAssociationMigrantEducationProgramService_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentNeglectedOrDelinquentProgramAssociationNeglectedOrDelinquentProgramService_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentNeglectedOrDelinquentProgramAssociationNeglectedOrDelinquentProgramService] DROP CONSTRAINT [StudentNeglectedOrDelinquentProgramAssociationNeglectedOrDelinquentProgramService_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentOtherName_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentOtherName] DROP CONSTRAINT [StudentOtherName_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentPersonalIdentificationDocument_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentPersonalIdentificationDocument] DROP CONSTRAINT [StudentPersonalIdentificationDocument_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentProgramAssociationService_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentProgramAssociationService] DROP CONSTRAINT [StudentProgramAssociationService_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentProgramAttendanceEvent_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentProgramAttendanceEvent] DROP CONSTRAINT [StudentProgramAttendanceEvent_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentProgramAttendanceEvent_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[StudentProgramAttendanceEvent] DROP CONSTRAINT [StudentProgramAttendanceEvent_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentProgramEvaluation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentProgramEvaluation] DROP CONSTRAINT [StudentProgramEvaluation_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentProgramEvaluation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[StudentProgramEvaluation] DROP CONSTRAINT [StudentProgramEvaluation_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentProgramEvaluationExternalEvaluator_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentProgramEvaluationExternalEvaluator] DROP CONSTRAINT [StudentProgramEvaluationExternalEvaluator_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentProgramEvaluationStudentEvaluationElement_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentProgramEvaluationStudentEvaluationElement] DROP CONSTRAINT [StudentProgramEvaluationStudentEvaluationElement_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentProgramEvaluationStudentEvaluationObjective_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentProgramEvaluationStudentEvaluationObjective] DROP CONSTRAINT [StudentProgramEvaluationStudentEvaluationObjective_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentSchoolAssociation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentSchoolAssociation] DROP CONSTRAINT [StudentSchoolAssociation_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentSchoolAssociation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[StudentSchoolAssociation] DROP CONSTRAINT [StudentSchoolAssociation_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentSchoolAssociationAlternativeGraduationPlan_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentSchoolAssociationAlternativeGraduationPlan] DROP CONSTRAINT [StudentSchoolAssociationAlternativeGraduationPlan_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentSchoolAssociationEducationPlan_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentSchoolAssociationEducationPlan] DROP CONSTRAINT [StudentSchoolAssociationEducationPlan_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentSchoolAttendanceEvent_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentSchoolAttendanceEvent] DROP CONSTRAINT [StudentSchoolAttendanceEvent_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentSchoolAttendanceEvent_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[StudentSchoolAttendanceEvent] DROP CONSTRAINT [StudentSchoolAttendanceEvent_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentSchoolFoodServiceProgramAssociationSchoolFoodServiceProgramService_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentSchoolFoodServiceProgramAssociationSchoolFoodServiceProgramService] DROP CONSTRAINT [StudentSchoolFoodServiceProgramAssociationSchoolFoodServiceProgramService_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentSectionAssociationProgram_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentSectionAssociationProgram] DROP CONSTRAINT [StudentSectionAssociationProgram_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentSectionAttendanceEvent_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentSectionAttendanceEvent] DROP CONSTRAINT [StudentSectionAttendanceEvent_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentSectionAttendanceEvent_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[StudentSectionAttendanceEvent] DROP CONSTRAINT [StudentSectionAttendanceEvent_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentSectionAttendanceEventClassPeriod_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentSectionAttendanceEventClassPeriod] DROP CONSTRAINT [StudentSectionAttendanceEventClassPeriod_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentSpecialEducationProgramAssociationDisability_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentSpecialEducationProgramAssociationDisability] DROP CONSTRAINT [StudentSpecialEducationProgramAssociationDisability_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentSpecialEducationProgramAssociationDisabilityDesignation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentSpecialEducationProgramAssociationDisabilityDesignation] DROP CONSTRAINT [StudentSpecialEducationProgramAssociationDisabilityDesignation_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentSpecialEducationProgramAssociationServiceProvider_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentSpecialEducationProgramAssociationServiceProvider] DROP CONSTRAINT [StudentSpecialEducationProgramAssociationServiceProvider_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentSpecialEducationProgramAssociationSpecialEducationProgramService_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentSpecialEducationProgramAssociationSpecialEducationProgramService] DROP CONSTRAINT [StudentSpecialEducationProgramAssociationSpecialEducationProgramService_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider] DROP CONSTRAINT [StudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentTitleIPartAProgramAssociationTitleIPartAProgramService_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentTitleIPartAProgramAssociationTitleIPartAProgramService] DROP CONSTRAINT [StudentTitleIPartAProgramAssociationTitleIPartAProgramService_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentTransportation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentTransportation] DROP CONSTRAINT [StudentTransportation_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentTransportation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[StudentTransportation] DROP CONSTRAINT [StudentTransportation_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentTransportationStudentBusDetails_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentTransportationStudentBusDetails] DROP CONSTRAINT [StudentTransportationStudentBusDetails_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentTransportationStudentBusDetailsTravelDayofWeek_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentTransportationStudentBusDetailsTravelDayofWeek] DROP CONSTRAINT [StudentTransportationStudentBusDetailsTravelDayofWeek_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentTransportationStudentBusDetailsTravelDirection_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentTransportationStudentBusDetailsTravelDirection] DROP CONSTRAINT [StudentTransportationStudentBusDetailsTravelDirection_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[StudentVisa_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentVisa] DROP CONSTRAINT [StudentVisa_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[Survey_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[Survey] DROP CONSTRAINT [Survey_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[Survey_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[Survey] DROP CONSTRAINT [Survey_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[SurveyCourseAssociation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[SurveyCourseAssociation] DROP CONSTRAINT [SurveyCourseAssociation_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[SurveyCourseAssociation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[SurveyCourseAssociation] DROP CONSTRAINT [SurveyCourseAssociation_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[SurveyProgramAssociation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[SurveyProgramAssociation] DROP CONSTRAINT [SurveyProgramAssociation_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[SurveyProgramAssociation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[SurveyProgramAssociation] DROP CONSTRAINT [SurveyProgramAssociation_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[SurveyQuestion_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[SurveyQuestion] DROP CONSTRAINT [SurveyQuestion_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[SurveyQuestion_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[SurveyQuestion] DROP CONSTRAINT [SurveyQuestion_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[SurveyQuestionMatrix_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[SurveyQuestionMatrix] DROP CONSTRAINT [SurveyQuestionMatrix_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[SurveyQuestionResponse_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[SurveyQuestionResponse] DROP CONSTRAINT [SurveyQuestionResponse_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[SurveyQuestionResponse_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[SurveyQuestionResponse] DROP CONSTRAINT [SurveyQuestionResponse_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[SurveyQuestionResponseChoice_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[SurveyQuestionResponseChoice] DROP CONSTRAINT [SurveyQuestionResponseChoice_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[SurveyQuestionResponseSurveyQuestionMatrixElementResponse_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[SurveyQuestionResponseSurveyQuestionMatrixElementResponse] DROP CONSTRAINT [SurveyQuestionResponseSurveyQuestionMatrixElementResponse_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[SurveyQuestionResponseValue_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[SurveyQuestionResponseValue] DROP CONSTRAINT [SurveyQuestionResponseValue_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[SurveyResponse_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[SurveyResponse] DROP CONSTRAINT [SurveyResponse_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[SurveyResponse_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[SurveyResponse] DROP CONSTRAINT [SurveyResponse_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[SurveyResponseEducationOrganizationTargetAssociation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[SurveyResponseEducationOrganizationTargetAssociation] DROP CONSTRAINT [SurveyResponseEducationOrganizationTargetAssociation_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[SurveyResponseEducationOrganizationTargetAssociation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[SurveyResponseEducationOrganizationTargetAssociation] DROP CONSTRAINT [SurveyResponseEducationOrganizationTargetAssociation_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[SurveyResponseStaffTargetAssociation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[SurveyResponseStaffTargetAssociation] DROP CONSTRAINT [SurveyResponseStaffTargetAssociation_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[SurveyResponseStaffTargetAssociation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[SurveyResponseStaffTargetAssociation] DROP CONSTRAINT [SurveyResponseStaffTargetAssociation_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[SurveyResponseSurveyLevel_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[SurveyResponseSurveyLevel] DROP CONSTRAINT [SurveyResponseSurveyLevel_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[SurveySection_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[SurveySection] DROP CONSTRAINT [SurveySection_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[SurveySection_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[SurveySection] DROP CONSTRAINT [SurveySection_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[SurveySectionAssociation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[SurveySectionAssociation] DROP CONSTRAINT [SurveySectionAssociation_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[SurveySectionAssociation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[SurveySectionAssociation] DROP CONSTRAINT [SurveySectionAssociation_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[SurveySectionResponse_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[SurveySectionResponse] DROP CONSTRAINT [SurveySectionResponse_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[SurveySectionResponse_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[SurveySectionResponse] DROP CONSTRAINT [SurveySectionResponse_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[SurveySectionResponseEducationOrganizationTargetAssociation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[SurveySectionResponseEducationOrganizationTargetAssociation] DROP CONSTRAINT [SurveySectionResponseEducationOrganizationTargetAssociation_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[SurveySectionResponseEducationOrganizationTargetAssociation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[SurveySectionResponseEducationOrganizationTargetAssociation] DROP CONSTRAINT [SurveySectionResponseEducationOrganizationTargetAssociation_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [edfi].[SurveySectionResponseStaffTargetAssociation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[SurveySectionResponseStaffTargetAssociation] DROP CONSTRAINT [SurveySectionResponseStaffTargetAssociation_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [edfi].[SurveySectionResponseStaffTargetAssociation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[SurveySectionResponseStaffTargetAssociation] DROP CONSTRAINT [SurveySectionResponseStaffTargetAssociation_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [tpdm].[Candidate_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[Candidate] DROP CONSTRAINT [Candidate_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [tpdm].[Candidate_DF_LastModifiedDate]...';


GO
ALTER TABLE [tpdm].[Candidate] DROP CONSTRAINT [Candidate_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [tpdm].[CandidateAddress_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[CandidateAddress] DROP CONSTRAINT [CandidateAddress_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [tpdm].[CandidateAddressPeriod_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[CandidateAddressPeriod] DROP CONSTRAINT [CandidateAddressPeriod_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [tpdm].[CandidateDisability_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[CandidateDisability] DROP CONSTRAINT [CandidateDisability_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [tpdm].[CandidateDisabilityDesignation_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[CandidateDisabilityDesignation] DROP CONSTRAINT [CandidateDisabilityDesignation_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [tpdm].[CandidateEducatorPreparationProgramAssociation_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[CandidateEducatorPreparationProgramAssociation] DROP CONSTRAINT [CandidateEducatorPreparationProgramAssociation_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [tpdm].[CandidateEducatorPreparationProgramAssociation_DF_LastModifiedDate]...';


GO
ALTER TABLE [tpdm].[CandidateEducatorPreparationProgramAssociation] DROP CONSTRAINT [CandidateEducatorPreparationProgramAssociation_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [tpdm].[CandidateEducatorPreparationProgramAssociationCohortYear_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[CandidateEducatorPreparationProgramAssociationCohortYear] DROP CONSTRAINT [CandidateEducatorPreparationProgramAssociationCohortYear_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [tpdm].[CandidateEducatorPreparationProgramAssociationDegreeSpecialization_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[CandidateEducatorPreparationProgramAssociationDegreeSpecialization] DROP CONSTRAINT [CandidateEducatorPreparationProgramAssociationDegreeSpecialization_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [tpdm].[CandidateElectronicMail_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[CandidateElectronicMail] DROP CONSTRAINT [CandidateElectronicMail_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [tpdm].[CandidateLanguage_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[CandidateLanguage] DROP CONSTRAINT [CandidateLanguage_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [tpdm].[CandidateLanguageUse_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[CandidateLanguageUse] DROP CONSTRAINT [CandidateLanguageUse_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [tpdm].[CandidateOtherName_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[CandidateOtherName] DROP CONSTRAINT [CandidateOtherName_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [tpdm].[CandidatePersonalIdentificationDocument_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[CandidatePersonalIdentificationDocument] DROP CONSTRAINT [CandidatePersonalIdentificationDocument_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [tpdm].[CandidateRace_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[CandidateRace] DROP CONSTRAINT [CandidateRace_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [tpdm].[CandidateTelephone_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[CandidateTelephone] DROP CONSTRAINT [CandidateTelephone_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [tpdm].[CredentialExtension_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[CredentialExtension] DROP CONSTRAINT [CredentialExtension_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [tpdm].[CredentialStudentAcademicRecord_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[CredentialStudentAcademicRecord] DROP CONSTRAINT [CredentialStudentAcademicRecord_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [tpdm].[EducatorPreparationProgram_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[EducatorPreparationProgram] DROP CONSTRAINT [EducatorPreparationProgram_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [tpdm].[EducatorPreparationProgram_DF_LastModifiedDate]...';


GO
ALTER TABLE [tpdm].[EducatorPreparationProgram] DROP CONSTRAINT [EducatorPreparationProgram_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [tpdm].[EducatorPreparationProgramGradeLevel_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[EducatorPreparationProgramGradeLevel] DROP CONSTRAINT [EducatorPreparationProgramGradeLevel_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [tpdm].[Evaluation_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[Evaluation] DROP CONSTRAINT [Evaluation_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [tpdm].[Evaluation_DF_LastModifiedDate]...';


GO
ALTER TABLE [tpdm].[Evaluation] DROP CONSTRAINT [Evaluation_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [tpdm].[EvaluationElement_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[EvaluationElement] DROP CONSTRAINT [EvaluationElement_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [tpdm].[EvaluationElement_DF_LastModifiedDate]...';


GO
ALTER TABLE [tpdm].[EvaluationElement] DROP CONSTRAINT [EvaluationElement_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [tpdm].[EvaluationElementRating_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[EvaluationElementRating] DROP CONSTRAINT [EvaluationElementRating_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [tpdm].[EvaluationElementRating_DF_LastModifiedDate]...';


GO
ALTER TABLE [tpdm].[EvaluationElementRating] DROP CONSTRAINT [EvaluationElementRating_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [tpdm].[EvaluationElementRatingLevel_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[EvaluationElementRatingLevel] DROP CONSTRAINT [EvaluationElementRatingLevel_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [tpdm].[EvaluationElementRatingResult_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[EvaluationElementRatingResult] DROP CONSTRAINT [EvaluationElementRatingResult_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [tpdm].[EvaluationObjective_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[EvaluationObjective] DROP CONSTRAINT [EvaluationObjective_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [tpdm].[EvaluationObjective_DF_LastModifiedDate]...';


GO
ALTER TABLE [tpdm].[EvaluationObjective] DROP CONSTRAINT [EvaluationObjective_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [tpdm].[EvaluationObjectiveRating_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[EvaluationObjectiveRating] DROP CONSTRAINT [EvaluationObjectiveRating_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [tpdm].[EvaluationObjectiveRating_DF_LastModifiedDate]...';


GO
ALTER TABLE [tpdm].[EvaluationObjectiveRating] DROP CONSTRAINT [EvaluationObjectiveRating_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [tpdm].[EvaluationObjectiveRatingLevel_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[EvaluationObjectiveRatingLevel] DROP CONSTRAINT [EvaluationObjectiveRatingLevel_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [tpdm].[EvaluationObjectiveRatingResult_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[EvaluationObjectiveRatingResult] DROP CONSTRAINT [EvaluationObjectiveRatingResult_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [tpdm].[EvaluationRatingLevel_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[EvaluationRatingLevel] DROP CONSTRAINT [EvaluationRatingLevel_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [tpdm].[EvaluationRatingResult_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[EvaluationRatingResult] DROP CONSTRAINT [EvaluationRatingResult_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [tpdm].[EvaluationRatingReviewer_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[EvaluationRatingReviewer] DROP CONSTRAINT [EvaluationRatingReviewer_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [tpdm].[EvaluationRatingReviewerReceivedTraining_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[EvaluationRatingReviewerReceivedTraining] DROP CONSTRAINT [EvaluationRatingReviewerReceivedTraining_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [tpdm].[FinancialAid_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[FinancialAid] DROP CONSTRAINT [FinancialAid_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [tpdm].[FinancialAid_DF_LastModifiedDate]...';


GO
ALTER TABLE [tpdm].[FinancialAid] DROP CONSTRAINT [FinancialAid_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [tpdm].[PerformanceEvaluation_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[PerformanceEvaluation] DROP CONSTRAINT [PerformanceEvaluation_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [tpdm].[PerformanceEvaluation_DF_LastModifiedDate]...';


GO
ALTER TABLE [tpdm].[PerformanceEvaluation] DROP CONSTRAINT [PerformanceEvaluation_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [tpdm].[PerformanceEvaluationGradeLevel_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[PerformanceEvaluationGradeLevel] DROP CONSTRAINT [PerformanceEvaluationGradeLevel_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [tpdm].[PerformanceEvaluationRating_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[PerformanceEvaluationRating] DROP CONSTRAINT [PerformanceEvaluationRating_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [tpdm].[PerformanceEvaluationRating_DF_LastModifiedDate]...';


GO
ALTER TABLE [tpdm].[PerformanceEvaluationRating] DROP CONSTRAINT [PerformanceEvaluationRating_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [tpdm].[PerformanceEvaluationRatingLevel_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[PerformanceEvaluationRatingLevel] DROP CONSTRAINT [PerformanceEvaluationRatingLevel_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [tpdm].[PerformanceEvaluationRatingResult_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[PerformanceEvaluationRatingResult] DROP CONSTRAINT [PerformanceEvaluationRatingResult_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [tpdm].[PerformanceEvaluationRatingReviewer_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[PerformanceEvaluationRatingReviewer] DROP CONSTRAINT [PerformanceEvaluationRatingReviewer_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [tpdm].[PerformanceEvaluationRatingReviewerReceivedTraining_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[PerformanceEvaluationRatingReviewerReceivedTraining] DROP CONSTRAINT [PerformanceEvaluationRatingReviewerReceivedTraining_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [tpdm].[RubricDimension_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[RubricDimension] DROP CONSTRAINT [RubricDimension_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [tpdm].[RubricDimension_DF_LastModifiedDate]...';


GO
ALTER TABLE [tpdm].[RubricDimension] DROP CONSTRAINT [RubricDimension_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [tpdm].[SchoolExtension_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[SchoolExtension] DROP CONSTRAINT [SchoolExtension_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [tpdm].[SurveyResponseExtension_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[SurveyResponseExtension] DROP CONSTRAINT [SurveyResponseExtension_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [tpdm].[SurveyResponsePersonTargetAssociation_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[SurveyResponsePersonTargetAssociation] DROP CONSTRAINT [SurveyResponsePersonTargetAssociation_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [tpdm].[SurveyResponsePersonTargetAssociation_DF_LastModifiedDate]...';


GO
ALTER TABLE [tpdm].[SurveyResponsePersonTargetAssociation] DROP CONSTRAINT [SurveyResponsePersonTargetAssociation_DF_LastModifiedDate];


GO
PRINT N'Dropping Default Constraint [tpdm].[SurveySectionResponsePersonTargetAssociation_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[SurveySectionResponsePersonTargetAssociation] DROP CONSTRAINT [SurveySectionResponsePersonTargetAssociation_DF_CreateDate];


GO
PRINT N'Dropping Default Constraint [tpdm].[SurveySectionResponsePersonTargetAssociation_DF_LastModifiedDate]...';


GO
ALTER TABLE [tpdm].[SurveySectionResponsePersonTargetAssociation] DROP CONSTRAINT [SurveySectionResponsePersonTargetAssociation_DF_LastModifiedDate];


GO
PRINT N'Dropping Foreign Key [edfi].[FK_RestraintEventProgram_RestraintEvent]...';


GO
ALTER TABLE [edfi].[RestraintEventProgram] DROP CONSTRAINT [FK_RestraintEventProgram_RestraintEvent];


GO
PRINT N'Dropping Foreign Key [edfi].[FK_RestraintEventReason_RestraintEvent]...';


GO
ALTER TABLE [edfi].[RestraintEventReason] DROP CONSTRAINT [FK_RestraintEventReason_RestraintEvent];


GO
PRINT N'Dropping Foreign Key [edfi].[FK_RestraintEvent_EducationalEnvironmentDescriptor]...';


GO
ALTER TABLE [edfi].[RestraintEvent] DROP CONSTRAINT [FK_RestraintEvent_EducationalEnvironmentDescriptor];


GO
PRINT N'Dropping Foreign Key [edfi].[FK_RestraintEvent_School]...';


GO
ALTER TABLE [edfi].[RestraintEvent] DROP CONSTRAINT [FK_RestraintEvent_School];


GO
PRINT N'Dropping Foreign Key [edfi].[FK_RestraintEvent_Student]...';


GO
ALTER TABLE [edfi].[RestraintEvent] DROP CONSTRAINT [FK_RestraintEvent_Student];


GO
PRINT N'Dropping Foreign Key [edfi].[FK_StudentSectionAssociationProgram_StudentSectionAssociation]...';


GO
ALTER TABLE [edfi].[StudentSectionAssociationProgram] DROP CONSTRAINT [FK_StudentSectionAssociationProgram_StudentSectionAssociation];


GO
PRINT N'Dropping Foreign Key [edfi].[FK_StudentCompetencyObjectiveStudentSectionAssociation_StudentSectionAssociation]...';


GO
ALTER TABLE [edfi].[StudentCompetencyObjectiveStudentSectionAssociation] DROP CONSTRAINT [FK_StudentCompetencyObjectiveStudentSectionAssociation_StudentSectionAssociation];


GO
PRINT N'Dropping Foreign Key [edfi].[FK_StudentSectionAssociation_AttemptStatusDescriptor]...';


GO
ALTER TABLE [edfi].[StudentSectionAssociation] DROP CONSTRAINT [FK_StudentSectionAssociation_AttemptStatusDescriptor];


GO
PRINT N'Dropping Foreign Key [edfi].[FK_StudentSectionAssociation_RepeatIdentifierDescriptor]...';


GO
ALTER TABLE [edfi].[StudentSectionAssociation] DROP CONSTRAINT [FK_StudentSectionAssociation_RepeatIdentifierDescriptor];


GO
PRINT N'Dropping Foreign Key [edfi].[FK_StudentSectionAssociation_Section]...';


GO
ALTER TABLE [edfi].[StudentSectionAssociation] DROP CONSTRAINT [FK_StudentSectionAssociation_Section];


GO
PRINT N'Dropping Foreign Key [edfi].[FK_StudentSectionAssociation_Student]...';


GO
ALTER TABLE [edfi].[StudentSectionAssociation] DROP CONSTRAINT [FK_StudentSectionAssociation_Student];


GO
PRINT N'Dropping Foreign Key [edfi].[FK_Grade_StudentSectionAssociation]...';


GO
ALTER TABLE [edfi].[Grade] DROP CONSTRAINT [FK_Grade_StudentSectionAssociation];


GO
PRINT N'Dropping Foreign Key [edfi].[FK_StudentSpecialEducationProgramAssociation_GeneralStudentProgramAssociation]...';


GO
ALTER TABLE [edfi].[StudentSpecialEducationProgramAssociation] DROP CONSTRAINT [FK_StudentSpecialEducationProgramAssociation_GeneralStudentProgramAssociation];


GO
PRINT N'Dropping Foreign Key [edfi].[FK_StudentSpecialEducationProgramAssociation_SpecialEducationExitReasonDescriptor]...';


GO
ALTER TABLE [edfi].[StudentSpecialEducationProgramAssociation] DROP CONSTRAINT [FK_StudentSpecialEducationProgramAssociation_SpecialEducationExitReasonDescriptor];


GO
PRINT N'Dropping Foreign Key [edfi].[FK_StudentSpecialEducationProgramAssociation_SpecialEducationSettingDescriptor]...';


GO
ALTER TABLE [edfi].[StudentSpecialEducationProgramAssociation] DROP CONSTRAINT [FK_StudentSpecialEducationProgramAssociation_SpecialEducationSettingDescriptor];


GO
PRINT N'Dropping Foreign Key [edfi].[FK_StudentSpecialEducationProgramAssociationDisability_StudentSpecialEducationProgramAssociation]...';


GO
ALTER TABLE [edfi].[StudentSpecialEducationProgramAssociationDisability] DROP CONSTRAINT [FK_StudentSpecialEducationProgramAssociationDisability_StudentSpecialEducationProgramAssociation];


GO
PRINT N'Dropping Foreign Key [edfi].[FK_StudentSpecialEducationProgramAssociationServiceProvider_StudentSpecialEducationProgramAssociation]...';


GO
ALTER TABLE [edfi].[StudentSpecialEducationProgramAssociationServiceProvider] DROP CONSTRAINT [FK_StudentSpecialEducationProgramAssociationServiceProvider_StudentSpecialEducationProgramAssociation];


GO
PRINT N'Dropping Foreign Key [edfi].[FK_StudentSpecialEducationProgramAssociationSpecialEducationProgramService_StudentSpecialEducationProgramAssociation]...';


GO
ALTER TABLE [edfi].[StudentSpecialEducationProgramAssociationSpecialEducationProgramService] DROP CONSTRAINT [FK_StudentSpecialEducationProgramAssociationSpecialEducationProgramService_StudentSpecialEducationProgramAssociation];


GO
PRINT N'Dropping Foreign Key [edfi].[FK_StudentSpecialEducationProgramEligibilityAssociation_EducationOrganization]...';


GO
ALTER TABLE [edfi].[StudentSpecialEducationProgramEligibilityAssociation] DROP CONSTRAINT [FK_StudentSpecialEducationProgramEligibilityAssociation_EducationOrganization];


GO
PRINT N'Dropping Foreign Key [edfi].[FK_StudentSpecialEducationProgramEligibilityAssociation_EligibilityDelayReasonDescriptor]...';


GO
ALTER TABLE [edfi].[StudentSpecialEducationProgramEligibilityAssociation] DROP CONSTRAINT [FK_StudentSpecialEducationProgramEligibilityAssociation_EligibilityDelayReasonDescriptor];


GO
PRINT N'Dropping Foreign Key [edfi].[FK_StudentSpecialEducationProgramEligibilityAssociation_EligibilityEvaluationTypeDescriptor]...';


GO
ALTER TABLE [edfi].[StudentSpecialEducationProgramEligibilityAssociation] DROP CONSTRAINT [FK_StudentSpecialEducationProgramEligibilityAssociation_EligibilityEvaluationTypeDescriptor];


GO
PRINT N'Dropping Foreign Key [edfi].[FK_StudentSpecialEducationProgramEligibilityAssociation_EvaluationDelayReasonDescriptor]...';


GO
ALTER TABLE [edfi].[StudentSpecialEducationProgramEligibilityAssociation] DROP CONSTRAINT [FK_StudentSpecialEducationProgramEligibilityAssociation_EvaluationDelayReasonDescriptor];


GO
PRINT N'Dropping Foreign Key [edfi].[FK_StudentSpecialEducationProgramEligibilityAssociation_IDEAPartDescriptor]...';


GO
ALTER TABLE [edfi].[StudentSpecialEducationProgramEligibilityAssociation] DROP CONSTRAINT [FK_StudentSpecialEducationProgramEligibilityAssociation_IDEAPartDescriptor];


GO
PRINT N'Dropping Foreign Key [edfi].[FK_StudentSpecialEducationProgramEligibilityAssociation_Program]...';


GO
ALTER TABLE [edfi].[StudentSpecialEducationProgramEligibilityAssociation] DROP CONSTRAINT [FK_StudentSpecialEducationProgramEligibilityAssociation_Program];


GO
PRINT N'Dropping Foreign Key [edfi].[FK_StudentSpecialEducationProgramEligibilityAssociation_Student]...';


GO
ALTER TABLE [edfi].[StudentSpecialEducationProgramEligibilityAssociation] DROP CONSTRAINT [FK_StudentSpecialEducationProgramEligibilityAssociation_Student];


GO
PRINT N'Dropping Foreign Key [tpdm].[FK_Candidate_SexDescriptor]...';


GO
ALTER TABLE [tpdm].[Candidate] DROP CONSTRAINT [FK_Candidate_SexDescriptor];


GO
PRINT N'Dropping Foreign Key [tpdm].[FK_EvaluationRatingResult_EvaluationRating]...';


GO
ALTER TABLE [tpdm].[EvaluationRatingResult] DROP CONSTRAINT [FK_EvaluationRatingResult_EvaluationRating];


GO
PRINT N'Dropping Foreign Key [tpdm].[FK_EvaluationRatingReviewer_EvaluationRating]...';


GO
ALTER TABLE [tpdm].[EvaluationRatingReviewer] DROP CONSTRAINT [FK_EvaluationRatingReviewer_EvaluationRating];


GO
PRINT N'Dropping Foreign Key [tpdm].[FK_EvaluationObjectiveRating_EvaluationRating]...';


GO
ALTER TABLE [tpdm].[EvaluationObjectiveRating] DROP CONSTRAINT [FK_EvaluationObjectiveRating_EvaluationRating];


GO
PRINT N'Dropping Foreign Key [tpdm].[FK_EvaluationRating_Evaluation]...';


GO
ALTER TABLE [tpdm].[EvaluationRating] DROP CONSTRAINT [FK_EvaluationRating_Evaluation];


GO
PRINT N'Dropping Foreign Key [tpdm].[FK_EvaluationRating_EvaluationRatingLevelDescriptor]...';


GO
ALTER TABLE [tpdm].[EvaluationRating] DROP CONSTRAINT [FK_EvaluationRating_EvaluationRatingLevelDescriptor];


GO
PRINT N'Dropping Foreign Key [tpdm].[FK_EvaluationRating_EvaluationRatingStatusDescriptor]...';


GO
ALTER TABLE [tpdm].[EvaluationRating] DROP CONSTRAINT [FK_EvaluationRating_EvaluationRatingStatusDescriptor];


GO
PRINT N'Dropping Foreign Key [tpdm].[FK_EvaluationRating_PerformanceEvaluationRating]...';


GO
ALTER TABLE [tpdm].[EvaluationRating] DROP CONSTRAINT [FK_EvaluationRating_PerformanceEvaluationRating];


GO
PRINT N'Dropping Foreign Key [tpdm].[FK_EvaluationRating_Section]...';


GO
ALTER TABLE [tpdm].[EvaluationRating] DROP CONSTRAINT [FK_EvaluationRating_Section];


GO
PRINT N'Dropping Foreign Key [edfi].[FK_StudentParticipationCodeDescriptor_Descriptor]...';


GO
ALTER TABLE [edfi].[StudentParticipationCodeDescriptor] DROP CONSTRAINT [FK_StudentParticipationCodeDescriptor_Descriptor];


GO
PRINT N'Dropping Table [edfi].[StudentParticipationCodeDescriptor]...';


GO
DROP TABLE [edfi].[StudentParticipationCodeDescriptor];


GO
PRINT N'Removing schema binding from [auth].[EducationOrganizationIdToStaffUSI]...';


GO
ALTER VIEW [auth].[EducationOrganizationIdToStaffUSI]
AS
SELECT edOrgs.SourceEducationOrganizationId,
       seo_assign.StaffUSI
FROM   auth.EducationOrganizationIdToEducationOrganizationId AS edOrgs
       INNER JOIN
       edfi.StaffEducationOrganizationAssignmentAssociation AS seo_assign
       ON edOrgs.TargetEducationOrganizationId = seo_assign.EducationOrganizationId
UNION
SELECT edOrgs.SourceEducationOrganizationId,
       seo_empl.StaffUSI
FROM   auth.EducationOrganizationIdToEducationOrganizationId AS edOrgs
       INNER JOIN
       edfi.StaffEducationOrganizationEmploymentAssociation AS seo_empl
       ON edOrgs.TargetEducationOrganizationId = seo_empl.EducationOrganizationId;


GO
PRINT N'Dropping Index [auth].[EducationOrganizationIdToContactUSI].[UX_EducationOrganizationIdToContactUSI]...';


GO
DROP INDEX [UX_EducationOrganizationIdToContactUSI]
    ON [auth].[EducationOrganizationIdToContactUSI];


GO
PRINT N'Removing schema binding from [auth].[EducationOrganizationIdToContactUSI]...';


GO
ALTER VIEW [auth].[EducationOrganizationIdToContactUSI]
AS
SELECT   edOrgs.SourceEducationOrganizationId,
         spa.ContactUSI,
         COUNT_BIG(*) AS Ignored
FROM     auth.EducationOrganizationIdToEducationOrganizationId AS edOrgs
         INNER JOIN
         edfi.StudentSchoolAssociation AS ssa
         ON edOrgs.TargetEducationOrganizationId = ssa.SchoolId
         INNER JOIN
         edfi.StudentContactAssociation AS spa
         ON ssa.StudentUSI = spa.StudentUSI
GROUP BY edOrgs.SourceEducationOrganizationId, spa.ContactUSI;


GO
PRINT N'Removing schema binding from [auth].[EducationOrganizationIdToStudentUSIThroughResponsibility]...';


GO
ALTER VIEW [auth].[EducationOrganizationIdToStudentUSIThroughResponsibility]
AS
SELECT   edOrgs.SourceEducationOrganizationId,
         seora.StudentUSI
FROM     auth.EducationOrganizationIdToEducationOrganizationId AS edOrgs
         INNER JOIN
         edfi.StudentEducationOrganizationResponsibilityAssociation AS seora
         ON edOrgs.TargetEducationOrganizationId = seora.EducationOrganizationId
GROUP BY edOrgs.SourceEducationOrganizationId, seora.StudentUSI;


GO
PRINT N'Dropping Index [auth].[EducationOrganizationIdToStudentUSI].[UX_EducationOrganizationIdToStudentUSI]...';


GO
DROP INDEX [UX_EducationOrganizationIdToStudentUSI]
    ON [auth].[EducationOrganizationIdToStudentUSI];


GO
PRINT N'Removing schema binding from [auth].[EducationOrganizationIdToStudentUSI]...';


GO
ALTER VIEW [auth].[EducationOrganizationIdToStudentUSI]
AS
SELECT   edOrgs.SourceEducationOrganizationId,
         ssa.StudentUSI,
         COUNT_BIG(*) AS Ignored
FROM     auth.EducationOrganizationIdToEducationOrganizationId AS edOrgs
         INNER JOIN
         edfi.StudentSchoolAssociation AS ssa
         ON edOrgs.TargetEducationOrganizationId = ssa.SchoolId
GROUP BY edOrgs.SourceEducationOrganizationId, ssa.StudentUSI;


GO
PRINT N'Starting rebuilding table [edfi].[StudentSpecialEducationProgramAssociation]...';


GO
BEGIN TRANSACTION;

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

SET XACT_ABORT ON;

CREATE TABLE [edfi].[tmp_ms_xx_StudentSpecialEducationProgramAssociation] (
    [BeginDate]                              DATE            NOT NULL,
    [EducationOrganizationId]                BIGINT          NOT NULL,
    [ProgramEducationOrganizationId]         BIGINT          NOT NULL,
    [ProgramName]                            NVARCHAR (60)   NOT NULL,
    [ProgramTypeDescriptorId]                INT             NOT NULL,
    [StudentUSI]                             INT             NOT NULL,
    [IdeaEligibility]                        BIT             NULL,
    [IEPBeginDate]                           DATE            NULL,
    [IEPEndDate]                             DATE            NULL,
    [IEPReviewDate]                          DATE            NULL,
    [LastEvaluationDate]                     DATE            NULL,
    [MedicallyFragile]                       BIT             NULL,
    [MultiplyDisabled]                       BIT             NULL,
    [ReductionInHoursPerWeekComparedToPeers] DECIMAL (5, 2)  NULL,
    [SchoolHoursPerWeek]                     DECIMAL (5, 2)  NULL,
    [ShortenedSchoolDayIndicator]            BIT             NULL,
    [SpecialEducationExitDate]               DATE            NULL,
    [SpecialEducationExitExplained]          NVARCHAR (1024) NULL,
    [SpecialEducationExitReasonDescriptorId] INT             NULL,
    [SpecialEducationHoursPerWeek]           DECIMAL (5, 2)  NULL,
    [SpecialEducationSettingDescriptorId]    INT             NULL,
    CONSTRAINT [tmp_ms_xx_constraint_StudentSpecialEducationProgramAssociation_PK1] PRIMARY KEY CLUSTERED ([BeginDate] ASC, [EducationOrganizationId] ASC, [ProgramEducationOrganizationId] ASC, [ProgramName] ASC, [ProgramTypeDescriptorId] ASC, [StudentUSI] ASC)
);

IF EXISTS (SELECT TOP 1 1 
           FROM   [edfi].[StudentSpecialEducationProgramAssociation])
    BEGIN
        INSERT INTO [edfi].[tmp_ms_xx_StudentSpecialEducationProgramAssociation] ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI], [IdeaEligibility], [IEPBeginDate], [IEPEndDate], [IEPReviewDate], [LastEvaluationDate], [MedicallyFragile], [MultiplyDisabled], [SchoolHoursPerWeek], [SpecialEducationExitDate], [SpecialEducationExitExplained], [SpecialEducationExitReasonDescriptorId], [SpecialEducationHoursPerWeek], [SpecialEducationSettingDescriptorId])
        SELECT   [BeginDate],
                 [EducationOrganizationId],
                 [ProgramEducationOrganizationId],
                 [ProgramName],
                 [ProgramTypeDescriptorId],
                 [StudentUSI],
                 [IdeaEligibility],
                 [IEPBeginDate],
                 [IEPEndDate],
                 [IEPReviewDate],
                 [LastEvaluationDate],
                 [MedicallyFragile],
                 [MultiplyDisabled],
                 [SchoolHoursPerWeek],
                 [SpecialEducationExitDate],
                 [SpecialEducationExitExplained],
                 [SpecialEducationExitReasonDescriptorId],
                 [SpecialEducationHoursPerWeek],
                 [SpecialEducationSettingDescriptorId]
        FROM     [edfi].[StudentSpecialEducationProgramAssociation]
        ORDER BY [BeginDate] ASC, [EducationOrganizationId] ASC, [ProgramEducationOrganizationId] ASC, [ProgramName] ASC, [ProgramTypeDescriptorId] ASC, [StudentUSI] ASC;
    END

DROP TABLE [edfi].[StudentSpecialEducationProgramAssociation];

EXECUTE sp_rename N'[edfi].[tmp_ms_xx_StudentSpecialEducationProgramAssociation]', N'StudentSpecialEducationProgramAssociation';

EXECUTE sp_rename N'[edfi].[tmp_ms_xx_constraint_StudentSpecialEducationProgramAssociation_PK1]', N'StudentSpecialEducationProgramAssociation_PK', N'OBJECT';

COMMIT TRANSACTION;

SET TRANSACTION ISOLATION LEVEL READ COMMITTED;


GO
PRINT N'Creating Index [edfi].[StudentSpecialEducationProgramAssociation].[FK_StudentSpecialEducationProgramAssociation_SpecialEducationExitReasonDescriptor]...';


GO
CREATE NONCLUSTERED INDEX [FK_StudentSpecialEducationProgramAssociation_SpecialEducationExitReasonDescriptor]
    ON [edfi].[StudentSpecialEducationProgramAssociation]([SpecialEducationExitReasonDescriptorId] ASC);


GO
PRINT N'Creating Index [edfi].[StudentSpecialEducationProgramAssociation].[FK_StudentSpecialEducationProgramAssociation_SpecialEducationSettingDescriptor]...';


GO
CREATE NONCLUSTERED INDEX [FK_StudentSpecialEducationProgramAssociation_SpecialEducationSettingDescriptor]
    ON [edfi].[StudentSpecialEducationProgramAssociation]([SpecialEducationSettingDescriptorId] ASC);


GO
PRINT N'Creating Table [edfi].[AssessmentAdministration]...';


GO
CREATE TABLE [edfi].[AssessmentAdministration] (
    [AdministrationIdentifier]         NVARCHAR (255)   NOT NULL,
    [AssessmentIdentifier]             NVARCHAR (60)    NOT NULL,
    [AssigningEducationOrganizationId] BIGINT           NOT NULL,
    [Namespace]                        NVARCHAR (255)   NOT NULL,
    [Discriminator]                    NVARCHAR (128)   NULL,
    [CreateDate]                       DATETIME2 (7)    NOT NULL,
    [LastModifiedDate]                 DATETIME2 (7)    NOT NULL,
    [Id]                               UNIQUEIDENTIFIER NOT NULL,
    [AggregateId]                      INT              NOT NULL,
    [AggregateData]                    VARBINARY (8000) NULL,
    CONSTRAINT [AssessmentAdministration_PK] PRIMARY KEY CLUSTERED ([AdministrationIdentifier] ASC, [AssessmentIdentifier] ASC, [AssigningEducationOrganizationId] ASC, [Namespace] ASC)
);


GO
PRINT N'Creating Index [edfi].[AssessmentAdministration].[FK_AssessmentAdministration_Assessment]...';


GO
CREATE NONCLUSTERED INDEX [FK_AssessmentAdministration_Assessment]
    ON [edfi].[AssessmentAdministration]([AssessmentIdentifier] ASC, [Namespace] ASC);


GO
PRINT N'Creating Index [edfi].[AssessmentAdministration].[FK_AssessmentAdministration_EducationOrganization]...';


GO
CREATE NONCLUSTERED INDEX [FK_AssessmentAdministration_EducationOrganization]
    ON [edfi].[AssessmentAdministration]([AssigningEducationOrganizationId] ASC);


GO
PRINT N'Creating Index [edfi].[AssessmentAdministration].[UX_AssessmentAdministration_Id]...';


GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_AssessmentAdministration_Id]
    ON [edfi].[AssessmentAdministration]([Id] ASC) WITH (FILLFACTOR = 75, PAD_INDEX = ON);


GO
PRINT N'Creating Index [edfi].[AssessmentAdministration].[IX_AssessmentAdministration_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_AssessmentAdministration_AggregateId]
    ON [edfi].[AssessmentAdministration]([AggregateId] ASC);


GO
PRINT N'Creating Table [edfi].[AssessmentAdministrationAssessmentBatteryPart]...';


GO
CREATE TABLE [edfi].[AssessmentAdministrationAssessmentBatteryPart] (
    [AdministrationIdentifier]         NVARCHAR (255) NOT NULL,
    [AssessmentIdentifier]             NVARCHAR (60)  NOT NULL,
    [AssigningEducationOrganizationId] BIGINT         NOT NULL,
    [Namespace]                        NVARCHAR (255) NOT NULL,
    [AssessmentBatteryPartName]        NVARCHAR (65)  NOT NULL,
    [CreateDate]                       DATETIME2 (7)  NOT NULL,
    CONSTRAINT [AssessmentAdministrationAssessmentBatteryPart_PK] PRIMARY KEY CLUSTERED ([AdministrationIdentifier] ASC, [AssessmentIdentifier] ASC, [AssigningEducationOrganizationId] ASC, [Namespace] ASC, [AssessmentBatteryPartName] ASC)
);


GO
PRINT N'Creating Index [edfi].[AssessmentAdministrationAssessmentBatteryPart].[FK_AssessmentAdministrationAssessmentBatteryPart_AssessmentBatteryPart]...';


GO
CREATE NONCLUSTERED INDEX [FK_AssessmentAdministrationAssessmentBatteryPart_AssessmentBatteryPart]
    ON [edfi].[AssessmentAdministrationAssessmentBatteryPart]([AssessmentBatteryPartName] ASC, [AssessmentIdentifier] ASC, [Namespace] ASC);


GO
PRINT N'Creating Table [edfi].[AssessmentAdministrationParticipation]...';


GO
CREATE TABLE [edfi].[AssessmentAdministrationParticipation] (
    [AdministrationIdentifier]             NVARCHAR (255)   NOT NULL,
    [AssessmentIdentifier]                 NVARCHAR (60)    NOT NULL,
    [AssigningEducationOrganizationId]     BIGINT           NOT NULL,
    [Namespace]                            NVARCHAR (255)   NOT NULL,
    [ParticipatingEducationOrganizationId] BIGINT           NOT NULL,
    [Discriminator]                        NVARCHAR (128)   NULL,
    [CreateDate]                           DATETIME2 (7)    NOT NULL,
    [LastModifiedDate]                     DATETIME2 (7)    NOT NULL,
    [Id]                                   UNIQUEIDENTIFIER NOT NULL,
    [AggregateId]                          INT              NOT NULL,
    [AggregateData]                        VARBINARY (8000) NULL,
    CONSTRAINT [AssessmentAdministrationParticipation_PK] PRIMARY KEY CLUSTERED ([AdministrationIdentifier] ASC, [AssessmentIdentifier] ASC, [AssigningEducationOrganizationId] ASC, [Namespace] ASC, [ParticipatingEducationOrganizationId] ASC)
);


GO
PRINT N'Creating Index [edfi].[AssessmentAdministrationParticipation].[FK_AssessmentAdministrationParticipation_AssessmentAdministration]...';


GO
CREATE NONCLUSTERED INDEX [FK_AssessmentAdministrationParticipation_AssessmentAdministration]
    ON [edfi].[AssessmentAdministrationParticipation]([AdministrationIdentifier] ASC, [AssessmentIdentifier] ASC, [AssigningEducationOrganizationId] ASC, [Namespace] ASC);


GO
PRINT N'Creating Index [edfi].[AssessmentAdministrationParticipation].[FK_AssessmentAdministrationParticipation_EducationOrganization]...';


GO
CREATE NONCLUSTERED INDEX [FK_AssessmentAdministrationParticipation_EducationOrganization]
    ON [edfi].[AssessmentAdministrationParticipation]([ParticipatingEducationOrganizationId] ASC);


GO
PRINT N'Creating Index [edfi].[AssessmentAdministrationParticipation].[UX_AssessmentAdministrationParticipation_Id]...';


GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_AssessmentAdministrationParticipation_Id]
    ON [edfi].[AssessmentAdministrationParticipation]([Id] ASC) WITH (FILLFACTOR = 75, PAD_INDEX = ON);


GO
PRINT N'Creating Index [edfi].[AssessmentAdministrationParticipation].[IX_AssessmentAdministrationParticipation_AssigningEducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [IX_AssessmentAdministrationParticipation_AssigningEducationOrganizationId]
    ON [edfi].[AssessmentAdministrationParticipation]([AssigningEducationOrganizationId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[AssessmentAdministrationParticipation].[IX_AssessmentAdministrationParticipation_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_AssessmentAdministrationParticipation_AggregateId]
    ON [edfi].[AssessmentAdministrationParticipation]([AggregateId] ASC);


GO
PRINT N'Creating Table [edfi].[AssessmentAdministrationParticipationAdministrationPointOfContact]...';


GO
CREATE TABLE [edfi].[AssessmentAdministrationParticipationAdministrationPointOfContact] (
    [AdministrationIdentifier]             NVARCHAR (255) NOT NULL,
    [AssessmentIdentifier]                 NVARCHAR (60)  NOT NULL,
    [AssigningEducationOrganizationId]     BIGINT         NOT NULL,
    [Namespace]                            NVARCHAR (255) NOT NULL,
    [ParticipatingEducationOrganizationId] BIGINT         NOT NULL,
    [EducationOrganizationId]              BIGINT         NOT NULL,
    [ElectronicMailAddress]                NVARCHAR (128) NOT NULL,
    [FirstName]                            NVARCHAR (75)  NOT NULL,
    [LastSurname]                          NVARCHAR (75)  NOT NULL,
    [LoginId]                              NVARCHAR (60)  NULL,
    [CreateDate]                           DATETIME2 (7)  NOT NULL,
    CONSTRAINT [AssessmentAdministrationParticipationAdministrationPointOfContact_PK] PRIMARY KEY CLUSTERED ([AdministrationIdentifier] ASC, [AssessmentIdentifier] ASC, [AssigningEducationOrganizationId] ASC, [Namespace] ASC, [ParticipatingEducationOrganizationId] ASC, [EducationOrganizationId] ASC, [ElectronicMailAddress] ASC)
);


GO
PRINT N'Creating Index [edfi].[AssessmentAdministrationParticipationAdministrationPointOfContact].[FK_AssessmentAdministrationParticipationAdministrationPointOfContact_EducationOrganization]...';


GO
CREATE NONCLUSTERED INDEX [FK_AssessmentAdministrationParticipationAdministrationPointOfContact_EducationOrganization]
    ON [edfi].[AssessmentAdministrationParticipationAdministrationPointOfContact]([EducationOrganizationId] ASC);


GO
PRINT N'Creating Table [edfi].[AssessmentAdministrationPeriod]...';


GO
CREATE TABLE [edfi].[AssessmentAdministrationPeriod] (
    [AdministrationIdentifier]         NVARCHAR (255) NOT NULL,
    [AssessmentIdentifier]             NVARCHAR (60)  NOT NULL,
    [AssigningEducationOrganizationId] BIGINT         NOT NULL,
    [Namespace]                        NVARCHAR (255) NOT NULL,
    [BeginDate]                        DATE           NOT NULL,
    [EndDate]                          DATE           NULL,
    [CreateDate]                       DATETIME2 (7)  NOT NULL,
    CONSTRAINT [AssessmentAdministrationPeriod_PK] PRIMARY KEY CLUSTERED ([AdministrationIdentifier] ASC, [AssessmentIdentifier] ASC, [AssigningEducationOrganizationId] ASC, [Namespace] ASC, [BeginDate] ASC)
);


GO
PRINT N'Creating Table [edfi].[AssessmentBatteryPart]...';


GO
CREATE TABLE [edfi].[AssessmentBatteryPart] (
    [AssessmentBatteryPartName] NVARCHAR (65)    NOT NULL,
    [AssessmentIdentifier]      NVARCHAR (60)    NOT NULL,
    [Namespace]                 NVARCHAR (255)   NOT NULL,
    [Discriminator]             NVARCHAR (128)   NULL,
    [CreateDate]                DATETIME2 (7)    NOT NULL,
    [LastModifiedDate]          DATETIME2 (7)    NOT NULL,
    [Id]                        UNIQUEIDENTIFIER NOT NULL,
    [AggregateId]               INT              NOT NULL,
    [AggregateData]             VARBINARY (8000) NULL,
    CONSTRAINT [AssessmentBatteryPart_PK] PRIMARY KEY CLUSTERED ([AssessmentBatteryPartName] ASC, [AssessmentIdentifier] ASC, [Namespace] ASC)
);


GO
PRINT N'Creating Index [edfi].[AssessmentBatteryPart].[FK_AssessmentBatteryPart_Assessment]...';


GO
CREATE NONCLUSTERED INDEX [FK_AssessmentBatteryPart_Assessment]
    ON [edfi].[AssessmentBatteryPart]([AssessmentIdentifier] ASC, [Namespace] ASC);


GO
PRINT N'Creating Index [edfi].[AssessmentBatteryPart].[UX_AssessmentBatteryPart_Id]...';


GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_AssessmentBatteryPart_Id]
    ON [edfi].[AssessmentBatteryPart]([Id] ASC) WITH (FILLFACTOR = 75, PAD_INDEX = ON);


GO
PRINT N'Creating Index [edfi].[AssessmentBatteryPart].[IX_AssessmentBatteryPart_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_AssessmentBatteryPart_AggregateId]
    ON [edfi].[AssessmentBatteryPart]([AggregateId] ASC);


GO
PRINT N'Creating Table [edfi].[AssessmentBatteryPartObjectiveAssessment]...';


GO
CREATE TABLE [edfi].[AssessmentBatteryPartObjectiveAssessment] (
    [AssessmentBatteryPartName] NVARCHAR (65)  NOT NULL,
    [AssessmentIdentifier]      NVARCHAR (60)  NOT NULL,
    [Namespace]                 NVARCHAR (255) NOT NULL,
    [IdentificationCode]        NVARCHAR (60)  NOT NULL,
    [CreateDate]                DATETIME2 (7)  NOT NULL,
    CONSTRAINT [AssessmentBatteryPartObjectiveAssessment_PK] PRIMARY KEY CLUSTERED ([AssessmentBatteryPartName] ASC, [AssessmentIdentifier] ASC, [Namespace] ASC, [IdentificationCode] ASC)
);


GO
PRINT N'Creating Index [edfi].[AssessmentBatteryPartObjectiveAssessment].[FK_AssessmentBatteryPartObjectiveAssessment_ObjectiveAssessment]...';


GO
CREATE NONCLUSTERED INDEX [FK_AssessmentBatteryPartObjectiveAssessment_ObjectiveAssessment]
    ON [edfi].[AssessmentBatteryPartObjectiveAssessment]([AssessmentIdentifier] ASC, [IdentificationCode] ASC, [Namespace] ASC);


GO
PRINT N'Creating Table [edfi].[DualCreditInstitutionDescriptor]...';


GO
CREATE TABLE [edfi].[DualCreditInstitutionDescriptor] (
    [DualCreditInstitutionDescriptorId] INT NOT NULL,
    CONSTRAINT [DualCreditInstitutionDescriptor_PK] PRIMARY KEY CLUSTERED ([DualCreditInstitutionDescriptorId] ASC)
);


GO
PRINT N'Creating Table [edfi].[DualCreditTypeDescriptor]...';


GO
CREATE TABLE [edfi].[DualCreditTypeDescriptor] (
    [DualCreditTypeDescriptorId] INT NOT NULL,
    CONSTRAINT [DualCreditTypeDescriptor_PK] PRIMARY KEY CLUSTERED ([DualCreditTypeDescriptorId] ASC)
);


GO
PRINT N'Creating Table [edfi].[Section504DisabilityDescriptor]...';


GO
CREATE TABLE [edfi].[Section504DisabilityDescriptor] (
    [Section504DisabilityDescriptorId] INT NOT NULL,
    CONSTRAINT [Section504DisabilityDescriptor_PK] PRIMARY KEY CLUSTERED ([Section504DisabilityDescriptorId] ASC)
);


GO
PRINT N'Creating Table [edfi].[StudentAssessmentRegistration]...';


GO
CREATE TABLE [edfi].[StudentAssessmentRegistration] (
    [AdministrationIdentifier]         NVARCHAR (255)   NOT NULL,
    [AssessmentIdentifier]             NVARCHAR (60)    NOT NULL,
    [AssigningEducationOrganizationId] BIGINT           NOT NULL,
    [EducationOrganizationId]          BIGINT           NOT NULL,
    [Namespace]                        NVARCHAR (255)   NOT NULL,
    [StudentUSI]                       INT              NOT NULL,
    [AssessmentGradeLevelDescriptorId] INT              NULL,
    [EntryDate]                        DATE             NOT NULL,
    [PlatformTypeDescriptorId]         INT              NULL,
    [ReportingEducationOrganizationId] BIGINT           NULL,
    [ScheduledEducationOrganizationId] BIGINT           NULL,
    [ScheduledStudentUSI]              INT              NULL,
    [SchoolId]                         BIGINT           NOT NULL,
    [TestingEducationOrganizationId]   BIGINT           NULL,
    [Discriminator]                    NVARCHAR (128)   NULL,
    [CreateDate]                       DATETIME2 (7)    NOT NULL,
    [LastModifiedDate]                 DATETIME2 (7)    NOT NULL,
    [Id]                               UNIQUEIDENTIFIER NOT NULL,
    [AggregateId]                      INT              NOT NULL,
    [AggregateData]                    VARBINARY (8000) NULL,
    CONSTRAINT [StudentAssessmentRegistration_PK] PRIMARY KEY CLUSTERED ([AdministrationIdentifier] ASC, [AssessmentIdentifier] ASC, [AssigningEducationOrganizationId] ASC, [EducationOrganizationId] ASC, [Namespace] ASC, [StudentUSI] ASC)
);


GO
PRINT N'Creating Index [edfi].[StudentAssessmentRegistration].[FK_StudentAssessmentRegistration_AssessmentAdministration]...';


GO
CREATE NONCLUSTERED INDEX [FK_StudentAssessmentRegistration_AssessmentAdministration]
    ON [edfi].[StudentAssessmentRegistration]([AdministrationIdentifier] ASC, [AssessmentIdentifier] ASC, [AssigningEducationOrganizationId] ASC, [Namespace] ASC);


GO
PRINT N'Creating Index [edfi].[StudentAssessmentRegistration].[FK_StudentAssessmentRegistration_EducationOrganization]...';


GO
CREATE NONCLUSTERED INDEX [FK_StudentAssessmentRegistration_EducationOrganization]
    ON [edfi].[StudentAssessmentRegistration]([ReportingEducationOrganizationId] ASC);


GO
PRINT N'Creating Index [edfi].[StudentAssessmentRegistration].[FK_StudentAssessmentRegistration_EducationOrganization1]...';


GO
CREATE NONCLUSTERED INDEX [FK_StudentAssessmentRegistration_EducationOrganization1]
    ON [edfi].[StudentAssessmentRegistration]([TestingEducationOrganizationId] ASC);


GO
PRINT N'Creating Index [edfi].[StudentAssessmentRegistration].[FK_StudentAssessmentRegistration_GradeLevelDescriptor]...';


GO
CREATE NONCLUSTERED INDEX [FK_StudentAssessmentRegistration_GradeLevelDescriptor]
    ON [edfi].[StudentAssessmentRegistration]([AssessmentGradeLevelDescriptorId] ASC);


GO
PRINT N'Creating Index [edfi].[StudentAssessmentRegistration].[FK_StudentAssessmentRegistration_PlatformTypeDescriptor]...';


GO
CREATE NONCLUSTERED INDEX [FK_StudentAssessmentRegistration_PlatformTypeDescriptor]
    ON [edfi].[StudentAssessmentRegistration]([PlatformTypeDescriptorId] ASC);


GO
PRINT N'Creating Index [edfi].[StudentAssessmentRegistration].[FK_StudentAssessmentRegistration_StudentEducationOrganizationAssessmentAccommodation]...';


GO
CREATE NONCLUSTERED INDEX [FK_StudentAssessmentRegistration_StudentEducationOrganizationAssessmentAccommodation]
    ON [edfi].[StudentAssessmentRegistration]([ScheduledEducationOrganizationId] ASC, [ScheduledStudentUSI] ASC);


GO
PRINT N'Creating Index [edfi].[StudentAssessmentRegistration].[FK_StudentAssessmentRegistration_StudentEducationOrganizationAssociation]...';


GO
CREATE NONCLUSTERED INDEX [FK_StudentAssessmentRegistration_StudentEducationOrganizationAssociation]
    ON [edfi].[StudentAssessmentRegistration]([EducationOrganizationId] ASC, [StudentUSI] ASC);


GO
PRINT N'Creating Index [edfi].[StudentAssessmentRegistration].[FK_StudentAssessmentRegistration_StudentSchoolAssociation]...';


GO
CREATE NONCLUSTERED INDEX [FK_StudentAssessmentRegistration_StudentSchoolAssociation]
    ON [edfi].[StudentAssessmentRegistration]([EntryDate] ASC, [SchoolId] ASC, [StudentUSI] ASC);


GO
PRINT N'Creating Index [edfi].[StudentAssessmentRegistration].[UX_StudentAssessmentRegistration_Id]...';


GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_StudentAssessmentRegistration_Id]
    ON [edfi].[StudentAssessmentRegistration]([Id] ASC) WITH (FILLFACTOR = 75, PAD_INDEX = ON);


GO
PRINT N'Creating Index [edfi].[StudentAssessmentRegistration].[IX_StudentAssessmentRegistration_AssigningEducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentAssessmentRegistration_AssigningEducationOrganizationId]
    ON [edfi].[StudentAssessmentRegistration]([AssigningEducationOrganizationId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[StudentAssessmentRegistration].[IX_StudentAssessmentRegistration_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentAssessmentRegistration_EducationOrganizationId]
    ON [edfi].[StudentAssessmentRegistration]([EducationOrganizationId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[StudentAssessmentRegistration].[IX_StudentAssessmentRegistration_SchoolId]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentAssessmentRegistration_SchoolId]
    ON [edfi].[StudentAssessmentRegistration]([SchoolId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[StudentAssessmentRegistration].[IX_StudentAssessmentRegistration_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentAssessmentRegistration_AggregateId]
    ON [edfi].[StudentAssessmentRegistration]([AggregateId] ASC);


GO
PRINT N'Creating Index [edfi].[StudentAssessmentRegistration].[IX_StudentAssessmentRegistration_StudentUSI]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentAssessmentRegistration_StudentUSI]
    ON [edfi].[StudentAssessmentRegistration]([StudentUSI] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[StudentAssessmentRegistration].[IX_StudentAssessmentRegistration_ScheduledStudentUSI]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentAssessmentRegistration_ScheduledStudentUSI]
    ON [edfi].[StudentAssessmentRegistration]([ScheduledStudentUSI] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Table [edfi].[StudentAssessmentRegistrationAssessmentAccommodation]...';


GO
CREATE TABLE [edfi].[StudentAssessmentRegistrationAssessmentAccommodation] (
    [AdministrationIdentifier]         NVARCHAR (255) NOT NULL,
    [AssessmentIdentifier]             NVARCHAR (60)  NOT NULL,
    [AssigningEducationOrganizationId] BIGINT         NOT NULL,
    [EducationOrganizationId]          BIGINT         NOT NULL,
    [Namespace]                        NVARCHAR (255) NOT NULL,
    [StudentUSI]                       INT            NOT NULL,
    [AccommodationDescriptorId]        INT            NOT NULL,
    [CreateDate]                       DATETIME2 (7)  NOT NULL,
    CONSTRAINT [StudentAssessmentRegistrationAssessmentAccommodation_PK] PRIMARY KEY CLUSTERED ([AdministrationIdentifier] ASC, [AssessmentIdentifier] ASC, [AssigningEducationOrganizationId] ASC, [EducationOrganizationId] ASC, [Namespace] ASC, [StudentUSI] ASC, [AccommodationDescriptorId] ASC)
);


GO
PRINT N'Creating Index [edfi].[StudentAssessmentRegistrationAssessmentAccommodation].[FK_StudentAssessmentRegistrationAssessmentAccommodation_AccommodationDescriptor]...';


GO
CREATE NONCLUSTERED INDEX [FK_StudentAssessmentRegistrationAssessmentAccommodation_AccommodationDescriptor]
    ON [edfi].[StudentAssessmentRegistrationAssessmentAccommodation]([AccommodationDescriptorId] ASC);


GO
PRINT N'Creating Table [edfi].[StudentAssessmentRegistrationAssessmentCustomization]...';


GO
CREATE TABLE [edfi].[StudentAssessmentRegistrationAssessmentCustomization] (
    [AdministrationIdentifier]         NVARCHAR (255)  NOT NULL,
    [AssessmentIdentifier]             NVARCHAR (60)   NOT NULL,
    [AssigningEducationOrganizationId] BIGINT          NOT NULL,
    [EducationOrganizationId]          BIGINT          NOT NULL,
    [Namespace]                        NVARCHAR (255)  NOT NULL,
    [StudentUSI]                       INT             NOT NULL,
    [CustomizationKey]                 NVARCHAR (60)   NOT NULL,
    [CustomizationValue]               NVARCHAR (1024) NOT NULL,
    [CreateDate]                       DATETIME2 (7)   NOT NULL,
    CONSTRAINT [StudentAssessmentRegistrationAssessmentCustomization_PK] PRIMARY KEY CLUSTERED ([AdministrationIdentifier] ASC, [AssessmentIdentifier] ASC, [AssigningEducationOrganizationId] ASC, [EducationOrganizationId] ASC, [Namespace] ASC, [StudentUSI] ASC, [CustomizationKey] ASC)
);


GO
PRINT N'Creating Table [edfi].[StudentAssessmentRegistrationBatteryPartAssociation]...';


GO
CREATE TABLE [edfi].[StudentAssessmentRegistrationBatteryPartAssociation] (
    [AdministrationIdentifier]         NVARCHAR (255)   NOT NULL,
    [AssessmentBatteryPartName]        NVARCHAR (65)    NOT NULL,
    [AssessmentIdentifier]             NVARCHAR (60)    NOT NULL,
    [AssigningEducationOrganizationId] BIGINT           NOT NULL,
    [EducationOrganizationId]          BIGINT           NOT NULL,
    [Namespace]                        NVARCHAR (255)   NOT NULL,
    [StudentUSI]                       INT              NOT NULL,
    [Discriminator]                    NVARCHAR (128)   NULL,
    [CreateDate]                       DATETIME2 (7)    NOT NULL,
    [LastModifiedDate]                 DATETIME2 (7)    NOT NULL,
    [Id]                               UNIQUEIDENTIFIER NOT NULL,
    [AggregateId]                      INT              NOT NULL,
    [AggregateData]                    VARBINARY (8000) NULL,
    CONSTRAINT [StudentAssessmentRegistrationBatteryPartAssociation_PK] PRIMARY KEY CLUSTERED ([AdministrationIdentifier] ASC, [AssessmentBatteryPartName] ASC, [AssessmentIdentifier] ASC, [AssigningEducationOrganizationId] ASC, [EducationOrganizationId] ASC, [Namespace] ASC, [StudentUSI] ASC)
);


GO
PRINT N'Creating Index [edfi].[StudentAssessmentRegistrationBatteryPartAssociation].[FK_StudentAssessmentRegistrationBatteryPartAssociation_AssessmentBatteryPart]...';


GO
CREATE NONCLUSTERED INDEX [FK_StudentAssessmentRegistrationBatteryPartAssociation_AssessmentBatteryPart]
    ON [edfi].[StudentAssessmentRegistrationBatteryPartAssociation]([AssessmentBatteryPartName] ASC, [AssessmentIdentifier] ASC, [Namespace] ASC);


GO
PRINT N'Creating Index [edfi].[StudentAssessmentRegistrationBatteryPartAssociation].[FK_StudentAssessmentRegistrationBatteryPartAssociation_StudentAssessmentRegistration]...';


GO
CREATE NONCLUSTERED INDEX [FK_StudentAssessmentRegistrationBatteryPartAssociation_StudentAssessmentRegistration]
    ON [edfi].[StudentAssessmentRegistrationBatteryPartAssociation]([AdministrationIdentifier] ASC, [AssessmentIdentifier] ASC, [AssigningEducationOrganizationId] ASC, [EducationOrganizationId] ASC, [Namespace] ASC, [StudentUSI] ASC);


GO
PRINT N'Creating Index [edfi].[StudentAssessmentRegistrationBatteryPartAssociation].[UX_StudentAssessmentRegistrationBatteryPartAssociation_Id]...';


GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_StudentAssessmentRegistrationBatteryPartAssociation_Id]
    ON [edfi].[StudentAssessmentRegistrationBatteryPartAssociation]([Id] ASC) WITH (FILLFACTOR = 75, PAD_INDEX = ON);


GO
PRINT N'Creating Index [edfi].[StudentAssessmentRegistrationBatteryPartAssociation].[IX_StudentAssessmentRegistrationBatteryPartAssociation_AssigningEducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentAssessmentRegistrationBatteryPartAssociation_AssigningEducationOrganizationId]
    ON [edfi].[StudentAssessmentRegistrationBatteryPartAssociation]([AssigningEducationOrganizationId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[StudentAssessmentRegistrationBatteryPartAssociation].[IX_StudentAssessmentRegistrationBatteryPartAssociation_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentAssessmentRegistrationBatteryPartAssociation_EducationOrganizationId]
    ON [edfi].[StudentAssessmentRegistrationBatteryPartAssociation]([EducationOrganizationId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[StudentAssessmentRegistrationBatteryPartAssociation].[IX_StudentAssessmentRegistrationBatteryPartAssociation_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentAssessmentRegistrationBatteryPartAssociation_AggregateId]
    ON [edfi].[StudentAssessmentRegistrationBatteryPartAssociation]([AggregateId] ASC);


GO
PRINT N'Creating Index [edfi].[StudentAssessmentRegistrationBatteryPartAssociation].[IX_StudentAssessmentRegistrationBatteryPartAssociation_StudentUSI]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentAssessmentRegistrationBatteryPartAssociation_StudentUSI]
    ON [edfi].[StudentAssessmentRegistrationBatteryPartAssociation]([StudentUSI] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Table [edfi].[StudentAssessmentRegistrationBatteryPartAssociationAccommodation]...';


GO
CREATE TABLE [edfi].[StudentAssessmentRegistrationBatteryPartAssociationAccommodation] (
    [AdministrationIdentifier]         NVARCHAR (255) NOT NULL,
    [AssessmentBatteryPartName]        NVARCHAR (65)  NOT NULL,
    [AssessmentIdentifier]             NVARCHAR (60)  NOT NULL,
    [AssigningEducationOrganizationId] BIGINT         NOT NULL,
    [EducationOrganizationId]          BIGINT         NOT NULL,
    [Namespace]                        NVARCHAR (255) NOT NULL,
    [StudentUSI]                       INT            NOT NULL,
    [AccommodationDescriptorId]        INT            NOT NULL,
    [CreateDate]                       DATETIME2 (7)  NOT NULL,
    CONSTRAINT [StudentAssessmentRegistrationBatteryPartAssociationAccommodation_PK] PRIMARY KEY CLUSTERED ([AdministrationIdentifier] ASC, [AssessmentBatteryPartName] ASC, [AssessmentIdentifier] ASC, [AssigningEducationOrganizationId] ASC, [EducationOrganizationId] ASC, [Namespace] ASC, [StudentUSI] ASC, [AccommodationDescriptorId] ASC)
);


GO
PRINT N'Creating Index [edfi].[StudentAssessmentRegistrationBatteryPartAssociationAccommodation].[FK_StudentAssessmentRegistrationBatteryPartAssociationAccommodation_AccommodationDescriptor]...';


GO
CREATE NONCLUSTERED INDEX [FK_StudentAssessmentRegistrationBatteryPartAssociationAccommodation_AccommodationDescriptor]
    ON [edfi].[StudentAssessmentRegistrationBatteryPartAssociationAccommodation]([AccommodationDescriptorId] ASC);


GO
PRINT N'Creating Table [edfi].[StudentDisciplineIncidentBehaviorAssociationWeapon]...';


GO
CREATE TABLE [edfi].[StudentDisciplineIncidentBehaviorAssociationWeapon] (
    [BehaviorDescriptorId] INT           NOT NULL,
    [IncidentIdentifier]   NVARCHAR (36) NOT NULL,
    [SchoolId]             BIGINT        NOT NULL,
    [StudentUSI]           INT           NOT NULL,
    [WeaponDescriptorId]   INT           NOT NULL,
    [CreateDate]           DATETIME2 (7) NOT NULL,
    CONSTRAINT [StudentDisciplineIncidentBehaviorAssociationWeapon_PK] PRIMARY KEY CLUSTERED ([BehaviorDescriptorId] ASC, [IncidentIdentifier] ASC, [SchoolId] ASC, [StudentUSI] ASC, [WeaponDescriptorId] ASC)
);


GO
PRINT N'Creating Index [edfi].[StudentDisciplineIncidentBehaviorAssociationWeapon].[FK_StudentDisciplineIncidentBehaviorAssociationWeapon_WeaponDescriptor]...';


GO
CREATE NONCLUSTERED INDEX [FK_StudentDisciplineIncidentBehaviorAssociationWeapon_WeaponDescriptor]
    ON [edfi].[StudentDisciplineIncidentBehaviorAssociationWeapon]([WeaponDescriptorId] ASC);


GO
PRINT N'Creating Table [edfi].[StudentEducationOrganizationAssessmentAccommodation]...';


GO
CREATE TABLE [edfi].[StudentEducationOrganizationAssessmentAccommodation] (
    [EducationOrganizationId] BIGINT           NOT NULL,
    [StudentUSI]              INT              NOT NULL,
    [Discriminator]           NVARCHAR (128)   NULL,
    [CreateDate]              DATETIME2 (7)    NOT NULL,
    [LastModifiedDate]        DATETIME2 (7)    NOT NULL,
    [Id]                      UNIQUEIDENTIFIER NOT NULL,
    [AggregateId]             INT              NOT NULL,
    [AggregateData]           VARBINARY (8000) NULL,
    CONSTRAINT [StudentEducationOrganizationAssessmentAccommodation_PK] PRIMARY KEY CLUSTERED ([EducationOrganizationId] ASC, [StudentUSI] ASC)
);


GO
PRINT N'Creating Index [edfi].[StudentEducationOrganizationAssessmentAccommodation].[UX_StudentEducationOrganizationAssessmentAccommodation_Id]...';


GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_StudentEducationOrganizationAssessmentAccommodation_Id]
    ON [edfi].[StudentEducationOrganizationAssessmentAccommodation]([Id] ASC) WITH (FILLFACTOR = 75, PAD_INDEX = ON);


GO
PRINT N'Creating Index [edfi].[StudentEducationOrganizationAssessmentAccommodation].[IX_StudentEducationOrganizationAssessmentAccommodation_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentEducationOrganizationAssessmentAccommodation_EducationOrganizationId]
    ON [edfi].[StudentEducationOrganizationAssessmentAccommodation]([EducationOrganizationId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[StudentEducationOrganizationAssessmentAccommodation].[IX_StudentEducationOrganizationAssessmentAccommodation_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentEducationOrganizationAssessmentAccommodation_AggregateId]
    ON [edfi].[StudentEducationOrganizationAssessmentAccommodation]([AggregateId] ASC);


GO
PRINT N'Creating Index [edfi].[StudentEducationOrganizationAssessmentAccommodation].[IX_StudentEducationOrganizationAssessmentAccommodation_StudentUSI]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentEducationOrganizationAssessmentAccommodation_StudentUSI]
    ON [edfi].[StudentEducationOrganizationAssessmentAccommodation]([StudentUSI] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Table [edfi].[StudentEducationOrganizationAssessmentAccommodationGeneralAccommodation]...';


GO
CREATE TABLE [edfi].[StudentEducationOrganizationAssessmentAccommodationGeneralAccommodation] (
    [EducationOrganizationId]   BIGINT        NOT NULL,
    [StudentUSI]                INT           NOT NULL,
    [AccommodationDescriptorId] INT           NOT NULL,
    [CreateDate]                DATETIME2 (7) NOT NULL,
    CONSTRAINT [StudentEducationOrganizationAssessmentAccommodationGeneralAccommodation_PK] PRIMARY KEY CLUSTERED ([EducationOrganizationId] ASC, [StudentUSI] ASC, [AccommodationDescriptorId] ASC)
);


GO
PRINT N'Creating Index [edfi].[StudentEducationOrganizationAssessmentAccommodationGeneralAccommodation].[FK_StudentEducationOrganizationAssessmentAccommodationGeneralAccommodation_AccommodationDescriptor]...';


GO
CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssessmentAccommodationGeneralAccommodation_AccommodationDescriptor]
    ON [edfi].[StudentEducationOrganizationAssessmentAccommodationGeneralAccommodation]([AccommodationDescriptorId] ASC);


GO
PRINT N'Creating Table [edfi].[StudentSection504ProgramAssociation]...';


GO
CREATE TABLE [edfi].[StudentSection504ProgramAssociation] (
    [BeginDate]                         DATE          NOT NULL,
    [EducationOrganizationId]           BIGINT        NOT NULL,
    [ProgramEducationOrganizationId]    BIGINT        NOT NULL,
    [ProgramName]                       NVARCHAR (60) NOT NULL,
    [ProgramTypeDescriptorId]           INT           NOT NULL,
    [StudentUSI]                        INT           NOT NULL,
    [AccommodationPlan]                 BIT           NULL,
    [Section504DisabilityDescriptorId]  INT           NULL,
    [Section504Eligibility]             BIT           NOT NULL,
    [Section504EligibilityDecisionDate] DATE          NULL,
    [Section504MeetingDate]             DATE          NULL,
    CONSTRAINT [StudentSection504ProgramAssociation_PK] PRIMARY KEY CLUSTERED ([BeginDate] ASC, [EducationOrganizationId] ASC, [ProgramEducationOrganizationId] ASC, [ProgramName] ASC, [ProgramTypeDescriptorId] ASC, [StudentUSI] ASC)
);


GO
PRINT N'Creating Index [edfi].[StudentSection504ProgramAssociation].[FK_StudentSection504ProgramAssociation_Section504DisabilityDescriptor]...';


GO
CREATE NONCLUSTERED INDEX [FK_StudentSection504ProgramAssociation_Section504DisabilityDescriptor]
    ON [edfi].[StudentSection504ProgramAssociation]([Section504DisabilityDescriptorId] ASC);


GO
PRINT N'Creating Default Constraint [edfi].[AssessmentAcademicSubject_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[AssessmentAcademicSubject]
    ADD CONSTRAINT [AssessmentAcademicSubject_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[AssessmentAssessedGradeLevel_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[AssessmentAssessedGradeLevel]
    ADD CONSTRAINT [AssessmentAssessedGradeLevel_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[AssessmentContentStandard_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[AssessmentContentStandard]
    ADD CONSTRAINT [AssessmentContentStandard_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[AssessmentContentStandardAuthor_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[AssessmentContentStandardAuthor]
    ADD CONSTRAINT [AssessmentContentStandardAuthor_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[AssessmentIdentificationCode_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[AssessmentIdentificationCode]
    ADD CONSTRAINT [AssessmentIdentificationCode_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[AssessmentItemLearningStandard_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[AssessmentItemLearningStandard]
    ADD CONSTRAINT [AssessmentItemLearningStandard_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[AssessmentItemPossibleResponse_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[AssessmentItemPossibleResponse]
    ADD CONSTRAINT [AssessmentItemPossibleResponse_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[AssessmentLanguage_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[AssessmentLanguage]
    ADD CONSTRAINT [AssessmentLanguage_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[AssessmentPerformanceLevel_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[AssessmentPerformanceLevel]
    ADD CONSTRAINT [AssessmentPerformanceLevel_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[AssessmentPeriod_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[AssessmentPeriod]
    ADD CONSTRAINT [AssessmentPeriod_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[AssessmentPlatformType_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[AssessmentPlatformType]
    ADD CONSTRAINT [AssessmentPlatformType_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[AssessmentProgram_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[AssessmentProgram]
    ADD CONSTRAINT [AssessmentProgram_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[AssessmentScore_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[AssessmentScore]
    ADD CONSTRAINT [AssessmentScore_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[AssessmentScoreRangeLearningStandardLearningStandard_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[AssessmentScoreRangeLearningStandardLearningStandard]
    ADD CONSTRAINT [AssessmentScoreRangeLearningStandardLearningStandard_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[AssessmentSection_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[AssessmentSection]
    ADD CONSTRAINT [AssessmentSection_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[BalanceSheetDimensionReportingTag_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[BalanceSheetDimensionReportingTag]
    ADD CONSTRAINT [BalanceSheetDimensionReportingTag_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[BellScheduleClassPeriod_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[BellScheduleClassPeriod]
    ADD CONSTRAINT [BellScheduleClassPeriod_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[BellScheduleDate_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[BellScheduleDate]
    ADD CONSTRAINT [BellScheduleDate_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[BellScheduleGradeLevel_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[BellScheduleGradeLevel]
    ADD CONSTRAINT [BellScheduleGradeLevel_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[CalendarDateCalendarEvent_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[CalendarDateCalendarEvent]
    ADD CONSTRAINT [CalendarDateCalendarEvent_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[CalendarGradeLevel_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[CalendarGradeLevel]
    ADD CONSTRAINT [CalendarGradeLevel_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[ChartOfAccountReportingTag_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[ChartOfAccountReportingTag]
    ADD CONSTRAINT [ChartOfAccountReportingTag_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[ClassPeriodMeetingTime_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[ClassPeriodMeetingTime]
    ADD CONSTRAINT [ClassPeriodMeetingTime_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[CohortProgram_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[CohortProgram]
    ADD CONSTRAINT [CohortProgram_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[ContactAddress_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[ContactAddress]
    ADD CONSTRAINT [ContactAddress_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[ContactAddressPeriod_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[ContactAddressPeriod]
    ADD CONSTRAINT [ContactAddressPeriod_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[ContactElectronicMail_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[ContactElectronicMail]
    ADD CONSTRAINT [ContactElectronicMail_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[ContactInternationalAddress_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[ContactInternationalAddress]
    ADD CONSTRAINT [ContactInternationalAddress_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[ContactLanguage_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[ContactLanguage]
    ADD CONSTRAINT [ContactLanguage_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[ContactLanguageUse_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[ContactLanguageUse]
    ADD CONSTRAINT [ContactLanguageUse_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[ContactOtherName_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[ContactOtherName]
    ADD CONSTRAINT [ContactOtherName_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[ContactPersonalIdentificationDocument_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[ContactPersonalIdentificationDocument]
    ADD CONSTRAINT [ContactPersonalIdentificationDocument_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[ContactTelephone_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[ContactTelephone]
    ADD CONSTRAINT [ContactTelephone_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[CourseAcademicSubject_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[CourseAcademicSubject]
    ADD CONSTRAINT [CourseAcademicSubject_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[CourseCompetencyLevel_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[CourseCompetencyLevel]
    ADD CONSTRAINT [CourseCompetencyLevel_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[CourseIdentificationCode_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[CourseIdentificationCode]
    ADD CONSTRAINT [CourseIdentificationCode_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[CourseLearningStandard_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[CourseLearningStandard]
    ADD CONSTRAINT [CourseLearningStandard_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[CourseLevelCharacteristic_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[CourseLevelCharacteristic]
    ADD CONSTRAINT [CourseLevelCharacteristic_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[CourseOfferedGradeLevel_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[CourseOfferedGradeLevel]
    ADD CONSTRAINT [CourseOfferedGradeLevel_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[CourseOfferingCourseLevelCharacteristic_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[CourseOfferingCourseLevelCharacteristic]
    ADD CONSTRAINT [CourseOfferingCourseLevelCharacteristic_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[CourseOfferingCurriculumUsed_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[CourseOfferingCurriculumUsed]
    ADD CONSTRAINT [CourseOfferingCurriculumUsed_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[CourseOfferingOfferedGradeLevel_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[CourseOfferingOfferedGradeLevel]
    ADD CONSTRAINT [CourseOfferingOfferedGradeLevel_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[CourseTranscriptAcademicSubject_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[CourseTranscriptAcademicSubject]
    ADD CONSTRAINT [CourseTranscriptAcademicSubject_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[CourseTranscriptAlternativeCourseIdentificationCode_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[CourseTranscriptAlternativeCourseIdentificationCode]
    ADD CONSTRAINT [CourseTranscriptAlternativeCourseIdentificationCode_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[CourseTranscriptCourseProgram_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[CourseTranscriptCourseProgram]
    ADD CONSTRAINT [CourseTranscriptCourseProgram_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[CourseTranscriptCreditCategory_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[CourseTranscriptCreditCategory]
    ADD CONSTRAINT [CourseTranscriptCreditCategory_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[CourseTranscriptEarnedAdditionalCredits_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[CourseTranscriptEarnedAdditionalCredits]
    ADD CONSTRAINT [CourseTranscriptEarnedAdditionalCredits_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[CourseTranscriptPartialCourseTranscriptAwards_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[CourseTranscriptPartialCourseTranscriptAwards]
    ADD CONSTRAINT [CourseTranscriptPartialCourseTranscriptAwards_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[CourseTranscriptSection_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[CourseTranscriptSection]
    ADD CONSTRAINT [CourseTranscriptSection_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[CredentialAcademicSubject_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[CredentialAcademicSubject]
    ADD CONSTRAINT [CredentialAcademicSubject_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[CredentialEndorsement_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[CredentialEndorsement]
    ADD CONSTRAINT [CredentialEndorsement_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[CredentialGradeLevel_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[CredentialGradeLevel]
    ADD CONSTRAINT [CredentialGradeLevel_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[DescriptorMappingModelEntity_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[DescriptorMappingModelEntity]
    ADD CONSTRAINT [DescriptorMappingModelEntity_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[DisciplineActionDiscipline_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[DisciplineActionDiscipline]
    ADD CONSTRAINT [DisciplineActionDiscipline_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[DisciplineActionStaff_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[DisciplineActionStaff]
    ADD CONSTRAINT [DisciplineActionStaff_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[DisciplineActionStudentDisciplineIncidentBehaviorAssociation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[DisciplineActionStudentDisciplineIncidentBehaviorAssociation]
    ADD CONSTRAINT [DisciplineActionStudentDisciplineIncidentBehaviorAssociation_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[DisciplineIncidentBehavior_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[DisciplineIncidentBehavior]
    ADD CONSTRAINT [DisciplineIncidentBehavior_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[DisciplineIncidentExternalParticipant_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[DisciplineIncidentExternalParticipant]
    ADD CONSTRAINT [DisciplineIncidentExternalParticipant_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[DisciplineIncidentWeapon_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[DisciplineIncidentWeapon]
    ADD CONSTRAINT [DisciplineIncidentWeapon_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[EducationContentAppropriateGradeLevel_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[EducationContentAppropriateGradeLevel]
    ADD CONSTRAINT [EducationContentAppropriateGradeLevel_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[EducationContentAppropriateSex_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[EducationContentAppropriateSex]
    ADD CONSTRAINT [EducationContentAppropriateSex_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[EducationContentAuthor_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[EducationContentAuthor]
    ADD CONSTRAINT [EducationContentAuthor_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[EducationContentDerivativeSourceEducationContent_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[EducationContentDerivativeSourceEducationContent]
    ADD CONSTRAINT [EducationContentDerivativeSourceEducationContent_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[EducationContentDerivativeSourceLearningResourceMetadataURI_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[EducationContentDerivativeSourceLearningResourceMetadataURI]
    ADD CONSTRAINT [EducationContentDerivativeSourceLearningResourceMetadataURI_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[EducationContentDerivativeSourceURI_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[EducationContentDerivativeSourceURI]
    ADD CONSTRAINT [EducationContentDerivativeSourceURI_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[EducationContentLanguage_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[EducationContentLanguage]
    ADD CONSTRAINT [EducationContentLanguage_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[EducationOrganizationAddress_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[EducationOrganizationAddress]
    ADD CONSTRAINT [EducationOrganizationAddress_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[EducationOrganizationAddressPeriod_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[EducationOrganizationAddressPeriod]
    ADD CONSTRAINT [EducationOrganizationAddressPeriod_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[EducationOrganizationCategory_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[EducationOrganizationCategory]
    ADD CONSTRAINT [EducationOrganizationCategory_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[EducationOrganizationIdentificationCode_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[EducationOrganizationIdentificationCode]
    ADD CONSTRAINT [EducationOrganizationIdentificationCode_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[EducationOrganizationIndicator_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[EducationOrganizationIndicator]
    ADD CONSTRAINT [EducationOrganizationIndicator_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[EducationOrganizationIndicatorPeriod_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[EducationOrganizationIndicatorPeriod]
    ADD CONSTRAINT [EducationOrganizationIndicatorPeriod_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[EducationOrganizationInstitutionTelephone_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[EducationOrganizationInstitutionTelephone]
    ADD CONSTRAINT [EducationOrganizationInstitutionTelephone_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[EducationOrganizationInternationalAddress_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[EducationOrganizationInternationalAddress]
    ADD CONSTRAINT [EducationOrganizationInternationalAddress_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[FunctionDimensionReportingTag_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[FunctionDimensionReportingTag]
    ADD CONSTRAINT [FunctionDimensionReportingTag_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[FundDimensionReportingTag_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[FundDimensionReportingTag]
    ADD CONSTRAINT [FundDimensionReportingTag_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[GeneralStudentProgramAssociationProgramParticipationStatus_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[GeneralStudentProgramAssociationProgramParticipationStatus]
    ADD CONSTRAINT [GeneralStudentProgramAssociationProgramParticipationStatus_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[GradebookEntryLearningStandard_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[GradebookEntryLearningStandard]
    ADD CONSTRAINT [GradebookEntryLearningStandard_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[GradeLearningStandardGrade_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[GradeLearningStandardGrade]
    ADD CONSTRAINT [GradeLearningStandardGrade_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[GraduationPlanCreditsByCourse_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[GraduationPlanCreditsByCourse]
    ADD CONSTRAINT [GraduationPlanCreditsByCourse_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[GraduationPlanCreditsByCourseCourse_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[GraduationPlanCreditsByCourseCourse]
    ADD CONSTRAINT [GraduationPlanCreditsByCourseCourse_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[GraduationPlanCreditsByCreditCategory_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[GraduationPlanCreditsByCreditCategory]
    ADD CONSTRAINT [GraduationPlanCreditsByCreditCategory_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[GraduationPlanCreditsBySubject_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[GraduationPlanCreditsBySubject]
    ADD CONSTRAINT [GraduationPlanCreditsBySubject_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[GraduationPlanRequiredAssessment_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[GraduationPlanRequiredAssessment]
    ADD CONSTRAINT [GraduationPlanRequiredAssessment_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[GraduationPlanRequiredAssessmentPerformanceLevel_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[GraduationPlanRequiredAssessmentPerformanceLevel]
    ADD CONSTRAINT [GraduationPlanRequiredAssessmentPerformanceLevel_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[GraduationPlanRequiredAssessmentScore_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[GraduationPlanRequiredAssessmentScore]
    ADD CONSTRAINT [GraduationPlanRequiredAssessmentScore_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[InterventionAppropriateGradeLevel_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[InterventionAppropriateGradeLevel]
    ADD CONSTRAINT [InterventionAppropriateGradeLevel_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[InterventionAppropriateSex_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[InterventionAppropriateSex]
    ADD CONSTRAINT [InterventionAppropriateSex_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[InterventionDiagnosis_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[InterventionDiagnosis]
    ADD CONSTRAINT [InterventionDiagnosis_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[InterventionEducationContent_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[InterventionEducationContent]
    ADD CONSTRAINT [InterventionEducationContent_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[InterventionInterventionPrescription_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[InterventionInterventionPrescription]
    ADD CONSTRAINT [InterventionInterventionPrescription_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[InterventionLearningResourceMetadataURI_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[InterventionLearningResourceMetadataURI]
    ADD CONSTRAINT [InterventionLearningResourceMetadataURI_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[InterventionMeetingTime_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[InterventionMeetingTime]
    ADD CONSTRAINT [InterventionMeetingTime_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[InterventionPopulationServed_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[InterventionPopulationServed]
    ADD CONSTRAINT [InterventionPopulationServed_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[InterventionPrescriptionAppropriateGradeLevel_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[InterventionPrescriptionAppropriateGradeLevel]
    ADD CONSTRAINT [InterventionPrescriptionAppropriateGradeLevel_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[InterventionPrescriptionAppropriateSex_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[InterventionPrescriptionAppropriateSex]
    ADD CONSTRAINT [InterventionPrescriptionAppropriateSex_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[InterventionPrescriptionDiagnosis_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[InterventionPrescriptionDiagnosis]
    ADD CONSTRAINT [InterventionPrescriptionDiagnosis_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[InterventionPrescriptionEducationContent_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[InterventionPrescriptionEducationContent]
    ADD CONSTRAINT [InterventionPrescriptionEducationContent_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[InterventionPrescriptionLearningResourceMetadataURI_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[InterventionPrescriptionLearningResourceMetadataURI]
    ADD CONSTRAINT [InterventionPrescriptionLearningResourceMetadataURI_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[InterventionPrescriptionPopulationServed_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[InterventionPrescriptionPopulationServed]
    ADD CONSTRAINT [InterventionPrescriptionPopulationServed_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[InterventionPrescriptionURI_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[InterventionPrescriptionURI]
    ADD CONSTRAINT [InterventionPrescriptionURI_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[InterventionStaff_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[InterventionStaff]
    ADD CONSTRAINT [InterventionStaff_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[InterventionStudyAppropriateGradeLevel_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[InterventionStudyAppropriateGradeLevel]
    ADD CONSTRAINT [InterventionStudyAppropriateGradeLevel_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[InterventionStudyAppropriateSex_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[InterventionStudyAppropriateSex]
    ADD CONSTRAINT [InterventionStudyAppropriateSex_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[InterventionStudyEducationContent_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[InterventionStudyEducationContent]
    ADD CONSTRAINT [InterventionStudyEducationContent_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[InterventionStudyInterventionEffectiveness_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[InterventionStudyInterventionEffectiveness]
    ADD CONSTRAINT [InterventionStudyInterventionEffectiveness_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[InterventionStudyLearningResourceMetadataURI_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[InterventionStudyLearningResourceMetadataURI]
    ADD CONSTRAINT [InterventionStudyLearningResourceMetadataURI_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[InterventionStudyPopulationServed_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[InterventionStudyPopulationServed]
    ADD CONSTRAINT [InterventionStudyPopulationServed_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[InterventionStudyStateAbbreviation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[InterventionStudyStateAbbreviation]
    ADD CONSTRAINT [InterventionStudyStateAbbreviation_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[InterventionStudyURI_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[InterventionStudyURI]
    ADD CONSTRAINT [InterventionStudyURI_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[InterventionURI_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[InterventionURI]
    ADD CONSTRAINT [InterventionURI_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[LearningStandardAcademicSubject_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[LearningStandardAcademicSubject]
    ADD CONSTRAINT [LearningStandardAcademicSubject_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[LearningStandardContentStandard_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[LearningStandardContentStandard]
    ADD CONSTRAINT [LearningStandardContentStandard_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[LearningStandardContentStandardAuthor_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[LearningStandardContentStandardAuthor]
    ADD CONSTRAINT [LearningStandardContentStandardAuthor_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[LearningStandardGradeLevel_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[LearningStandardGradeLevel]
    ADD CONSTRAINT [LearningStandardGradeLevel_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[LearningStandardIdentificationCode_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[LearningStandardIdentificationCode]
    ADD CONSTRAINT [LearningStandardIdentificationCode_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[LocalAccountReportingTag_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[LocalAccountReportingTag]
    ADD CONSTRAINT [LocalAccountReportingTag_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[LocalEducationAgencyAccountability_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[LocalEducationAgencyAccountability]
    ADD CONSTRAINT [LocalEducationAgencyAccountability_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[LocalEducationAgencyFederalFunds_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[LocalEducationAgencyFederalFunds]
    ADD CONSTRAINT [LocalEducationAgencyFederalFunds_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[ObjectDimensionReportingTag_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[ObjectDimensionReportingTag]
    ADD CONSTRAINT [ObjectDimensionReportingTag_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[ObjectiveAssessmentAssessmentItem_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[ObjectiveAssessmentAssessmentItem]
    ADD CONSTRAINT [ObjectiveAssessmentAssessmentItem_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[ObjectiveAssessmentLearningStandard_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[ObjectiveAssessmentLearningStandard]
    ADD CONSTRAINT [ObjectiveAssessmentLearningStandard_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[ObjectiveAssessmentPerformanceLevel_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[ObjectiveAssessmentPerformanceLevel]
    ADD CONSTRAINT [ObjectiveAssessmentPerformanceLevel_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[ObjectiveAssessmentScore_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[ObjectiveAssessmentScore]
    ADD CONSTRAINT [ObjectiveAssessmentScore_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[OpenStaffPositionAcademicSubject_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[OpenStaffPositionAcademicSubject]
    ADD CONSTRAINT [OpenStaffPositionAcademicSubject_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[OpenStaffPositionInstructionalGradeLevel_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[OpenStaffPositionInstructionalGradeLevel]
    ADD CONSTRAINT [OpenStaffPositionInstructionalGradeLevel_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[OperationalUnitDimensionReportingTag_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[OperationalUnitDimensionReportingTag]
    ADD CONSTRAINT [OperationalUnitDimensionReportingTag_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[PostSecondaryInstitutionMediumOfInstruction_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[PostSecondaryInstitutionMediumOfInstruction]
    ADD CONSTRAINT [PostSecondaryInstitutionMediumOfInstruction_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[ProgramCharacteristic_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[ProgramCharacteristic]
    ADD CONSTRAINT [ProgramCharacteristic_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[ProgramDimensionReportingTag_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[ProgramDimensionReportingTag]
    ADD CONSTRAINT [ProgramDimensionReportingTag_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[ProgramEvaluationElementProgramEvaluationLevel_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[ProgramEvaluationElementProgramEvaluationLevel]
    ADD CONSTRAINT [ProgramEvaluationElementProgramEvaluationLevel_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[ProgramEvaluationLevel_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[ProgramEvaluationLevel]
    ADD CONSTRAINT [ProgramEvaluationLevel_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[ProgramEvaluationObjectiveProgramEvaluationLevel_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[ProgramEvaluationObjectiveProgramEvaluationLevel]
    ADD CONSTRAINT [ProgramEvaluationObjectiveProgramEvaluationLevel_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[ProgramLearningStandard_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[ProgramLearningStandard]
    ADD CONSTRAINT [ProgramLearningStandard_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[ProgramSponsor_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[ProgramSponsor]
    ADD CONSTRAINT [ProgramSponsor_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[ProjectDimensionReportingTag_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[ProjectDimensionReportingTag]
    ADD CONSTRAINT [ProjectDimensionReportingTag_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[ReportCardGrade_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[ReportCardGrade]
    ADD CONSTRAINT [ReportCardGrade_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[ReportCardGradePointAverage_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[ReportCardGradePointAverage]
    ADD CONSTRAINT [ReportCardGradePointAverage_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[ReportCardStudentCompetencyObjective_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[ReportCardStudentCompetencyObjective]
    ADD CONSTRAINT [ReportCardStudentCompetencyObjective_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[RestraintEventProgram_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[RestraintEventProgram]
    ADD CONSTRAINT [RestraintEventProgram_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[RestraintEventReason_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[RestraintEventReason]
    ADD CONSTRAINT [RestraintEventReason_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[SchoolCategory_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[SchoolCategory]
    ADD CONSTRAINT [SchoolCategory_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[SchoolGradeLevel_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[SchoolGradeLevel]
    ADD CONSTRAINT [SchoolGradeLevel_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[SectionCharacteristic_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[SectionCharacteristic]
    ADD CONSTRAINT [SectionCharacteristic_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[SectionClassPeriod_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[SectionClassPeriod]
    ADD CONSTRAINT [SectionClassPeriod_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[SectionCourseLevelCharacteristic_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[SectionCourseLevelCharacteristic]
    ADD CONSTRAINT [SectionCourseLevelCharacteristic_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[SectionOfferedGradeLevel_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[SectionOfferedGradeLevel]
    ADD CONSTRAINT [SectionOfferedGradeLevel_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[SectionProgram_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[SectionProgram]
    ADD CONSTRAINT [SectionProgram_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[SessionAcademicWeek_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[SessionAcademicWeek]
    ADD CONSTRAINT [SessionAcademicWeek_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[SessionGradingPeriod_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[SessionGradingPeriod]
    ADD CONSTRAINT [SessionGradingPeriod_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[SourceDimensionReportingTag_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[SourceDimensionReportingTag]
    ADD CONSTRAINT [SourceDimensionReportingTag_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StaffAddress_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StaffAddress]
    ADD CONSTRAINT [StaffAddress_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StaffAddressPeriod_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StaffAddressPeriod]
    ADD CONSTRAINT [StaffAddressPeriod_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StaffAncestryEthnicOrigin_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StaffAncestryEthnicOrigin]
    ADD CONSTRAINT [StaffAncestryEthnicOrigin_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StaffCredential_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StaffCredential]
    ADD CONSTRAINT [StaffCredential_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StaffDisciplineIncidentAssociationDisciplineIncidentParticipationCode_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StaffDisciplineIncidentAssociationDisciplineIncidentParticipationCode]
    ADD CONSTRAINT [StaffDisciplineIncidentAssociationDisciplineIncidentParticipationCode_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StaffEducationOrganizationContactAssociationAddress_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StaffEducationOrganizationContactAssociationAddress]
    ADD CONSTRAINT [StaffEducationOrganizationContactAssociationAddress_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StaffEducationOrganizationContactAssociationAddressPeriod_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StaffEducationOrganizationContactAssociationAddressPeriod]
    ADD CONSTRAINT [StaffEducationOrganizationContactAssociationAddressPeriod_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StaffEducationOrganizationContactAssociationTelephone_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StaffEducationOrganizationContactAssociationTelephone]
    ADD CONSTRAINT [StaffEducationOrganizationContactAssociationTelephone_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StaffElectronicMail_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StaffElectronicMail]
    ADD CONSTRAINT [StaffElectronicMail_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StaffIdentificationCode_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StaffIdentificationCode]
    ADD CONSTRAINT [StaffIdentificationCode_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StaffIdentificationDocument_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StaffIdentificationDocument]
    ADD CONSTRAINT [StaffIdentificationDocument_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StaffInternationalAddress_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StaffInternationalAddress]
    ADD CONSTRAINT [StaffInternationalAddress_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StaffLanguage_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StaffLanguage]
    ADD CONSTRAINT [StaffLanguage_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StaffLanguageUse_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StaffLanguageUse]
    ADD CONSTRAINT [StaffLanguageUse_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StaffOtherName_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StaffOtherName]
    ADD CONSTRAINT [StaffOtherName_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StaffPersonalIdentificationDocument_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StaffPersonalIdentificationDocument]
    ADD CONSTRAINT [StaffPersonalIdentificationDocument_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StaffRace_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StaffRace]
    ADD CONSTRAINT [StaffRace_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StaffRecognition_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StaffRecognition]
    ADD CONSTRAINT [StaffRecognition_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StaffSchoolAssociationAcademicSubject_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StaffSchoolAssociationAcademicSubject]
    ADD CONSTRAINT [StaffSchoolAssociationAcademicSubject_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StaffSchoolAssociationGradeLevel_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StaffSchoolAssociationGradeLevel]
    ADD CONSTRAINT [StaffSchoolAssociationGradeLevel_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StaffTelephone_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StaffTelephone]
    ADD CONSTRAINT [StaffTelephone_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StaffTribalAffiliation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StaffTribalAffiliation]
    ADD CONSTRAINT [StaffTribalAffiliation_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StaffVisa_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StaffVisa]
    ADD CONSTRAINT [StaffVisa_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StateEducationAgencyAccountability_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StateEducationAgencyAccountability]
    ADD CONSTRAINT [StateEducationAgencyAccountability_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StateEducationAgencyFederalFunds_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StateEducationAgencyFederalFunds]
    ADD CONSTRAINT [StateEducationAgencyFederalFunds_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentAcademicRecordAcademicHonor_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentAcademicRecordAcademicHonor]
    ADD CONSTRAINT [StudentAcademicRecordAcademicHonor_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentAcademicRecordClassRanking_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentAcademicRecordClassRanking]
    ADD CONSTRAINT [StudentAcademicRecordClassRanking_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentAcademicRecordDiploma_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentAcademicRecordDiploma]
    ADD CONSTRAINT [StudentAcademicRecordDiploma_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentAcademicRecordGradePointAverage_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentAcademicRecordGradePointAverage]
    ADD CONSTRAINT [StudentAcademicRecordGradePointAverage_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentAcademicRecordRecognition_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentAcademicRecordRecognition]
    ADD CONSTRAINT [StudentAcademicRecordRecognition_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentAcademicRecordReportCard_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentAcademicRecordReportCard]
    ADD CONSTRAINT [StudentAcademicRecordReportCard_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentAssessmentAccommodation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentAssessmentAccommodation]
    ADD CONSTRAINT [StudentAssessmentAccommodation_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentAssessmentItem_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentAssessmentItem]
    ADD CONSTRAINT [StudentAssessmentItem_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentAssessmentPerformanceLevel_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentAssessmentPerformanceLevel]
    ADD CONSTRAINT [StudentAssessmentPerformanceLevel_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentAssessmentPeriod_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentAssessmentPeriod]
    ADD CONSTRAINT [StudentAssessmentPeriod_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentAssessmentScoreResult_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentAssessmentScoreResult]
    ADD CONSTRAINT [StudentAssessmentScoreResult_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentAssessmentStudentObjectiveAssessment_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentAssessmentStudentObjectiveAssessment]
    ADD CONSTRAINT [StudentAssessmentStudentObjectiveAssessment_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentAssessmentStudentObjectiveAssessmentPerformanceLevel_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentAssessmentStudentObjectiveAssessmentPerformanceLevel]
    ADD CONSTRAINT [StudentAssessmentStudentObjectiveAssessmentPerformanceLevel_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentAssessmentStudentObjectiveAssessmentScoreResult_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentAssessmentStudentObjectiveAssessmentScoreResult]
    ADD CONSTRAINT [StudentAssessmentStudentObjectiveAssessmentScoreResult_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentCohortAssociationSection_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentCohortAssociationSection]
    ADD CONSTRAINT [StudentCohortAssociationSection_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentCompetencyObjectiveGeneralStudentProgramAssociation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentCompetencyObjectiveGeneralStudentProgramAssociation]
    ADD CONSTRAINT [StudentCompetencyObjectiveGeneralStudentProgramAssociation_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentCompetencyObjectiveStudentSectionAssociation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentCompetencyObjectiveStudentSectionAssociation]
    ADD CONSTRAINT [StudentCompetencyObjectiveStudentSectionAssociation_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentCTEProgramAssociationCTEProgramService_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentCTEProgramAssociationCTEProgramService]
    ADD CONSTRAINT [StudentCTEProgramAssociationCTEProgramService_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentDisciplineIncidentBehaviorAssociationDisciplineIncidentParticipationCode_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentDisciplineIncidentBehaviorAssociationDisciplineIncidentParticipationCode]
    ADD CONSTRAINT [StudentDisciplineIncidentBehaviorAssociationDisciplineIncidentParticipationCode_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentDisciplineIncidentNonOffenderAssociationDisciplineIncidentParticipationCode_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentDisciplineIncidentNonOffenderAssociationDisciplineIncidentParticipationCode]
    ADD CONSTRAINT [StudentDisciplineIncidentNonOffenderAssociationDisciplineIncidentParticipationCode_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentEducationOrganizationAssociationAddress_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationAddress]
    ADD CONSTRAINT [StudentEducationOrganizationAssociationAddress_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentEducationOrganizationAssociationAddressPeriod_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationAddressPeriod]
    ADD CONSTRAINT [StudentEducationOrganizationAssociationAddressPeriod_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentEducationOrganizationAssociationAncestryEthnicOrigin_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationAncestryEthnicOrigin]
    ADD CONSTRAINT [StudentEducationOrganizationAssociationAncestryEthnicOrigin_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentEducationOrganizationAssociationCohortYear_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationCohortYear]
    ADD CONSTRAINT [StudentEducationOrganizationAssociationCohortYear_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentEducationOrganizationAssociationDisability_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationDisability]
    ADD CONSTRAINT [StudentEducationOrganizationAssociationDisability_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentEducationOrganizationAssociationDisabilityDesignation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationDisabilityDesignation]
    ADD CONSTRAINT [StudentEducationOrganizationAssociationDisabilityDesignation_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentEducationOrganizationAssociationDisplacedStudent_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationDisplacedStudent]
    ADD CONSTRAINT [StudentEducationOrganizationAssociationDisplacedStudent_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentEducationOrganizationAssociationElectronicMail_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationElectronicMail]
    ADD CONSTRAINT [StudentEducationOrganizationAssociationElectronicMail_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentEducationOrganizationAssociationInternationalAddress_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationInternationalAddress]
    ADD CONSTRAINT [StudentEducationOrganizationAssociationInternationalAddress_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentEducationOrganizationAssociationLanguage_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationLanguage]
    ADD CONSTRAINT [StudentEducationOrganizationAssociationLanguage_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentEducationOrganizationAssociationLanguageUse_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationLanguageUse]
    ADD CONSTRAINT [StudentEducationOrganizationAssociationLanguageUse_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentEducationOrganizationAssociationRace_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationRace]
    ADD CONSTRAINT [StudentEducationOrganizationAssociationRace_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentEducationOrganizationAssociationStudentCharacteristic_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationStudentCharacteristic]
    ADD CONSTRAINT [StudentEducationOrganizationAssociationStudentCharacteristic_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentEducationOrganizationAssociationStudentCharacteristicPeriod_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationStudentCharacteristicPeriod]
    ADD CONSTRAINT [StudentEducationOrganizationAssociationStudentCharacteristicPeriod_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentEducationOrganizationAssociationStudentIdentificationCode_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationStudentIdentificationCode]
    ADD CONSTRAINT [StudentEducationOrganizationAssociationStudentIdentificationCode_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentEducationOrganizationAssociationStudentIndicator_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationStudentIndicator]
    ADD CONSTRAINT [StudentEducationOrganizationAssociationStudentIndicator_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentEducationOrganizationAssociationStudentIndicatorPeriod_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationStudentIndicatorPeriod]
    ADD CONSTRAINT [StudentEducationOrganizationAssociationStudentIndicatorPeriod_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentEducationOrganizationAssociationTelephone_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationTelephone]
    ADD CONSTRAINT [StudentEducationOrganizationAssociationTelephone_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentEducationOrganizationAssociationTribalAffiliation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationTribalAffiliation]
    ADD CONSTRAINT [StudentEducationOrganizationAssociationTribalAffiliation_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentHealthAdditionalImmunization_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentHealthAdditionalImmunization]
    ADD CONSTRAINT [StudentHealthAdditionalImmunization_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentHealthAdditionalImmunizationDate_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentHealthAdditionalImmunizationDate]
    ADD CONSTRAINT [StudentHealthAdditionalImmunizationDate_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentHealthRequiredImmunization_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentHealthRequiredImmunization]
    ADD CONSTRAINT [StudentHealthRequiredImmunization_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentHealthRequiredImmunizationDate_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentHealthRequiredImmunizationDate]
    ADD CONSTRAINT [StudentHealthRequiredImmunizationDate_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentHomelessProgramAssociationHomelessProgramService_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentHomelessProgramAssociationHomelessProgramService]
    ADD CONSTRAINT [StudentHomelessProgramAssociationHomelessProgramService_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentIdentificationDocument_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentIdentificationDocument]
    ADD CONSTRAINT [StudentIdentificationDocument_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentInterventionAssociationInterventionEffectiveness_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentInterventionAssociationInterventionEffectiveness]
    ADD CONSTRAINT [StudentInterventionAssociationInterventionEffectiveness_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentLanguageInstructionProgramAssociationEnglishLanguageProficiencyAssessment_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentLanguageInstructionProgramAssociationEnglishLanguageProficiencyAssessment]
    ADD CONSTRAINT [StudentLanguageInstructionProgramAssociationEnglishLanguageProficiencyAssessment_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentLanguageInstructionProgramAssociationLanguageInstructionProgramService_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentLanguageInstructionProgramAssociationLanguageInstructionProgramService]
    ADD CONSTRAINT [StudentLanguageInstructionProgramAssociationLanguageInstructionProgramService_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentMigrantEducationProgramAssociationMigrantEducationProgramService_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentMigrantEducationProgramAssociationMigrantEducationProgramService]
    ADD CONSTRAINT [StudentMigrantEducationProgramAssociationMigrantEducationProgramService_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentNeglectedOrDelinquentProgramAssociationNeglectedOrDelinquentProgramService_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentNeglectedOrDelinquentProgramAssociationNeglectedOrDelinquentProgramService]
    ADD CONSTRAINT [StudentNeglectedOrDelinquentProgramAssociationNeglectedOrDelinquentProgramService_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentOtherName_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentOtherName]
    ADD CONSTRAINT [StudentOtherName_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentPersonalIdentificationDocument_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentPersonalIdentificationDocument]
    ADD CONSTRAINT [StudentPersonalIdentificationDocument_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentProgramAssociationService_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentProgramAssociationService]
    ADD CONSTRAINT [StudentProgramAssociationService_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentProgramEvaluationExternalEvaluator_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentProgramEvaluationExternalEvaluator]
    ADD CONSTRAINT [StudentProgramEvaluationExternalEvaluator_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentProgramEvaluationStudentEvaluationElement_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentProgramEvaluationStudentEvaluationElement]
    ADD CONSTRAINT [StudentProgramEvaluationStudentEvaluationElement_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentProgramEvaluationStudentEvaluationObjective_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentProgramEvaluationStudentEvaluationObjective]
    ADD CONSTRAINT [StudentProgramEvaluationStudentEvaluationObjective_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentSchoolAssociationAlternativeGraduationPlan_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentSchoolAssociationAlternativeGraduationPlan]
    ADD CONSTRAINT [StudentSchoolAssociationAlternativeGraduationPlan_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentSchoolAssociationEducationPlan_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentSchoolAssociationEducationPlan]
    ADD CONSTRAINT [StudentSchoolAssociationEducationPlan_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentSchoolFoodServiceProgramAssociationSchoolFoodServiceProgramService_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentSchoolFoodServiceProgramAssociationSchoolFoodServiceProgramService]
    ADD CONSTRAINT [StudentSchoolFoodServiceProgramAssociationSchoolFoodServiceProgramService_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentSectionAssociationProgram_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentSectionAssociationProgram]
    ADD CONSTRAINT [StudentSectionAssociationProgram_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentSectionAttendanceEventClassPeriod_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentSectionAttendanceEventClassPeriod]
    ADD CONSTRAINT [StudentSectionAttendanceEventClassPeriod_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentSpecialEducationProgramAssociationDisability_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentSpecialEducationProgramAssociationDisability]
    ADD CONSTRAINT [StudentSpecialEducationProgramAssociationDisability_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentSpecialEducationProgramAssociationDisabilityDesignation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentSpecialEducationProgramAssociationDisabilityDesignation]
    ADD CONSTRAINT [StudentSpecialEducationProgramAssociationDisabilityDesignation_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentSpecialEducationProgramAssociationServiceProvider_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentSpecialEducationProgramAssociationServiceProvider]
    ADD CONSTRAINT [StudentSpecialEducationProgramAssociationServiceProvider_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentSpecialEducationProgramAssociationSpecialEducationProgramService_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentSpecialEducationProgramAssociationSpecialEducationProgramService]
    ADD CONSTRAINT [StudentSpecialEducationProgramAssociationSpecialEducationProgramService_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider]
    ADD CONSTRAINT [StudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentTitleIPartAProgramAssociationTitleIPartAProgramService_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentTitleIPartAProgramAssociationTitleIPartAProgramService]
    ADD CONSTRAINT [StudentTitleIPartAProgramAssociationTitleIPartAProgramService_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentTransportationStudentBusDetails_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentTransportationStudentBusDetails]
    ADD CONSTRAINT [StudentTransportationStudentBusDetails_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentTransportationStudentBusDetailsTravelDayofWeek_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentTransportationStudentBusDetailsTravelDayofWeek]
    ADD CONSTRAINT [StudentTransportationStudentBusDetailsTravelDayofWeek_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentTransportationStudentBusDetailsTravelDirection_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentTransportationStudentBusDetailsTravelDirection]
    ADD CONSTRAINT [StudentTransportationStudentBusDetailsTravelDirection_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentVisa_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentVisa]
    ADD CONSTRAINT [StudentVisa_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[SurveyQuestionMatrix_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[SurveyQuestionMatrix]
    ADD CONSTRAINT [SurveyQuestionMatrix_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[SurveyQuestionResponseChoice_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[SurveyQuestionResponseChoice]
    ADD CONSTRAINT [SurveyQuestionResponseChoice_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[SurveyQuestionResponseSurveyQuestionMatrixElementResponse_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[SurveyQuestionResponseSurveyQuestionMatrixElementResponse]
    ADD CONSTRAINT [SurveyQuestionResponseSurveyQuestionMatrixElementResponse_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[SurveyQuestionResponseValue_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[SurveyQuestionResponseValue]
    ADD CONSTRAINT [SurveyQuestionResponseValue_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[SurveyResponseSurveyLevel_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[SurveyResponseSurveyLevel]
    ADD CONSTRAINT [SurveyResponseSurveyLevel_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [tpdm].[CandidateAddress_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[CandidateAddress]
    ADD CONSTRAINT [CandidateAddress_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [tpdm].[CandidateAddressPeriod_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[CandidateAddressPeriod]
    ADD CONSTRAINT [CandidateAddressPeriod_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [tpdm].[CandidateDisability_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[CandidateDisability]
    ADD CONSTRAINT [CandidateDisability_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [tpdm].[CandidateDisabilityDesignation_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[CandidateDisabilityDesignation]
    ADD CONSTRAINT [CandidateDisabilityDesignation_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [tpdm].[CandidateEducatorPreparationProgramAssociationCohortYear_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[CandidateEducatorPreparationProgramAssociationCohortYear]
    ADD CONSTRAINT [CandidateEducatorPreparationProgramAssociationCohortYear_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [tpdm].[CandidateEducatorPreparationProgramAssociationDegreeSpecialization_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[CandidateEducatorPreparationProgramAssociationDegreeSpecialization]
    ADD CONSTRAINT [CandidateEducatorPreparationProgramAssociationDegreeSpecialization_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [tpdm].[CandidateElectronicMail_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[CandidateElectronicMail]
    ADD CONSTRAINT [CandidateElectronicMail_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [tpdm].[CandidateLanguage_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[CandidateLanguage]
    ADD CONSTRAINT [CandidateLanguage_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [tpdm].[CandidateLanguageUse_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[CandidateLanguageUse]
    ADD CONSTRAINT [CandidateLanguageUse_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [tpdm].[CandidateOtherName_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[CandidateOtherName]
    ADD CONSTRAINT [CandidateOtherName_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [tpdm].[CandidatePersonalIdentificationDocument_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[CandidatePersonalIdentificationDocument]
    ADD CONSTRAINT [CandidatePersonalIdentificationDocument_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [tpdm].[CandidateRace_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[CandidateRace]
    ADD CONSTRAINT [CandidateRace_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [tpdm].[CandidateTelephone_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[CandidateTelephone]
    ADD CONSTRAINT [CandidateTelephone_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [tpdm].[CredentialExtension_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[CredentialExtension]
    ADD CONSTRAINT [CredentialExtension_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [tpdm].[CredentialStudentAcademicRecord_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[CredentialStudentAcademicRecord]
    ADD CONSTRAINT [CredentialStudentAcademicRecord_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [tpdm].[EducatorPreparationProgramGradeLevel_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[EducatorPreparationProgramGradeLevel]
    ADD CONSTRAINT [EducatorPreparationProgramGradeLevel_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [tpdm].[EvaluationElementRatingLevel_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[EvaluationElementRatingLevel]
    ADD CONSTRAINT [EvaluationElementRatingLevel_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [tpdm].[EvaluationElementRatingResult_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[EvaluationElementRatingResult]
    ADD CONSTRAINT [EvaluationElementRatingResult_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [tpdm].[EvaluationObjectiveRatingLevel_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[EvaluationObjectiveRatingLevel]
    ADD CONSTRAINT [EvaluationObjectiveRatingLevel_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [tpdm].[EvaluationObjectiveRatingResult_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[EvaluationObjectiveRatingResult]
    ADD CONSTRAINT [EvaluationObjectiveRatingResult_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [tpdm].[EvaluationRatingLevel_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[EvaluationRatingLevel]
    ADD CONSTRAINT [EvaluationRatingLevel_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [tpdm].[EvaluationRatingResult_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[EvaluationRatingResult]
    ADD CONSTRAINT [EvaluationRatingResult_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [tpdm].[EvaluationRatingReviewer_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[EvaluationRatingReviewer]
    ADD CONSTRAINT [EvaluationRatingReviewer_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [tpdm].[EvaluationRatingReviewerReceivedTraining_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[EvaluationRatingReviewerReceivedTraining]
    ADD CONSTRAINT [EvaluationRatingReviewerReceivedTraining_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [tpdm].[PerformanceEvaluationGradeLevel_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[PerformanceEvaluationGradeLevel]
    ADD CONSTRAINT [PerformanceEvaluationGradeLevel_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [tpdm].[PerformanceEvaluationRatingLevel_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[PerformanceEvaluationRatingLevel]
    ADD CONSTRAINT [PerformanceEvaluationRatingLevel_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [tpdm].[PerformanceEvaluationRatingResult_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[PerformanceEvaluationRatingResult]
    ADD CONSTRAINT [PerformanceEvaluationRatingResult_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [tpdm].[PerformanceEvaluationRatingReviewer_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[PerformanceEvaluationRatingReviewer]
    ADD CONSTRAINT [PerformanceEvaluationRatingReviewer_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [tpdm].[PerformanceEvaluationRatingReviewerReceivedTraining_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[PerformanceEvaluationRatingReviewerReceivedTraining]
    ADD CONSTRAINT [PerformanceEvaluationRatingReviewerReceivedTraining_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [tpdm].[SchoolExtension_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[SchoolExtension]
    ADD CONSTRAINT [SchoolExtension_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [tpdm].[SurveyResponseExtension_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[SurveyResponseExtension]
    ADD CONSTRAINT [SurveyResponseExtension_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[AssessmentAdministration_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[AssessmentAdministration]
    ADD CONSTRAINT [AssessmentAdministration_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[AssessmentAdministration_DF_Id]...';


GO
ALTER TABLE [edfi].[AssessmentAdministration]
    ADD CONSTRAINT [AssessmentAdministration_DF_Id] DEFAULT (newid()) FOR [Id];


GO
PRINT N'Creating Default Constraint [edfi].[AssessmentAdministration_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[AssessmentAdministration]
    ADD CONSTRAINT [AssessmentAdministration_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[AssessmentAdministrationAssessmentBatteryPart_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[AssessmentAdministrationAssessmentBatteryPart]
    ADD CONSTRAINT [AssessmentAdministrationAssessmentBatteryPart_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[AssessmentAdministrationParticipation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[AssessmentAdministrationParticipation]
    ADD CONSTRAINT [AssessmentAdministrationParticipation_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[AssessmentAdministrationParticipation_DF_Id]...';


GO
ALTER TABLE [edfi].[AssessmentAdministrationParticipation]
    ADD CONSTRAINT [AssessmentAdministrationParticipation_DF_Id] DEFAULT (newid()) FOR [Id];


GO
PRINT N'Creating Default Constraint [edfi].[AssessmentAdministrationParticipation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[AssessmentAdministrationParticipation]
    ADD CONSTRAINT [AssessmentAdministrationParticipation_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[AssessmentAdministrationParticipationAdministrationPointOfContact_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[AssessmentAdministrationParticipationAdministrationPointOfContact]
    ADD CONSTRAINT [AssessmentAdministrationParticipationAdministrationPointOfContact_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[AssessmentAdministrationPeriod_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[AssessmentAdministrationPeriod]
    ADD CONSTRAINT [AssessmentAdministrationPeriod_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[AssessmentBatteryPart_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[AssessmentBatteryPart]
    ADD CONSTRAINT [AssessmentBatteryPart_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[AssessmentBatteryPart_DF_Id]...';


GO
ALTER TABLE [edfi].[AssessmentBatteryPart]
    ADD CONSTRAINT [AssessmentBatteryPart_DF_Id] DEFAULT (newid()) FOR [Id];


GO
PRINT N'Creating Default Constraint [edfi].[AssessmentBatteryPart_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[AssessmentBatteryPart]
    ADD CONSTRAINT [AssessmentBatteryPart_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[AssessmentBatteryPartObjectiveAssessment_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[AssessmentBatteryPartObjectiveAssessment]
    ADD CONSTRAINT [AssessmentBatteryPartObjectiveAssessment_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentAssessmentRegistration_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentAssessmentRegistration]
    ADD CONSTRAINT [StudentAssessmentRegistration_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentAssessmentRegistration_DF_Id]...';


GO
ALTER TABLE [edfi].[StudentAssessmentRegistration]
    ADD CONSTRAINT [StudentAssessmentRegistration_DF_Id] DEFAULT (newid()) FOR [Id];


GO
PRINT N'Creating Default Constraint [edfi].[StudentAssessmentRegistration_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[StudentAssessmentRegistration]
    ADD CONSTRAINT [StudentAssessmentRegistration_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentAssessmentRegistrationAssessmentAccommodation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentAssessmentRegistrationAssessmentAccommodation]
    ADD CONSTRAINT [StudentAssessmentRegistrationAssessmentAccommodation_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentAssessmentRegistrationAssessmentCustomization_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentAssessmentRegistrationAssessmentCustomization]
    ADD CONSTRAINT [StudentAssessmentRegistrationAssessmentCustomization_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentAssessmentRegistrationBatteryPartAssociation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentAssessmentRegistrationBatteryPartAssociation]
    ADD CONSTRAINT [StudentAssessmentRegistrationBatteryPartAssociation_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentAssessmentRegistrationBatteryPartAssociation_DF_Id]...';


GO
ALTER TABLE [edfi].[StudentAssessmentRegistrationBatteryPartAssociation]
    ADD CONSTRAINT [StudentAssessmentRegistrationBatteryPartAssociation_DF_Id] DEFAULT (newid()) FOR [Id];


GO
PRINT N'Creating Default Constraint [edfi].[StudentAssessmentRegistrationBatteryPartAssociation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[StudentAssessmentRegistrationBatteryPartAssociation]
    ADD CONSTRAINT [StudentAssessmentRegistrationBatteryPartAssociation_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentAssessmentRegistrationBatteryPartAssociationAccommodation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentAssessmentRegistrationBatteryPartAssociationAccommodation]
    ADD CONSTRAINT [StudentAssessmentRegistrationBatteryPartAssociationAccommodation_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentDisciplineIncidentBehaviorAssociationWeapon_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentDisciplineIncidentBehaviorAssociationWeapon]
    ADD CONSTRAINT [StudentDisciplineIncidentBehaviorAssociationWeapon_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentEducationOrganizationAssessmentAccommodation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssessmentAccommodation]
    ADD CONSTRAINT [StudentEducationOrganizationAssessmentAccommodation_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentEducationOrganizationAssessmentAccommodation_DF_Id]...';


GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssessmentAccommodation]
    ADD CONSTRAINT [StudentEducationOrganizationAssessmentAccommodation_DF_Id] DEFAULT (newid()) FOR [Id];


GO
PRINT N'Creating Default Constraint [edfi].[StudentEducationOrganizationAssessmentAccommodation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssessmentAccommodation]
    ADD CONSTRAINT [StudentEducationOrganizationAssessmentAccommodation_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentEducationOrganizationAssessmentAccommodationGeneralAccommodation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssessmentAccommodationGeneralAccommodation]
    ADD CONSTRAINT [StudentEducationOrganizationAssessmentAccommodationGeneralAccommodation_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Sequence [edfi].[AcademicWeek_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[AcademicWeek_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[AccountabilityRating_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[AccountabilityRating_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[Assessment_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[Assessment_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[AssessmentAdministration_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[AssessmentAdministration_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[AssessmentAdministrationParticipation_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[AssessmentAdministrationParticipation_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[AssessmentBatteryPart_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[AssessmentBatteryPart_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[AssessmentItem_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[AssessmentItem_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[AssessmentScoreRangeLearningStandard_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[AssessmentScoreRangeLearningStandard_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[BalanceSheetDimension_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[BalanceSheetDimension_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[BellSchedule_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[BellSchedule_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[Calendar_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[Calendar_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[CalendarDate_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[CalendarDate_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[ChartOfAccount_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[ChartOfAccount_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[ClassPeriod_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[ClassPeriod_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[Cohort_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[Cohort_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[CommunityProviderLicense_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[CommunityProviderLicense_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[CompetencyObjective_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[CompetencyObjective_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[Contact_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[Contact_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[Course_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[Course_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[CourseOffering_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[CourseOffering_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[CourseTranscript_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[CourseTranscript_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[Credential_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[Credential_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[CrisisEvent_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[CrisisEvent_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[Descriptor_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[Descriptor_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
SELECT  NEXT VALUE FOR [edfi].[Descriptor_AggSeq];

ALTER SEQUENCE [edfi].[Descriptor_AggSeq]
    INCREMENT BY 3516;

SELECT  NEXT VALUE FOR [edfi].[Descriptor_AggSeq];

ALTER SEQUENCE [edfi].[Descriptor_AggSeq]
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[DescriptorMapping_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[DescriptorMapping_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[DisciplineAction_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[DisciplineAction_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[DisciplineIncident_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[DisciplineIncident_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[EducationContent_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[EducationContent_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[EducationOrganization_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[EducationOrganization_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[EducationOrganizationInterventionPrescriptionAssociation_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[EducationOrganizationInterventionPrescriptionAssociation_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[EducationOrganizationNetworkAssociation_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[EducationOrganizationNetworkAssociation_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[EducationOrganizationPeerAssociation_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[EducationOrganizationPeerAssociation_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[EvaluationRubricDimension_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[EvaluationRubricDimension_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[FeederSchoolAssociation_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[FeederSchoolAssociation_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[FunctionDimension_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[FunctionDimension_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[FundDimension_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[FundDimension_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[GeneralStudentProgramAssociation_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[GeneralStudentProgramAssociation_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[Grade_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[Grade_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[GradebookEntry_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[GradebookEntry_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[GradingPeriod_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[GradingPeriod_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[GraduationPlan_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[GraduationPlan_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[Intervention_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[Intervention_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[InterventionPrescription_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[InterventionPrescription_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[InterventionStudy_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[InterventionStudy_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[LearningStandard_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[LearningStandard_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[LearningStandardEquivalenceAssociation_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[LearningStandardEquivalenceAssociation_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[LocalAccount_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[LocalAccount_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[LocalActual_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[LocalActual_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[LocalBudget_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[LocalBudget_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[LocalContractedStaff_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[LocalContractedStaff_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[LocalEncumbrance_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[LocalEncumbrance_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[LocalPayroll_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[LocalPayroll_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[Location_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[Location_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[ObjectDimension_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[ObjectDimension_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[ObjectiveAssessment_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[ObjectiveAssessment_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[OpenStaffPosition_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[OpenStaffPosition_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[OperationalUnitDimension_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[OperationalUnitDimension_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[Person_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[Person_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[PostSecondaryEvent_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[PostSecondaryEvent_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[Program_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[Program_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[ProgramDimension_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[ProgramDimension_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[ProgramEvaluation_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[ProgramEvaluation_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[ProgramEvaluationElement_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[ProgramEvaluationElement_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[ProgramEvaluationObjective_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[ProgramEvaluationObjective_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[ProjectDimension_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[ProjectDimension_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[ReportCard_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[ReportCard_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[RestraintEvent_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[RestraintEvent_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[SchoolYearType_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[SchoolYearType_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
SELECT  NEXT VALUE FOR [edfi].[SchoolYearType_AggSeq];

ALTER SEQUENCE [edfi].[SchoolYearType_AggSeq]
    INCREMENT BY 59;

SELECT  NEXT VALUE FOR [edfi].[SchoolYearType_AggSeq];

ALTER SEQUENCE [edfi].[SchoolYearType_AggSeq]
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[Section_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[Section_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[SectionAttendanceTakenEvent_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[SectionAttendanceTakenEvent_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[Session_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[Session_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[SourceDimension_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[SourceDimension_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[Staff_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[Staff_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[StaffAbsenceEvent_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[StaffAbsenceEvent_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[StaffCohortAssociation_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[StaffCohortAssociation_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[StaffDisciplineIncidentAssociation_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[StaffDisciplineIncidentAssociation_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[StaffEducationOrganizationAssignmentAssociation_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[StaffEducationOrganizationAssignmentAssociation_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[StaffEducationOrganizationContactAssociation_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[StaffEducationOrganizationContactAssociation_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[StaffEducationOrganizationEmploymentAssociation_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[StaffEducationOrganizationEmploymentAssociation_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[StaffLeave_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[StaffLeave_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[StaffProgramAssociation_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[StaffProgramAssociation_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[StaffSchoolAssociation_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[StaffSchoolAssociation_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[StaffSectionAssociation_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[StaffSectionAssociation_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[Student_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[Student_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[StudentAcademicRecord_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[StudentAcademicRecord_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[StudentAssessment_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[StudentAssessment_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[StudentAssessmentEducationOrganizationAssociation_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[StudentAssessmentEducationOrganizationAssociation_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[StudentAssessmentRegistration_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[StudentAssessmentRegistration_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[StudentAssessmentRegistrationBatteryPartAssociation_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[StudentAssessmentRegistrationBatteryPartAssociation_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[StudentCohortAssociation_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[StudentCohortAssociation_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[StudentCompetencyObjective_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[StudentCompetencyObjective_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[StudentContactAssociation_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[StudentContactAssociation_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[StudentDisciplineIncidentBehaviorAssociation_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[StudentDisciplineIncidentBehaviorAssociation_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[StudentDisciplineIncidentNonOffenderAssociation_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[StudentDisciplineIncidentNonOffenderAssociation_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[StudentEducationOrganizationAssessmentAccommodation_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[StudentEducationOrganizationAssessmentAccommodation_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[StudentEducationOrganizationAssociation_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[StudentEducationOrganizationAssociation_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[StudentEducationOrganizationResponsibilityAssociation_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[StudentEducationOrganizationResponsibilityAssociation_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[StudentGradebookEntry_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[StudentGradebookEntry_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[StudentHealth_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[StudentHealth_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[StudentInterventionAssociation_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[StudentInterventionAssociation_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[StudentInterventionAttendanceEvent_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[StudentInterventionAttendanceEvent_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[StudentProgramAttendanceEvent_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[StudentProgramAttendanceEvent_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[StudentProgramEvaluation_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[StudentProgramEvaluation_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[StudentSchoolAssociation_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[StudentSchoolAssociation_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[StudentSchoolAttendanceEvent_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[StudentSchoolAttendanceEvent_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[StudentSectionAssociation_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[StudentSectionAssociation_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[StudentSectionAttendanceEvent_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[StudentSectionAttendanceEvent_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[StudentSpecialEducationProgramEligibilityAssociation_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[StudentSpecialEducationProgramEligibilityAssociation_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[StudentTransportation_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[StudentTransportation_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[Survey_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[Survey_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[SurveyCourseAssociation_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[SurveyCourseAssociation_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[SurveyProgramAssociation_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[SurveyProgramAssociation_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[SurveyQuestion_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[SurveyQuestion_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[SurveyQuestionResponse_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[SurveyQuestionResponse_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[SurveyResponse_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[SurveyResponse_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[SurveyResponseEducationOrganizationTargetAssociation_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[SurveyResponseEducationOrganizationTargetAssociation_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[SurveyResponseStaffTargetAssociation_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[SurveyResponseStaffTargetAssociation_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[SurveySection_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[SurveySection_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[SurveySectionAssociation_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[SurveySectionAssociation_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[SurveySectionResponse_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[SurveySectionResponse_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[SurveySectionResponseEducationOrganizationTargetAssociation_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[SurveySectionResponseEducationOrganizationTargetAssociation_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [edfi].[SurveySectionResponseStaffTargetAssociation_AggSeq]...';


GO
CREATE SEQUENCE [edfi].[SurveySectionResponseStaffTargetAssociation_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [tpdm].[Candidate_AggSeq]...';


GO
CREATE SEQUENCE [tpdm].[Candidate_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [tpdm].[CandidateEducatorPreparationProgramAssociation_AggSeq]...';


GO
CREATE SEQUENCE [tpdm].[CandidateEducatorPreparationProgramAssociation_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [tpdm].[EducatorPreparationProgram_AggSeq]...';


GO
CREATE SEQUENCE [tpdm].[EducatorPreparationProgram_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [tpdm].[Evaluation_AggSeq]...';


GO
CREATE SEQUENCE [tpdm].[Evaluation_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [tpdm].[EvaluationElement_AggSeq]...';


GO
CREATE SEQUENCE [tpdm].[EvaluationElement_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [tpdm].[EvaluationElementRating_AggSeq]...';


GO
CREATE SEQUENCE [tpdm].[EvaluationElementRating_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [tpdm].[EvaluationObjective_AggSeq]...';


GO
CREATE SEQUENCE [tpdm].[EvaluationObjective_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [tpdm].[EvaluationObjectiveRating_AggSeq]...';


GO
CREATE SEQUENCE [tpdm].[EvaluationObjectiveRating_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [tpdm].[EvaluationRating_AggSeq]...';


GO
CREATE SEQUENCE [tpdm].[EvaluationRating_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [tpdm].[FinancialAid_AggSeq]...';


GO
CREATE SEQUENCE [tpdm].[FinancialAid_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [tpdm].[PerformanceEvaluation_AggSeq]...';


GO
CREATE SEQUENCE [tpdm].[PerformanceEvaluation_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [tpdm].[PerformanceEvaluationRating_AggSeq]...';


GO
CREATE SEQUENCE [tpdm].[PerformanceEvaluationRating_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [tpdm].[RubricDimension_AggSeq]...';


GO
CREATE SEQUENCE [tpdm].[RubricDimension_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [tpdm].[SurveyResponsePersonTargetAssociation_AggSeq]...';


GO
CREATE SEQUENCE [tpdm].[SurveyResponsePersonTargetAssociation_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Sequence [tpdm].[SurveySectionResponsePersonTargetAssociation_AggSeq]...';


GO
CREATE SEQUENCE [tpdm].[SurveySectionResponsePersonTargetAssociation_AggSeq]
    AS BIGINT
    START WITH -2147483648
    INCREMENT BY 1;


GO
PRINT N'Creating Default Constraint unnamed constraint on [edfi].[AssessmentAdministration]...';


GO
ALTER TABLE [edfi].[AssessmentAdministration]
    ADD DEFAULT (NEXT VALUE FOR [edfi].[AssessmentAdministration_AggSeq]) FOR [AggregateId];


GO
PRINT N'Creating Default Constraint unnamed constraint on [edfi].[AssessmentAdministrationParticipation]...';


GO
ALTER TABLE [edfi].[AssessmentAdministrationParticipation]
    ADD DEFAULT (NEXT VALUE FOR [edfi].[AssessmentAdministrationParticipation_AggSeq]) FOR [AggregateId];


GO
PRINT N'Creating Default Constraint unnamed constraint on [edfi].[AssessmentBatteryPart]...';


GO
ALTER TABLE [edfi].[AssessmentBatteryPart]
    ADD DEFAULT (NEXT VALUE FOR [edfi].[AssessmentBatteryPart_AggSeq]) FOR [AggregateId];


GO
PRINT N'Creating Default Constraint unnamed constraint on [edfi].[StudentAssessmentRegistration]...';


GO
ALTER TABLE [edfi].[StudentAssessmentRegistration]
    ADD DEFAULT (NEXT VALUE FOR [edfi].[StudentAssessmentRegistration_AggSeq]) FOR [AggregateId];


GO
PRINT N'Creating Default Constraint unnamed constraint on [edfi].[StudentAssessmentRegistrationBatteryPartAssociation]...';


GO
ALTER TABLE [edfi].[StudentAssessmentRegistrationBatteryPartAssociation]
    ADD DEFAULT (NEXT VALUE FOR [edfi].[StudentAssessmentRegistrationBatteryPartAssociation_AggSeq]) FOR [AggregateId];


GO
PRINT N'Creating Default Constraint unnamed constraint on [edfi].[StudentEducationOrganizationAssessmentAccommodation]...';


GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssessmentAccommodation]
    ADD DEFAULT (NEXT VALUE FOR [edfi].[StudentEducationOrganizationAssessmentAccommodation_AggSeq]) FOR [AggregateId];


GO
PRINT N'Altering Table [edfi].[AcademicWeek]...';


GO
ALTER TABLE [edfi].[AcademicWeek]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[AcademicWeek_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[AcademicWeek].[IX_AcademicWeek_SchoolId]...';


GO
CREATE NONCLUSTERED INDEX [IX_AcademicWeek_SchoolId]
    ON [edfi].[AcademicWeek]([SchoolId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[AcademicWeek].[IX_AcademicWeek_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_AcademicWeek_AggregateId]
    ON [edfi].[AcademicWeek]([AggregateId] ASC);


GO
PRINT N'Altering Table [edfi].[AccountabilityRating]...';


GO
ALTER TABLE [edfi].[AccountabilityRating]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[AccountabilityRating_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[AccountabilityRating].[IX_AccountabilityRating_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [IX_AccountabilityRating_EducationOrganizationId]
    ON [edfi].[AccountabilityRating]([EducationOrganizationId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[AccountabilityRating].[IX_AccountabilityRating_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_AccountabilityRating_AggregateId]
    ON [edfi].[AccountabilityRating]([AggregateId] ASC);


GO
PRINT N'Altering Table [edfi].[Assessment]...';


GO
ALTER TABLE [edfi].[Assessment]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[Assessment_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[Assessment].[IX_Assessment_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [IX_Assessment_EducationOrganizationId]
    ON [edfi].[Assessment]([EducationOrganizationId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[Assessment].[IX_Assessment_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_Assessment_AggregateId]
    ON [edfi].[Assessment]([AggregateId] ASC);


GO
PRINT N'Altering Table [edfi].[AssessmentItem]...';


GO
ALTER TABLE [edfi].[AssessmentItem]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[AssessmentItem_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[AssessmentItem].[IX_AssessmentItem_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_AssessmentItem_AggregateId]
    ON [edfi].[AssessmentItem]([AggregateId] ASC);


GO
PRINT N'Altering Table [edfi].[AssessmentScoreRangeLearningStandard]...';


GO
ALTER TABLE [edfi].[AssessmentScoreRangeLearningStandard]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[AssessmentScoreRangeLearningStandard_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[AssessmentScoreRangeLearningStandard].[IX_AssessmentScoreRangeLearningStandard_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_AssessmentScoreRangeLearningStandard_AggregateId]
    ON [edfi].[AssessmentScoreRangeLearningStandard]([AggregateId] ASC);


GO
PRINT N'Altering Table [edfi].[BalanceSheetDimension]...';


GO
ALTER TABLE [edfi].[BalanceSheetDimension]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[BalanceSheetDimension_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[BalanceSheetDimension].[IX_BalanceSheetDimension_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_BalanceSheetDimension_AggregateId]
    ON [edfi].[BalanceSheetDimension]([AggregateId] ASC);


GO
PRINT N'Altering Table [edfi].[BellSchedule]...';


GO
ALTER TABLE [edfi].[BellSchedule]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[BellSchedule_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[BellSchedule].[IX_BellSchedule_SchoolId]...';


GO
CREATE NONCLUSTERED INDEX [IX_BellSchedule_SchoolId]
    ON [edfi].[BellSchedule]([SchoolId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[BellSchedule].[IX_BellSchedule_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_BellSchedule_AggregateId]
    ON [edfi].[BellSchedule]([AggregateId] ASC);


GO
PRINT N'Altering Table [edfi].[Calendar]...';


GO
ALTER TABLE [edfi].[Calendar]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[Calendar_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[Calendar].[IX_Calendar_SchoolId]...';


GO
CREATE NONCLUSTERED INDEX [IX_Calendar_SchoolId]
    ON [edfi].[Calendar]([SchoolId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[Calendar].[IX_Calendar_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_Calendar_AggregateId]
    ON [edfi].[Calendar]([AggregateId] ASC);


GO
PRINT N'Altering Table [edfi].[CalendarDate]...';


GO
ALTER TABLE [edfi].[CalendarDate]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[CalendarDate_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[CalendarDate].[IX_CalendarDate_SchoolId]...';


GO
CREATE NONCLUSTERED INDEX [IX_CalendarDate_SchoolId]
    ON [edfi].[CalendarDate]([SchoolId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[CalendarDate].[IX_CalendarDate_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_CalendarDate_AggregateId]
    ON [edfi].[CalendarDate]([AggregateId] ASC);


GO
PRINT N'Altering Table [edfi].[ChartOfAccount]...';


GO
ALTER TABLE [edfi].[ChartOfAccount]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[ChartOfAccount_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[ChartOfAccount].[IX_ChartOfAccount_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [IX_ChartOfAccount_EducationOrganizationId]
    ON [edfi].[ChartOfAccount]([EducationOrganizationId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[ChartOfAccount].[IX_ChartOfAccount_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_ChartOfAccount_AggregateId]
    ON [edfi].[ChartOfAccount]([AggregateId] ASC);


GO
PRINT N'Altering Table [edfi].[ClassPeriod]...';


GO
ALTER TABLE [edfi].[ClassPeriod]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[ClassPeriod_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[ClassPeriod].[IX_ClassPeriod_SchoolId]...';


GO
CREATE NONCLUSTERED INDEX [IX_ClassPeriod_SchoolId]
    ON [edfi].[ClassPeriod]([SchoolId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[ClassPeriod].[IX_ClassPeriod_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_ClassPeriod_AggregateId]
    ON [edfi].[ClassPeriod]([AggregateId] ASC);


GO
PRINT N'Altering Table [edfi].[Cohort]...';


GO
ALTER TABLE [edfi].[Cohort]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[Cohort_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[Cohort].[IX_Cohort_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [IX_Cohort_EducationOrganizationId]
    ON [edfi].[Cohort]([EducationOrganizationId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[Cohort].[IX_Cohort_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_Cohort_AggregateId]
    ON [edfi].[Cohort]([AggregateId] ASC);


GO
PRINT N'Altering Table [edfi].[CommunityProviderLicense]...';


GO
ALTER TABLE [edfi].[CommunityProviderLicense]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[CommunityProviderLicense_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[CommunityProviderLicense].[IX_CommunityProviderLicense_CommunityProviderId]...';


GO
CREATE NONCLUSTERED INDEX [IX_CommunityProviderLicense_CommunityProviderId]
    ON [edfi].[CommunityProviderLicense]([CommunityProviderId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[CommunityProviderLicense].[IX_CommunityProviderLicense_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_CommunityProviderLicense_AggregateId]
    ON [edfi].[CommunityProviderLicense]([AggregateId] ASC);


GO
PRINT N'Altering Table [edfi].[CompetencyObjective]...';


GO
ALTER TABLE [edfi].[CompetencyObjective]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[CompetencyObjective_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[CompetencyObjective].[IX_CompetencyObjective_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [IX_CompetencyObjective_EducationOrganizationId]
    ON [edfi].[CompetencyObjective]([EducationOrganizationId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[CompetencyObjective].[IX_CompetencyObjective_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_CompetencyObjective_AggregateId]
    ON [edfi].[CompetencyObjective]([AggregateId] ASC);


GO
PRINT N'Altering Table [edfi].[Contact]...';


GO
ALTER TABLE [edfi].[Contact]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[Contact_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[Contact].[IX_Contact_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_Contact_AggregateId]
    ON [edfi].[Contact]([AggregateId] ASC);


GO
PRINT N'Creating Index [edfi].[Contact].[IX_Contact_ContactUSI]...';


GO
CREATE NONCLUSTERED INDEX [IX_Contact_ContactUSI]
    ON [edfi].[Contact]([ContactUSI] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Altering Table [edfi].[Course]...';


GO
ALTER TABLE [edfi].[Course]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[Course_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[Course].[IX_Course_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [IX_Course_EducationOrganizationId]
    ON [edfi].[Course]([EducationOrganizationId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[Course].[IX_Course_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_Course_AggregateId]
    ON [edfi].[Course]([AggregateId] ASC);


GO
PRINT N'Altering Table [edfi].[CourseOffering]...';


GO
ALTER TABLE [edfi].[CourseOffering]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[CourseOffering_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[CourseOffering].[IX_CourseOffering_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [IX_CourseOffering_EducationOrganizationId]
    ON [edfi].[CourseOffering]([EducationOrganizationId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[CourseOffering].[IX_CourseOffering_SchoolId]...';


GO
CREATE NONCLUSTERED INDEX [IX_CourseOffering_SchoolId]
    ON [edfi].[CourseOffering]([SchoolId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[CourseOffering].[IX_CourseOffering_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_CourseOffering_AggregateId]
    ON [edfi].[CourseOffering]([AggregateId] ASC);


GO
PRINT N'Altering Table [edfi].[CourseTranscript]...';


GO
ALTER TABLE [edfi].[CourseTranscript]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[CourseTranscript_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[CourseTranscript].[IX_CourseTranscript_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [IX_CourseTranscript_EducationOrganizationId]
    ON [edfi].[CourseTranscript]([EducationOrganizationId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[CourseTranscript].[IX_CourseTranscript_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_CourseTranscript_AggregateId]
    ON [edfi].[CourseTranscript]([AggregateId] ASC);


GO
PRINT N'Creating Index [edfi].[CourseTranscript].[IX_CourseTranscript_ResponsibleTeacherStaffUSI]...';


GO
CREATE NONCLUSTERED INDEX [IX_CourseTranscript_ResponsibleTeacherStaffUSI]
    ON [edfi].[CourseTranscript]([ResponsibleTeacherStaffUSI] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[CourseTranscript].[IX_CourseTranscript_StudentUSI]...';


GO
CREATE NONCLUSTERED INDEX [IX_CourseTranscript_StudentUSI]
    ON [edfi].[CourseTranscript]([StudentUSI] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Altering Table [edfi].[Credential]...';


GO
ALTER TABLE [edfi].[Credential]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[Credential_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[Credential].[IX_Credential_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_Credential_AggregateId]
    ON [edfi].[Credential]([AggregateId] ASC);


GO
PRINT N'Altering Table [edfi].[CrisisEvent]...';


GO
ALTER TABLE [edfi].[CrisisEvent]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[CrisisEvent_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[CrisisEvent].[IX_CrisisEvent_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_CrisisEvent_AggregateId]
    ON [edfi].[CrisisEvent]([AggregateId] ASC);


GO
PRINT N'Altering Table [edfi].[Descriptor]...';


GO
ALTER TABLE [edfi].[Descriptor]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[Descriptor_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[Descriptor].[IX_Descriptor_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_Descriptor_AggregateId]
    ON [edfi].[Descriptor]([AggregateId] ASC);


GO
PRINT N'Altering Table [edfi].[DescriptorMapping]...';


GO
ALTER TABLE [edfi].[DescriptorMapping]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[DescriptorMapping_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[DescriptorMapping].[IX_DescriptorMapping_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_DescriptorMapping_AggregateId]
    ON [edfi].[DescriptorMapping]([AggregateId] ASC);


GO
PRINT N'Altering Table [edfi].[DisciplineAction]...';


GO
ALTER TABLE [edfi].[DisciplineAction]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[DisciplineAction_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[DisciplineAction].[IX_DisciplineAction_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_DisciplineAction_AggregateId]
    ON [edfi].[DisciplineAction]([AggregateId] ASC);


GO
PRINT N'Creating Index [edfi].[DisciplineAction].[IX_DisciplineAction_StudentUSI]...';


GO
CREATE NONCLUSTERED INDEX [IX_DisciplineAction_StudentUSI]
    ON [edfi].[DisciplineAction]([StudentUSI] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Altering Table [edfi].[DisciplineIncident]...';


GO
ALTER TABLE [edfi].[DisciplineIncident]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[DisciplineIncident_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[DisciplineIncident].[IX_DisciplineIncident_SchoolId]...';


GO
CREATE NONCLUSTERED INDEX [IX_DisciplineIncident_SchoolId]
    ON [edfi].[DisciplineIncident]([SchoolId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[DisciplineIncident].[IX_DisciplineIncident_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_DisciplineIncident_AggregateId]
    ON [edfi].[DisciplineIncident]([AggregateId] ASC);


GO
PRINT N'Altering Table [edfi].[EducationContent]...';


GO
ALTER TABLE [edfi].[EducationContent]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[EducationContent_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[EducationContent].[IX_EducationContent_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_EducationContent_AggregateId]
    ON [edfi].[EducationContent]([AggregateId] ASC);


GO
PRINT N'Altering Table [edfi].[EducationOrganization]...';


GO
ALTER TABLE [edfi].[EducationOrganization]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[EducationOrganization_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[EducationOrganization].[IX_EducationOrganization_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [IX_EducationOrganization_EducationOrganizationId]
    ON [edfi].[EducationOrganization]([EducationOrganizationId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[EducationOrganization].[IX_EducationOrganization_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_EducationOrganization_AggregateId]
    ON [edfi].[EducationOrganization]([AggregateId] ASC);


GO
PRINT N'Altering Table [edfi].[EducationOrganizationInterventionPrescriptionAssociation]...';


GO
ALTER TABLE [edfi].[EducationOrganizationInterventionPrescriptionAssociation]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[EducationOrganizationInterventionPrescriptionAssociation_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[EducationOrganizationInterventionPrescriptionAssociation].[IX_EducationOrganizationInterventionPrescriptionAssociation_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [IX_EducationOrganizationInterventionPrescriptionAssociation_EducationOrganizationId]
    ON [edfi].[EducationOrganizationInterventionPrescriptionAssociation]([EducationOrganizationId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[EducationOrganizationInterventionPrescriptionAssociation].[IX_EducationOrganizationInterventionPrescriptionAssociation_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_EducationOrganizationInterventionPrescriptionAssociation_AggregateId]
    ON [edfi].[EducationOrganizationInterventionPrescriptionAssociation]([AggregateId] ASC);


GO
PRINT N'Altering Table [edfi].[EducationOrganizationNetworkAssociation]...';


GO
ALTER TABLE [edfi].[EducationOrganizationNetworkAssociation]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[EducationOrganizationNetworkAssociation_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[EducationOrganizationNetworkAssociation].[IX_EducationOrganizationNetworkAssociation_EducationOrganizationNetworkId]...';


GO
CREATE NONCLUSTERED INDEX [IX_EducationOrganizationNetworkAssociation_EducationOrganizationNetworkId]
    ON [edfi].[EducationOrganizationNetworkAssociation]([EducationOrganizationNetworkId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[EducationOrganizationNetworkAssociation].[IX_EducationOrganizationNetworkAssociation_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_EducationOrganizationNetworkAssociation_AggregateId]
    ON [edfi].[EducationOrganizationNetworkAssociation]([AggregateId] ASC);


GO
PRINT N'Altering Table [edfi].[EducationOrganizationPeerAssociation]...';


GO
ALTER TABLE [edfi].[EducationOrganizationPeerAssociation]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[EducationOrganizationPeerAssociation_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[EducationOrganizationPeerAssociation].[IX_EducationOrganizationPeerAssociation_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [IX_EducationOrganizationPeerAssociation_EducationOrganizationId]
    ON [edfi].[EducationOrganizationPeerAssociation]([EducationOrganizationId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[EducationOrganizationPeerAssociation].[IX_EducationOrganizationPeerAssociation_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_EducationOrganizationPeerAssociation_AggregateId]
    ON [edfi].[EducationOrganizationPeerAssociation]([AggregateId] ASC);


GO
PRINT N'Altering Table [edfi].[EvaluationRubricDimension]...';


GO
ALTER TABLE [edfi].[EvaluationRubricDimension]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[EvaluationRubricDimension_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[EvaluationRubricDimension].[IX_EvaluationRubricDimension_ProgramEducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [IX_EvaluationRubricDimension_ProgramEducationOrganizationId]
    ON [edfi].[EvaluationRubricDimension]([ProgramEducationOrganizationId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[EvaluationRubricDimension].[IX_EvaluationRubricDimension_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_EvaluationRubricDimension_AggregateId]
    ON [edfi].[EvaluationRubricDimension]([AggregateId] ASC);


GO
PRINT N'Altering Table [edfi].[FeederSchoolAssociation]...';


GO
ALTER TABLE [edfi].[FeederSchoolAssociation]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[FeederSchoolAssociation_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[FeederSchoolAssociation].[IX_FeederSchoolAssociation_SchoolId]...';


GO
CREATE NONCLUSTERED INDEX [IX_FeederSchoolAssociation_SchoolId]
    ON [edfi].[FeederSchoolAssociation]([SchoolId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[FeederSchoolAssociation].[IX_FeederSchoolAssociation_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_FeederSchoolAssociation_AggregateId]
    ON [edfi].[FeederSchoolAssociation]([AggregateId] ASC);


GO
PRINT N'Altering Table [edfi].[FunctionDimension]...';


GO
ALTER TABLE [edfi].[FunctionDimension]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[FunctionDimension_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[FunctionDimension].[IX_FunctionDimension_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_FunctionDimension_AggregateId]
    ON [edfi].[FunctionDimension]([AggregateId] ASC);


GO
PRINT N'Altering Table [edfi].[FundDimension]...';


GO
ALTER TABLE [edfi].[FundDimension]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[FundDimension_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[FundDimension].[IX_FundDimension_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_FundDimension_AggregateId]
    ON [edfi].[FundDimension]([AggregateId] ASC);


GO
PRINT N'Altering Table [edfi].[GeneralStudentProgramAssociation]...';


GO
ALTER TABLE [edfi].[GeneralStudentProgramAssociation]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[GeneralStudentProgramAssociation_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[GeneralStudentProgramAssociation].[IX_GeneralStudentProgramAssociation_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [IX_GeneralStudentProgramAssociation_EducationOrganizationId]
    ON [edfi].[GeneralStudentProgramAssociation]([EducationOrganizationId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[GeneralStudentProgramAssociation].[IX_GeneralStudentProgramAssociation_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_GeneralStudentProgramAssociation_AggregateId]
    ON [edfi].[GeneralStudentProgramAssociation]([AggregateId] ASC);


GO
PRINT N'Creating Index [edfi].[GeneralStudentProgramAssociation].[IX_GeneralStudentProgramAssociation_StudentUSI]...';


GO
CREATE NONCLUSTERED INDEX [IX_GeneralStudentProgramAssociation_StudentUSI]
    ON [edfi].[GeneralStudentProgramAssociation]([StudentUSI] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Altering Table [edfi].[Grade]...';


GO
ALTER TABLE [edfi].[Grade]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[Grade_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[Grade].[IX_Grade_SchoolId]...';


GO
CREATE NONCLUSTERED INDEX [IX_Grade_SchoolId]
    ON [edfi].[Grade]([SchoolId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[Grade].[IX_Grade_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_Grade_AggregateId]
    ON [edfi].[Grade]([AggregateId] ASC);


GO
PRINT N'Creating Index [edfi].[Grade].[IX_Grade_StudentUSI]...';


GO
CREATE NONCLUSTERED INDEX [IX_Grade_StudentUSI]
    ON [edfi].[Grade]([StudentUSI] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Altering Table [edfi].[GradebookEntry]...';


GO
ALTER TABLE [edfi].[GradebookEntry]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[GradebookEntry_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[GradebookEntry].[IX_GradebookEntry_SchoolId]...';


GO
CREATE NONCLUSTERED INDEX [IX_GradebookEntry_SchoolId]
    ON [edfi].[GradebookEntry]([SchoolId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[GradebookEntry].[IX_GradebookEntry_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_GradebookEntry_AggregateId]
    ON [edfi].[GradebookEntry]([AggregateId] ASC);


GO
PRINT N'Altering Table [edfi].[GradingPeriod]...';


GO
ALTER TABLE [edfi].[GradingPeriod]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[GradingPeriod_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[GradingPeriod].[IX_GradingPeriod_SchoolId]...';


GO
CREATE NONCLUSTERED INDEX [IX_GradingPeriod_SchoolId]
    ON [edfi].[GradingPeriod]([SchoolId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[GradingPeriod].[IX_GradingPeriod_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_GradingPeriod_AggregateId]
    ON [edfi].[GradingPeriod]([AggregateId] ASC);


GO
PRINT N'Altering Table [edfi].[GraduationPlan]...';


GO
ALTER TABLE [edfi].[GraduationPlan]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[GraduationPlan_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[GraduationPlan].[IX_GraduationPlan_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [IX_GraduationPlan_EducationOrganizationId]
    ON [edfi].[GraduationPlan]([EducationOrganizationId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[GraduationPlan].[IX_GraduationPlan_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_GraduationPlan_AggregateId]
    ON [edfi].[GraduationPlan]([AggregateId] ASC);


GO
PRINT N'Altering Table [edfi].[Intervention]...';


GO
ALTER TABLE [edfi].[Intervention]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[Intervention_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[Intervention].[IX_Intervention_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [IX_Intervention_EducationOrganizationId]
    ON [edfi].[Intervention]([EducationOrganizationId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[Intervention].[IX_Intervention_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_Intervention_AggregateId]
    ON [edfi].[Intervention]([AggregateId] ASC);


GO
PRINT N'Altering Table [edfi].[InterventionPrescription]...';


GO
ALTER TABLE [edfi].[InterventionPrescription]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[InterventionPrescription_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[InterventionPrescription].[IX_InterventionPrescription_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [IX_InterventionPrescription_EducationOrganizationId]
    ON [edfi].[InterventionPrescription]([EducationOrganizationId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[InterventionPrescription].[IX_InterventionPrescription_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_InterventionPrescription_AggregateId]
    ON [edfi].[InterventionPrescription]([AggregateId] ASC);


GO
PRINT N'Altering Table [edfi].[InterventionStudy]...';


GO
ALTER TABLE [edfi].[InterventionStudy]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[InterventionStudy_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[InterventionStudy].[IX_InterventionStudy_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [IX_InterventionStudy_EducationOrganizationId]
    ON [edfi].[InterventionStudy]([EducationOrganizationId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[InterventionStudy].[IX_InterventionStudy_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_InterventionStudy_AggregateId]
    ON [edfi].[InterventionStudy]([AggregateId] ASC);


GO
PRINT N'Altering Table [edfi].[LearningStandard]...';


GO
ALTER TABLE [edfi].[LearningStandard]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[LearningStandard_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[LearningStandard].[IX_LearningStandard_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_LearningStandard_AggregateId]
    ON [edfi].[LearningStandard]([AggregateId] ASC);


GO
PRINT N'Altering Table [edfi].[LearningStandardEquivalenceAssociation]...';


GO
ALTER TABLE [edfi].[LearningStandardEquivalenceAssociation]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[LearningStandardEquivalenceAssociation_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[LearningStandardEquivalenceAssociation].[IX_LearningStandardEquivalenceAssociation_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_LearningStandardEquivalenceAssociation_AggregateId]
    ON [edfi].[LearningStandardEquivalenceAssociation]([AggregateId] ASC);


GO
PRINT N'Altering Table [edfi].[LocalAccount]...';


GO
ALTER TABLE [edfi].[LocalAccount]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[LocalAccount_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[LocalAccount].[IX_LocalAccount_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [IX_LocalAccount_EducationOrganizationId]
    ON [edfi].[LocalAccount]([EducationOrganizationId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[LocalAccount].[IX_LocalAccount_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_LocalAccount_AggregateId]
    ON [edfi].[LocalAccount]([AggregateId] ASC);


GO
PRINT N'Altering Table [edfi].[LocalActual]...';


GO
ALTER TABLE [edfi].[LocalActual]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[LocalActual_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[LocalActual].[IX_LocalActual_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [IX_LocalActual_EducationOrganizationId]
    ON [edfi].[LocalActual]([EducationOrganizationId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[LocalActual].[IX_LocalActual_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_LocalActual_AggregateId]
    ON [edfi].[LocalActual]([AggregateId] ASC);


GO
PRINT N'Altering Table [edfi].[LocalBudget]...';


GO
ALTER TABLE [edfi].[LocalBudget]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[LocalBudget_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[LocalBudget].[IX_LocalBudget_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [IX_LocalBudget_EducationOrganizationId]
    ON [edfi].[LocalBudget]([EducationOrganizationId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[LocalBudget].[IX_LocalBudget_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_LocalBudget_AggregateId]
    ON [edfi].[LocalBudget]([AggregateId] ASC);


GO
PRINT N'Altering Table [edfi].[LocalContractedStaff]...';


GO
ALTER TABLE [edfi].[LocalContractedStaff]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[LocalContractedStaff_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[LocalContractedStaff].[IX_LocalContractedStaff_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [IX_LocalContractedStaff_EducationOrganizationId]
    ON [edfi].[LocalContractedStaff]([EducationOrganizationId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[LocalContractedStaff].[IX_LocalContractedStaff_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_LocalContractedStaff_AggregateId]
    ON [edfi].[LocalContractedStaff]([AggregateId] ASC);


GO
PRINT N'Creating Index [edfi].[LocalContractedStaff].[IX_LocalContractedStaff_StaffUSI]...';


GO
CREATE NONCLUSTERED INDEX [IX_LocalContractedStaff_StaffUSI]
    ON [edfi].[LocalContractedStaff]([StaffUSI] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Altering Table [edfi].[LocalEncumbrance]...';


GO
ALTER TABLE [edfi].[LocalEncumbrance]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[LocalEncumbrance_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[LocalEncumbrance].[IX_LocalEncumbrance_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [IX_LocalEncumbrance_EducationOrganizationId]
    ON [edfi].[LocalEncumbrance]([EducationOrganizationId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[LocalEncumbrance].[IX_LocalEncumbrance_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_LocalEncumbrance_AggregateId]
    ON [edfi].[LocalEncumbrance]([AggregateId] ASC);


GO
PRINT N'Altering Table [edfi].[LocalPayroll]...';


GO
ALTER TABLE [edfi].[LocalPayroll]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[LocalPayroll_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[LocalPayroll].[IX_LocalPayroll_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [IX_LocalPayroll_EducationOrganizationId]
    ON [edfi].[LocalPayroll]([EducationOrganizationId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[LocalPayroll].[IX_LocalPayroll_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_LocalPayroll_AggregateId]
    ON [edfi].[LocalPayroll]([AggregateId] ASC);


GO
PRINT N'Creating Index [edfi].[LocalPayroll].[IX_LocalPayroll_StaffUSI]...';


GO
CREATE NONCLUSTERED INDEX [IX_LocalPayroll_StaffUSI]
    ON [edfi].[LocalPayroll]([StaffUSI] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Altering Table [edfi].[Location]...';


GO
ALTER TABLE [edfi].[Location]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[Location_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[Location].[IX_Location_SchoolId]...';


GO
CREATE NONCLUSTERED INDEX [IX_Location_SchoolId]
    ON [edfi].[Location]([SchoolId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[Location].[IX_Location_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_Location_AggregateId]
    ON [edfi].[Location]([AggregateId] ASC);


GO
PRINT N'Altering Table [edfi].[ObjectDimension]...';


GO
ALTER TABLE [edfi].[ObjectDimension]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[ObjectDimension_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[ObjectDimension].[IX_ObjectDimension_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_ObjectDimension_AggregateId]
    ON [edfi].[ObjectDimension]([AggregateId] ASC);


GO
PRINT N'Altering Table [edfi].[ObjectiveAssessment]...';


GO
ALTER TABLE [edfi].[ObjectiveAssessment]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[ObjectiveAssessment_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[ObjectiveAssessment].[IX_ObjectiveAssessment_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_ObjectiveAssessment_AggregateId]
    ON [edfi].[ObjectiveAssessment]([AggregateId] ASC);


GO
PRINT N'Altering Table [edfi].[OpenStaffPosition]...';


GO
ALTER TABLE [edfi].[OpenStaffPosition]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[OpenStaffPosition_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[OpenStaffPosition].[IX_OpenStaffPosition_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [IX_OpenStaffPosition_EducationOrganizationId]
    ON [edfi].[OpenStaffPosition]([EducationOrganizationId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[OpenStaffPosition].[IX_OpenStaffPosition_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_OpenStaffPosition_AggregateId]
    ON [edfi].[OpenStaffPosition]([AggregateId] ASC);


GO
PRINT N'Altering Table [edfi].[OperationalUnitDimension]...';


GO
ALTER TABLE [edfi].[OperationalUnitDimension]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[OperationalUnitDimension_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[OperationalUnitDimension].[IX_OperationalUnitDimension_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_OperationalUnitDimension_AggregateId]
    ON [edfi].[OperationalUnitDimension]([AggregateId] ASC);


GO
PRINT N'Altering Table [edfi].[Person]...';


GO
ALTER TABLE [edfi].[Person]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[Person_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[Person].[IX_Person_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_Person_AggregateId]
    ON [edfi].[Person]([AggregateId] ASC);


GO
PRINT N'Altering Table [edfi].[PostSecondaryEvent]...';


GO
ALTER TABLE [edfi].[PostSecondaryEvent]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[PostSecondaryEvent_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[PostSecondaryEvent].[IX_PostSecondaryEvent_PostSecondaryInstitutionId]...';


GO
CREATE NONCLUSTERED INDEX [IX_PostSecondaryEvent_PostSecondaryInstitutionId]
    ON [edfi].[PostSecondaryEvent]([PostSecondaryInstitutionId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[PostSecondaryEvent].[IX_PostSecondaryEvent_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_PostSecondaryEvent_AggregateId]
    ON [edfi].[PostSecondaryEvent]([AggregateId] ASC);


GO
PRINT N'Creating Index [edfi].[PostSecondaryEvent].[IX_PostSecondaryEvent_StudentUSI]...';


GO
CREATE NONCLUSTERED INDEX [IX_PostSecondaryEvent_StudentUSI]
    ON [edfi].[PostSecondaryEvent]([StudentUSI] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Altering Table [edfi].[Program]...';


GO
ALTER TABLE [edfi].[Program]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[Program_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[Program].[IX_Program_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [IX_Program_EducationOrganizationId]
    ON [edfi].[Program]([EducationOrganizationId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[Program].[IX_Program_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_Program_AggregateId]
    ON [edfi].[Program]([AggregateId] ASC);


GO
PRINT N'Altering Table [edfi].[ProgramDimension]...';


GO
ALTER TABLE [edfi].[ProgramDimension]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[ProgramDimension_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[ProgramDimension].[IX_ProgramDimension_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_ProgramDimension_AggregateId]
    ON [edfi].[ProgramDimension]([AggregateId] ASC);


GO
PRINT N'Altering Table [edfi].[ProgramEvaluation]...';


GO
ALTER TABLE [edfi].[ProgramEvaluation]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[ProgramEvaluation_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[ProgramEvaluation].[IX_ProgramEvaluation_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_ProgramEvaluation_AggregateId]
    ON [edfi].[ProgramEvaluation]([AggregateId] ASC);


GO
PRINT N'Altering Table [edfi].[ProgramEvaluationElement]...';


GO
ALTER TABLE [edfi].[ProgramEvaluationElement]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[ProgramEvaluationElement_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[ProgramEvaluationElement].[IX_ProgramEvaluationElement_ProgramEducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [IX_ProgramEvaluationElement_ProgramEducationOrganizationId]
    ON [edfi].[ProgramEvaluationElement]([ProgramEducationOrganizationId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[ProgramEvaluationElement].[IX_ProgramEvaluationElement_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_ProgramEvaluationElement_AggregateId]
    ON [edfi].[ProgramEvaluationElement]([AggregateId] ASC);


GO
PRINT N'Altering Table [edfi].[ProgramEvaluationObjective]...';


GO
ALTER TABLE [edfi].[ProgramEvaluationObjective]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[ProgramEvaluationObjective_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[ProgramEvaluationObjective].[IX_ProgramEvaluationObjective_ProgramEducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [IX_ProgramEvaluationObjective_ProgramEducationOrganizationId]
    ON [edfi].[ProgramEvaluationObjective]([ProgramEducationOrganizationId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[ProgramEvaluationObjective].[IX_ProgramEvaluationObjective_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_ProgramEvaluationObjective_AggregateId]
    ON [edfi].[ProgramEvaluationObjective]([AggregateId] ASC);


GO
PRINT N'Altering Table [edfi].[ProjectDimension]...';


GO
ALTER TABLE [edfi].[ProjectDimension]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[ProjectDimension_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[ProjectDimension].[IX_ProjectDimension_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_ProjectDimension_AggregateId]
    ON [edfi].[ProjectDimension]([AggregateId] ASC);


GO
PRINT N'Altering Table [edfi].[ReportCard]...';


GO
ALTER TABLE [edfi].[ReportCard]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[ReportCard_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[ReportCard].[IX_ReportCard_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [IX_ReportCard_EducationOrganizationId]
    ON [edfi].[ReportCard]([EducationOrganizationId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[ReportCard].[IX_ReportCard_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_ReportCard_AggregateId]
    ON [edfi].[ReportCard]([AggregateId] ASC);


GO
PRINT N'Creating Index [edfi].[ReportCard].[IX_ReportCard_StudentUSI]...';


GO
CREATE NONCLUSTERED INDEX [IX_ReportCard_StudentUSI]
    ON [edfi].[ReportCard]([StudentUSI] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Starting rebuilding table [edfi].[RestraintEvent]...';


GO
BEGIN TRANSACTION;

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

SET XACT_ABORT ON;

CREATE TABLE [edfi].[tmp_ms_xx_RestraintEvent] (
    [RestraintEventIdentifier]           NVARCHAR (36)    NOT NULL,
    [SchoolId]                           BIGINT           NOT NULL,
    [StudentUSI]                         INT              NOT NULL,
    [EducationalEnvironmentDescriptorId] INT              NULL,
    [EventDate]                          DATE             NOT NULL,
    [IncidentIdentifier]                 NVARCHAR (36)    NULL,
    [Discriminator]                      NVARCHAR (128)   NULL,
    [CreateDate]                         DATETIME2 (7)    CONSTRAINT [RestraintEvent_DF_CreateDate] DEFAULT (getutcdate()) NOT NULL,
    [LastModifiedDate]                   DATETIME2 (7)    CONSTRAINT [RestraintEvent_DF_LastModifiedDate] DEFAULT (getutcdate()) NOT NULL,
    [Id]                                 UNIQUEIDENTIFIER CONSTRAINT [RestraintEvent_DF_Id] DEFAULT (newid()) NOT NULL,
    [AggregateId]                        INT              DEFAULT ( NEXT VALUE FOR [edfi].[RestraintEvent_AggSeq]) NOT NULL,
    [AggregateData]                      VARBINARY (8000) NULL,
    CONSTRAINT [tmp_ms_xx_constraint_RestraintEvent_PK1] PRIMARY KEY CLUSTERED ([RestraintEventIdentifier] ASC, [SchoolId] ASC, [StudentUSI] ASC)
);

IF EXISTS (SELECT TOP 1 1 
           FROM   [edfi].[RestraintEvent])
    BEGIN
        INSERT INTO [edfi].[tmp_ms_xx_RestraintEvent] ([RestraintEventIdentifier], [SchoolId], [StudentUSI], [EducationalEnvironmentDescriptorId], [EventDate], [Discriminator], [CreateDate], [LastModifiedDate], [Id])
        SELECT   [RestraintEventIdentifier],
                 [SchoolId],
                 [StudentUSI],
                 [EducationalEnvironmentDescriptorId],
                 [EventDate],
                 [Discriminator],
                 [CreateDate],
                 [LastModifiedDate],
                 [Id]
        FROM     [edfi].[RestraintEvent]
        ORDER BY [RestraintEventIdentifier] ASC, [SchoolId] ASC, [StudentUSI] ASC;
    END

DROP TABLE [edfi].[RestraintEvent];

EXECUTE sp_rename N'[edfi].[tmp_ms_xx_RestraintEvent]', N'RestraintEvent';

EXECUTE sp_rename N'[edfi].[tmp_ms_xx_constraint_RestraintEvent_PK1]', N'RestraintEvent_PK', N'OBJECT';

COMMIT TRANSACTION;

SET TRANSACTION ISOLATION LEVEL READ COMMITTED;


GO
PRINT N'Creating Index [edfi].[RestraintEvent].[FK_RestraintEvent_DisciplineIncident]...';


GO
CREATE NONCLUSTERED INDEX [FK_RestraintEvent_DisciplineIncident]
    ON [edfi].[RestraintEvent]([IncidentIdentifier] ASC, [SchoolId] ASC);


GO
PRINT N'Creating Index [edfi].[RestraintEvent].[FK_RestraintEvent_EducationalEnvironmentDescriptor]...';


GO
CREATE NONCLUSTERED INDEX [FK_RestraintEvent_EducationalEnvironmentDescriptor]
    ON [edfi].[RestraintEvent]([EducationalEnvironmentDescriptorId] ASC);


GO
PRINT N'Creating Index [edfi].[RestraintEvent].[UX_RestraintEvent_Id]...';


GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_RestraintEvent_Id]
    ON [edfi].[RestraintEvent]([Id] ASC) WITH (FILLFACTOR = 75, PAD_INDEX = ON);


GO
PRINT N'Creating Index [edfi].[RestraintEvent].[IX_RestraintEvent_SchoolId]...';


GO
CREATE NONCLUSTERED INDEX [IX_RestraintEvent_SchoolId]
    ON [edfi].[RestraintEvent]([SchoolId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[RestraintEvent].[IX_RestraintEvent_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_RestraintEvent_AggregateId]
    ON [edfi].[RestraintEvent]([AggregateId] ASC);


GO
PRINT N'Creating Index [edfi].[RestraintEvent].[IX_RestraintEvent_StudentUSI]...';


GO
CREATE NONCLUSTERED INDEX [IX_RestraintEvent_StudentUSI]
    ON [edfi].[RestraintEvent]([StudentUSI] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Altering Table [edfi].[SchoolYearType]...';


GO
ALTER TABLE [edfi].[SchoolYearType]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[SchoolYearType_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[SchoolYearType].[IX_SchoolYearType_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_SchoolYearType_AggregateId]
    ON [edfi].[SchoolYearType]([AggregateId] ASC);


GO
PRINT N'Altering Table [edfi].[Section]...';


GO
ALTER TABLE [edfi].[Section]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[Section_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[Section].[IX_Section_SchoolId]...';


GO
CREATE NONCLUSTERED INDEX [IX_Section_SchoolId]
    ON [edfi].[Section]([SchoolId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[Section].[IX_Section_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_Section_AggregateId]
    ON [edfi].[Section]([AggregateId] ASC);


GO
PRINT N'Altering Table [edfi].[SectionAttendanceTakenEvent]...';


GO
ALTER TABLE [edfi].[SectionAttendanceTakenEvent]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[SectionAttendanceTakenEvent_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[SectionAttendanceTakenEvent].[IX_SectionAttendanceTakenEvent_SchoolId]...';


GO
CREATE NONCLUSTERED INDEX [IX_SectionAttendanceTakenEvent_SchoolId]
    ON [edfi].[SectionAttendanceTakenEvent]([SchoolId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[SectionAttendanceTakenEvent].[IX_SectionAttendanceTakenEvent_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_SectionAttendanceTakenEvent_AggregateId]
    ON [edfi].[SectionAttendanceTakenEvent]([AggregateId] ASC);


GO
PRINT N'Creating Index [edfi].[SectionAttendanceTakenEvent].[IX_SectionAttendanceTakenEvent_StaffUSI]...';


GO
CREATE NONCLUSTERED INDEX [IX_SectionAttendanceTakenEvent_StaffUSI]
    ON [edfi].[SectionAttendanceTakenEvent]([StaffUSI] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Altering Table [edfi].[Session]...';


GO
ALTER TABLE [edfi].[Session]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[Session_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[Session].[IX_Session_SchoolId]...';


GO
CREATE NONCLUSTERED INDEX [IX_Session_SchoolId]
    ON [edfi].[Session]([SchoolId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[Session].[IX_Session_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_Session_AggregateId]
    ON [edfi].[Session]([AggregateId] ASC);


GO
PRINT N'Altering Table [edfi].[SourceDimension]...';


GO
ALTER TABLE [edfi].[SourceDimension]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[SourceDimension_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[SourceDimension].[IX_SourceDimension_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_SourceDimension_AggregateId]
    ON [edfi].[SourceDimension]([AggregateId] ASC);


GO
PRINT N'Altering Table [edfi].[Staff]...';


GO
ALTER TABLE [edfi].[Staff]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[Staff_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[Staff].[IX_Staff_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_Staff_AggregateId]
    ON [edfi].[Staff]([AggregateId] ASC);


GO
PRINT N'Creating Index [edfi].[Staff].[IX_Staff_StaffUSI]...';


GO
CREATE NONCLUSTERED INDEX [IX_Staff_StaffUSI]
    ON [edfi].[Staff]([StaffUSI] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Altering Table [edfi].[StaffAbsenceEvent]...';


GO
ALTER TABLE [edfi].[StaffAbsenceEvent]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[StaffAbsenceEvent_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[StaffAbsenceEvent].[IX_StaffAbsenceEvent_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_StaffAbsenceEvent_AggregateId]
    ON [edfi].[StaffAbsenceEvent]([AggregateId] ASC);


GO
PRINT N'Creating Index [edfi].[StaffAbsenceEvent].[IX_StaffAbsenceEvent_StaffUSI]...';


GO
CREATE NONCLUSTERED INDEX [IX_StaffAbsenceEvent_StaffUSI]
    ON [edfi].[StaffAbsenceEvent]([StaffUSI] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Altering Table [edfi].[StaffCohortAssociation]...';


GO
ALTER TABLE [edfi].[StaffCohortAssociation]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[StaffCohortAssociation_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[StaffCohortAssociation].[IX_StaffCohortAssociation_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [IX_StaffCohortAssociation_EducationOrganizationId]
    ON [edfi].[StaffCohortAssociation]([EducationOrganizationId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[StaffCohortAssociation].[IX_StaffCohortAssociation_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_StaffCohortAssociation_AggregateId]
    ON [edfi].[StaffCohortAssociation]([AggregateId] ASC);


GO
PRINT N'Creating Index [edfi].[StaffCohortAssociation].[IX_StaffCohortAssociation_StaffUSI]...';


GO
CREATE NONCLUSTERED INDEX [IX_StaffCohortAssociation_StaffUSI]
    ON [edfi].[StaffCohortAssociation]([StaffUSI] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Altering Table [edfi].[StaffDisciplineIncidentAssociation]...';


GO
ALTER TABLE [edfi].[StaffDisciplineIncidentAssociation]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[StaffDisciplineIncidentAssociation_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[StaffDisciplineIncidentAssociation].[IX_StaffDisciplineIncidentAssociation_SchoolId]...';


GO
CREATE NONCLUSTERED INDEX [IX_StaffDisciplineIncidentAssociation_SchoolId]
    ON [edfi].[StaffDisciplineIncidentAssociation]([SchoolId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[StaffDisciplineIncidentAssociation].[IX_StaffDisciplineIncidentAssociation_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_StaffDisciplineIncidentAssociation_AggregateId]
    ON [edfi].[StaffDisciplineIncidentAssociation]([AggregateId] ASC);


GO
PRINT N'Creating Index [edfi].[StaffDisciplineIncidentAssociation].[IX_StaffDisciplineIncidentAssociation_StaffUSI]...';


GO
CREATE NONCLUSTERED INDEX [IX_StaffDisciplineIncidentAssociation_StaffUSI]
    ON [edfi].[StaffDisciplineIncidentAssociation]([StaffUSI] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Altering Table [edfi].[StaffEducationOrganizationAssignmentAssociation]...';


GO
ALTER TABLE [edfi].[StaffEducationOrganizationAssignmentAssociation]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[StaffEducationOrganizationAssignmentAssociation_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[StaffEducationOrganizationAssignmentAssociation].[IX_StaffEducationOrganizationAssignmentAssociation_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [IX_StaffEducationOrganizationAssignmentAssociation_EducationOrganizationId]
    ON [edfi].[StaffEducationOrganizationAssignmentAssociation]([EducationOrganizationId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[StaffEducationOrganizationAssignmentAssociation].[IX_StaffEducationOrganizationAssignmentAssociation_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_StaffEducationOrganizationAssignmentAssociation_AggregateId]
    ON [edfi].[StaffEducationOrganizationAssignmentAssociation]([AggregateId] ASC);


GO
PRINT N'Creating Index [edfi].[StaffEducationOrganizationAssignmentAssociation].[IX_StaffEducationOrganizationAssignmentAssociation_StaffUSI]...';


GO
CREATE NONCLUSTERED INDEX [IX_StaffEducationOrganizationAssignmentAssociation_StaffUSI]
    ON [edfi].[StaffEducationOrganizationAssignmentAssociation]([StaffUSI] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Altering Table [edfi].[StaffEducationOrganizationContactAssociation]...';


GO
ALTER TABLE [edfi].[StaffEducationOrganizationContactAssociation]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[StaffEducationOrganizationContactAssociation_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[StaffEducationOrganizationContactAssociation].[IX_StaffEducationOrganizationContactAssociation_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [IX_StaffEducationOrganizationContactAssociation_EducationOrganizationId]
    ON [edfi].[StaffEducationOrganizationContactAssociation]([EducationOrganizationId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[StaffEducationOrganizationContactAssociation].[IX_StaffEducationOrganizationContactAssociation_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_StaffEducationOrganizationContactAssociation_AggregateId]
    ON [edfi].[StaffEducationOrganizationContactAssociation]([AggregateId] ASC);


GO
PRINT N'Creating Index [edfi].[StaffEducationOrganizationContactAssociation].[IX_StaffEducationOrganizationContactAssociation_StaffUSI]...';


GO
CREATE NONCLUSTERED INDEX [IX_StaffEducationOrganizationContactAssociation_StaffUSI]
    ON [edfi].[StaffEducationOrganizationContactAssociation]([StaffUSI] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Altering Table [edfi].[StaffEducationOrganizationEmploymentAssociation]...';


GO
ALTER TABLE [edfi].[StaffEducationOrganizationEmploymentAssociation]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[StaffEducationOrganizationEmploymentAssociation_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[StaffEducationOrganizationEmploymentAssociation].[IX_StaffEducationOrganizationEmploymentAssociation_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [IX_StaffEducationOrganizationEmploymentAssociation_EducationOrganizationId]
    ON [edfi].[StaffEducationOrganizationEmploymentAssociation]([EducationOrganizationId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[StaffEducationOrganizationEmploymentAssociation].[IX_StaffEducationOrganizationEmploymentAssociation_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_StaffEducationOrganizationEmploymentAssociation_AggregateId]
    ON [edfi].[StaffEducationOrganizationEmploymentAssociation]([AggregateId] ASC);


GO
PRINT N'Creating Index [edfi].[StaffEducationOrganizationEmploymentAssociation].[IX_StaffEducationOrganizationEmploymentAssociation_StaffUSI]...';


GO
CREATE NONCLUSTERED INDEX [IX_StaffEducationOrganizationEmploymentAssociation_StaffUSI]
    ON [edfi].[StaffEducationOrganizationEmploymentAssociation]([StaffUSI] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Altering Table [edfi].[StaffLeave]...';


GO
ALTER TABLE [edfi].[StaffLeave]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[StaffLeave_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[StaffLeave].[IX_StaffLeave_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_StaffLeave_AggregateId]
    ON [edfi].[StaffLeave]([AggregateId] ASC);


GO
PRINT N'Creating Index [edfi].[StaffLeave].[IX_StaffLeave_StaffUSI]...';


GO
CREATE NONCLUSTERED INDEX [IX_StaffLeave_StaffUSI]
    ON [edfi].[StaffLeave]([StaffUSI] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Altering Table [edfi].[StaffProgramAssociation]...';


GO
ALTER TABLE [edfi].[StaffProgramAssociation]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[StaffProgramAssociation_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[StaffProgramAssociation].[IX_StaffProgramAssociation_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_StaffProgramAssociation_AggregateId]
    ON [edfi].[StaffProgramAssociation]([AggregateId] ASC);


GO
PRINT N'Creating Index [edfi].[StaffProgramAssociation].[IX_StaffProgramAssociation_StaffUSI]...';


GO
CREATE NONCLUSTERED INDEX [IX_StaffProgramAssociation_StaffUSI]
    ON [edfi].[StaffProgramAssociation]([StaffUSI] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Altering Table [edfi].[StaffSchoolAssociation]...';


GO
ALTER TABLE [edfi].[StaffSchoolAssociation]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[StaffSchoolAssociation_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[StaffSchoolAssociation].[IX_StaffSchoolAssociation_SchoolId]...';


GO
CREATE NONCLUSTERED INDEX [IX_StaffSchoolAssociation_SchoolId]
    ON [edfi].[StaffSchoolAssociation]([SchoolId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[StaffSchoolAssociation].[IX_StaffSchoolAssociation_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_StaffSchoolAssociation_AggregateId]
    ON [edfi].[StaffSchoolAssociation]([AggregateId] ASC);


GO
PRINT N'Creating Index [edfi].[StaffSchoolAssociation].[IX_StaffSchoolAssociation_StaffUSI]...';


GO
CREATE NONCLUSTERED INDEX [IX_StaffSchoolAssociation_StaffUSI]
    ON [edfi].[StaffSchoolAssociation]([StaffUSI] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Altering Table [edfi].[StaffSectionAssociation]...';


GO
ALTER TABLE [edfi].[StaffSectionAssociation]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[StaffSectionAssociation_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[StaffSectionAssociation].[IX_StaffSectionAssociation_SchoolId]...';


GO
CREATE NONCLUSTERED INDEX [IX_StaffSectionAssociation_SchoolId]
    ON [edfi].[StaffSectionAssociation]([SchoolId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[StaffSectionAssociation].[IX_StaffSectionAssociation_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_StaffSectionAssociation_AggregateId]
    ON [edfi].[StaffSectionAssociation]([AggregateId] ASC);


GO
PRINT N'Creating Index [edfi].[StaffSectionAssociation].[IX_StaffSectionAssociation_StaffUSI]...';


GO
CREATE NONCLUSTERED INDEX [IX_StaffSectionAssociation_StaffUSI]
    ON [edfi].[StaffSectionAssociation]([StaffUSI] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Altering Table [edfi].[Student]...';


GO
ALTER TABLE [edfi].[Student]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[Student_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[Student].[IX_Student_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_Student_AggregateId]
    ON [edfi].[Student]([AggregateId] ASC);


GO
PRINT N'Creating Index [edfi].[Student].[IX_Student_StudentUSI]...';


GO
CREATE NONCLUSTERED INDEX [IX_Student_StudentUSI]
    ON [edfi].[Student]([StudentUSI] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Altering Table [edfi].[StudentAcademicRecord]...';


GO
ALTER TABLE [edfi].[StudentAcademicRecord]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[StudentAcademicRecord_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[StudentAcademicRecord].[IX_StudentAcademicRecord_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentAcademicRecord_EducationOrganizationId]
    ON [edfi].[StudentAcademicRecord]([EducationOrganizationId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[StudentAcademicRecord].[IX_StudentAcademicRecord_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentAcademicRecord_AggregateId]
    ON [edfi].[StudentAcademicRecord]([AggregateId] ASC);


GO
PRINT N'Creating Index [edfi].[StudentAcademicRecord].[IX_StudentAcademicRecord_StudentUSI]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentAcademicRecord_StudentUSI]
    ON [edfi].[StudentAcademicRecord]([StudentUSI] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Altering Table [edfi].[StudentAssessment]...';


GO
ALTER TABLE [edfi].[StudentAssessment]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[StudentAssessment_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[StudentAssessment].[IX_StudentAssessment_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentAssessment_AggregateId]
    ON [edfi].[StudentAssessment]([AggregateId] ASC);


GO
PRINT N'Creating Index [edfi].[StudentAssessment].[IX_StudentAssessment_StudentUSI]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentAssessment_StudentUSI]
    ON [edfi].[StudentAssessment]([StudentUSI] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Altering Table [edfi].[StudentAssessmentEducationOrganizationAssociation]...';


GO
ALTER TABLE [edfi].[StudentAssessmentEducationOrganizationAssociation]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[StudentAssessmentEducationOrganizationAssociation_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[StudentAssessmentEducationOrganizationAssociation].[IX_StudentAssessmentEducationOrganizationAssociation_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentAssessmentEducationOrganizationAssociation_EducationOrganizationId]
    ON [edfi].[StudentAssessmentEducationOrganizationAssociation]([EducationOrganizationId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[StudentAssessmentEducationOrganizationAssociation].[IX_StudentAssessmentEducationOrganizationAssociation_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentAssessmentEducationOrganizationAssociation_AggregateId]
    ON [edfi].[StudentAssessmentEducationOrganizationAssociation]([AggregateId] ASC);


GO
PRINT N'Creating Index [edfi].[StudentAssessmentEducationOrganizationAssociation].[IX_StudentAssessmentEducationOrganizationAssociation_StudentUSI]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentAssessmentEducationOrganizationAssociation_StudentUSI]
    ON [edfi].[StudentAssessmentEducationOrganizationAssociation]([StudentUSI] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Altering Table [edfi].[StudentCohortAssociation]...';


GO
ALTER TABLE [edfi].[StudentCohortAssociation]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[StudentCohortAssociation_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[StudentCohortAssociation].[IX_StudentCohortAssociation_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentCohortAssociation_EducationOrganizationId]
    ON [edfi].[StudentCohortAssociation]([EducationOrganizationId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[StudentCohortAssociation].[IX_StudentCohortAssociation_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentCohortAssociation_AggregateId]
    ON [edfi].[StudentCohortAssociation]([AggregateId] ASC);


GO
PRINT N'Creating Index [edfi].[StudentCohortAssociation].[IX_StudentCohortAssociation_StudentUSI]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentCohortAssociation_StudentUSI]
    ON [edfi].[StudentCohortAssociation]([StudentUSI] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Altering Table [edfi].[StudentCompetencyObjective]...';


GO
ALTER TABLE [edfi].[StudentCompetencyObjective]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[StudentCompetencyObjective_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[StudentCompetencyObjective].[IX_StudentCompetencyObjective_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentCompetencyObjective_AggregateId]
    ON [edfi].[StudentCompetencyObjective]([AggregateId] ASC);


GO
PRINT N'Creating Index [edfi].[StudentCompetencyObjective].[IX_StudentCompetencyObjective_StudentUSI]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentCompetencyObjective_StudentUSI]
    ON [edfi].[StudentCompetencyObjective]([StudentUSI] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Altering Table [edfi].[StudentContactAssociation]...';


GO
ALTER TABLE [edfi].[StudentContactAssociation]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[StudentContactAssociation_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[StudentContactAssociation].[IX_StudentContactAssociation_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentContactAssociation_AggregateId]
    ON [edfi].[StudentContactAssociation]([AggregateId] ASC);


GO
PRINT N'Creating Index [edfi].[StudentContactAssociation].[IX_StudentContactAssociation_ContactUSI]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentContactAssociation_ContactUSI]
    ON [edfi].[StudentContactAssociation]([ContactUSI] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[StudentContactAssociation].[IX_StudentContactAssociation_StudentUSI]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentContactAssociation_StudentUSI]
    ON [edfi].[StudentContactAssociation]([StudentUSI] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Altering Table [edfi].[StudentDisciplineIncidentBehaviorAssociation]...';


GO
ALTER TABLE [edfi].[StudentDisciplineIncidentBehaviorAssociation]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[StudentDisciplineIncidentBehaviorAssociation_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[StudentDisciplineIncidentBehaviorAssociation].[IX_StudentDisciplineIncidentBehaviorAssociation_SchoolId]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentDisciplineIncidentBehaviorAssociation_SchoolId]
    ON [edfi].[StudentDisciplineIncidentBehaviorAssociation]([SchoolId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[StudentDisciplineIncidentBehaviorAssociation].[IX_StudentDisciplineIncidentBehaviorAssociation_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentDisciplineIncidentBehaviorAssociation_AggregateId]
    ON [edfi].[StudentDisciplineIncidentBehaviorAssociation]([AggregateId] ASC);


GO
PRINT N'Creating Index [edfi].[StudentDisciplineIncidentBehaviorAssociation].[IX_StudentDisciplineIncidentBehaviorAssociation_StudentUSI]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentDisciplineIncidentBehaviorAssociation_StudentUSI]
    ON [edfi].[StudentDisciplineIncidentBehaviorAssociation]([StudentUSI] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Altering Table [edfi].[StudentDisciplineIncidentNonOffenderAssociation]...';


GO
ALTER TABLE [edfi].[StudentDisciplineIncidentNonOffenderAssociation]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[StudentDisciplineIncidentNonOffenderAssociation_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[StudentDisciplineIncidentNonOffenderAssociation].[IX_StudentDisciplineIncidentNonOffenderAssociation_SchoolId]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentDisciplineIncidentNonOffenderAssociation_SchoolId]
    ON [edfi].[StudentDisciplineIncidentNonOffenderAssociation]([SchoolId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[StudentDisciplineIncidentNonOffenderAssociation].[IX_StudentDisciplineIncidentNonOffenderAssociation_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentDisciplineIncidentNonOffenderAssociation_AggregateId]
    ON [edfi].[StudentDisciplineIncidentNonOffenderAssociation]([AggregateId] ASC);


GO
PRINT N'Creating Index [edfi].[StudentDisciplineIncidentNonOffenderAssociation].[IX_StudentDisciplineIncidentNonOffenderAssociation_StudentUSI]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentDisciplineIncidentNonOffenderAssociation_StudentUSI]
    ON [edfi].[StudentDisciplineIncidentNonOffenderAssociation]([StudentUSI] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Altering Table [edfi].[StudentEducationOrganizationAssociation]...';


GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociation]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[StudentEducationOrganizationAssociation_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[StudentEducationOrganizationAssociation].[IX_StudentEducationOrganizationAssociation_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentEducationOrganizationAssociation_EducationOrganizationId]
    ON [edfi].[StudentEducationOrganizationAssociation]([EducationOrganizationId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[StudentEducationOrganizationAssociation].[IX_StudentEducationOrganizationAssociation_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentEducationOrganizationAssociation_AggregateId]
    ON [edfi].[StudentEducationOrganizationAssociation]([AggregateId] ASC);


GO
PRINT N'Creating Index [edfi].[StudentEducationOrganizationAssociation].[IX_StudentEducationOrganizationAssociation_StudentUSI]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentEducationOrganizationAssociation_StudentUSI]
    ON [edfi].[StudentEducationOrganizationAssociation]([StudentUSI] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Altering Table [edfi].[StudentEducationOrganizationResponsibilityAssociation]...';


GO
ALTER TABLE [edfi].[StudentEducationOrganizationResponsibilityAssociation]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[StudentEducationOrganizationResponsibilityAssociation_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[StudentEducationOrganizationResponsibilityAssociation].[IX_StudentEducationOrganizationResponsibilityAssociation_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentEducationOrganizationResponsibilityAssociation_EducationOrganizationId]
    ON [edfi].[StudentEducationOrganizationResponsibilityAssociation]([EducationOrganizationId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[StudentEducationOrganizationResponsibilityAssociation].[IX_StudentEducationOrganizationResponsibilityAssociation_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentEducationOrganizationResponsibilityAssociation_AggregateId]
    ON [edfi].[StudentEducationOrganizationResponsibilityAssociation]([AggregateId] ASC);


GO
PRINT N'Creating Index [edfi].[StudentEducationOrganizationResponsibilityAssociation].[IX_StudentEducationOrganizationResponsibilityAssociation_StudentUSI]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentEducationOrganizationResponsibilityAssociation_StudentUSI]
    ON [edfi].[StudentEducationOrganizationResponsibilityAssociation]([StudentUSI] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Altering Table [edfi].[StudentGradebookEntry]...';


GO
ALTER TABLE [edfi].[StudentGradebookEntry]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[StudentGradebookEntry_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[StudentGradebookEntry].[IX_StudentGradebookEntry_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentGradebookEntry_AggregateId]
    ON [edfi].[StudentGradebookEntry]([AggregateId] ASC);


GO
PRINT N'Creating Index [edfi].[StudentGradebookEntry].[IX_StudentGradebookEntry_StudentUSI]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentGradebookEntry_StudentUSI]
    ON [edfi].[StudentGradebookEntry]([StudentUSI] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Altering Table [edfi].[StudentHealth]...';


GO
ALTER TABLE [edfi].[StudentHealth]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[StudentHealth_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[StudentHealth].[IX_StudentHealth_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentHealth_EducationOrganizationId]
    ON [edfi].[StudentHealth]([EducationOrganizationId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[StudentHealth].[IX_StudentHealth_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentHealth_AggregateId]
    ON [edfi].[StudentHealth]([AggregateId] ASC);


GO
PRINT N'Creating Index [edfi].[StudentHealth].[IX_StudentHealth_StudentUSI]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentHealth_StudentUSI]
    ON [edfi].[StudentHealth]([StudentUSI] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Altering Table [edfi].[StudentInterventionAssociation]...';


GO
ALTER TABLE [edfi].[StudentInterventionAssociation]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[StudentInterventionAssociation_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[StudentInterventionAssociation].[IX_StudentInterventionAssociation_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentInterventionAssociation_EducationOrganizationId]
    ON [edfi].[StudentInterventionAssociation]([EducationOrganizationId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[StudentInterventionAssociation].[IX_StudentInterventionAssociation_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentInterventionAssociation_AggregateId]
    ON [edfi].[StudentInterventionAssociation]([AggregateId] ASC);


GO
PRINT N'Creating Index [edfi].[StudentInterventionAssociation].[IX_StudentInterventionAssociation_StudentUSI]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentInterventionAssociation_StudentUSI]
    ON [edfi].[StudentInterventionAssociation]([StudentUSI] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Altering Table [edfi].[StudentInterventionAttendanceEvent]...';


GO
ALTER TABLE [edfi].[StudentInterventionAttendanceEvent]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[StudentInterventionAttendanceEvent_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[StudentInterventionAttendanceEvent].[IX_StudentInterventionAttendanceEvent_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentInterventionAttendanceEvent_EducationOrganizationId]
    ON [edfi].[StudentInterventionAttendanceEvent]([EducationOrganizationId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[StudentInterventionAttendanceEvent].[IX_StudentInterventionAttendanceEvent_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentInterventionAttendanceEvent_AggregateId]
    ON [edfi].[StudentInterventionAttendanceEvent]([AggregateId] ASC);


GO
PRINT N'Creating Index [edfi].[StudentInterventionAttendanceEvent].[IX_StudentInterventionAttendanceEvent_StudentUSI]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentInterventionAttendanceEvent_StudentUSI]
    ON [edfi].[StudentInterventionAttendanceEvent]([StudentUSI] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Altering Table [edfi].[StudentProgramAttendanceEvent]...';


GO
ALTER TABLE [edfi].[StudentProgramAttendanceEvent]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[StudentProgramAttendanceEvent_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[StudentProgramAttendanceEvent].[IX_StudentProgramAttendanceEvent_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentProgramAttendanceEvent_EducationOrganizationId]
    ON [edfi].[StudentProgramAttendanceEvent]([EducationOrganizationId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[StudentProgramAttendanceEvent].[IX_StudentProgramAttendanceEvent_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentProgramAttendanceEvent_AggregateId]
    ON [edfi].[StudentProgramAttendanceEvent]([AggregateId] ASC);


GO
PRINT N'Creating Index [edfi].[StudentProgramAttendanceEvent].[IX_StudentProgramAttendanceEvent_StudentUSI]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentProgramAttendanceEvent_StudentUSI]
    ON [edfi].[StudentProgramAttendanceEvent]([StudentUSI] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Altering Table [edfi].[StudentProgramEvaluation]...';


GO
ALTER TABLE [edfi].[StudentProgramEvaluation]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[StudentProgramEvaluation_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[StudentProgramEvaluation].[IX_StudentProgramEvaluation_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentProgramEvaluation_EducationOrganizationId]
    ON [edfi].[StudentProgramEvaluation]([EducationOrganizationId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[StudentProgramEvaluation].[IX_StudentProgramEvaluation_ProgramEducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentProgramEvaluation_ProgramEducationOrganizationId]
    ON [edfi].[StudentProgramEvaluation]([ProgramEducationOrganizationId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[StudentProgramEvaluation].[IX_StudentProgramEvaluation_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentProgramEvaluation_AggregateId]
    ON [edfi].[StudentProgramEvaluation]([AggregateId] ASC);


GO
PRINT N'Creating Index [edfi].[StudentProgramEvaluation].[IX_StudentProgramEvaluation_StaffEvaluatorStaffUSI]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentProgramEvaluation_StaffEvaluatorStaffUSI]
    ON [edfi].[StudentProgramEvaluation]([StaffEvaluatorStaffUSI] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[StudentProgramEvaluation].[IX_StudentProgramEvaluation_StudentUSI]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentProgramEvaluation_StudentUSI]
    ON [edfi].[StudentProgramEvaluation]([StudentUSI] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Altering Table [edfi].[StudentSchoolAssociation]...';


GO
ALTER TABLE [edfi].[StudentSchoolAssociation]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[StudentSchoolAssociation_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[StudentSchoolAssociation].[IX_StudentSchoolAssociation_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentSchoolAssociation_EducationOrganizationId]
    ON [edfi].[StudentSchoolAssociation]([EducationOrganizationId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[StudentSchoolAssociation].[IX_StudentSchoolAssociation_SchoolId]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentSchoolAssociation_SchoolId]
    ON [edfi].[StudentSchoolAssociation]([SchoolId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[StudentSchoolAssociation].[IX_StudentSchoolAssociation_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentSchoolAssociation_AggregateId]
    ON [edfi].[StudentSchoolAssociation]([AggregateId] ASC);


GO
PRINT N'Creating Index [edfi].[StudentSchoolAssociation].[IX_StudentSchoolAssociation_StudentUSI]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentSchoolAssociation_StudentUSI]
    ON [edfi].[StudentSchoolAssociation]([StudentUSI] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Altering Table [edfi].[StudentSchoolAttendanceEvent]...';


GO
ALTER TABLE [edfi].[StudentSchoolAttendanceEvent]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[StudentSchoolAttendanceEvent_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[StudentSchoolAttendanceEvent].[IX_StudentSchoolAttendanceEvent_SchoolId]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentSchoolAttendanceEvent_SchoolId]
    ON [edfi].[StudentSchoolAttendanceEvent]([SchoolId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[StudentSchoolAttendanceEvent].[IX_StudentSchoolAttendanceEvent_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentSchoolAttendanceEvent_AggregateId]
    ON [edfi].[StudentSchoolAttendanceEvent]([AggregateId] ASC);


GO
PRINT N'Creating Index [edfi].[StudentSchoolAttendanceEvent].[IX_StudentSchoolAttendanceEvent_StudentUSI]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentSchoolAttendanceEvent_StudentUSI]
    ON [edfi].[StudentSchoolAttendanceEvent]([StudentUSI] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Starting rebuilding table [edfi].[StudentSectionAssociation]...';


GO
BEGIN TRANSACTION;

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

SET XACT_ABORT ON;

CREATE TABLE [edfi].[tmp_ms_xx_StudentSectionAssociation] (
    [BeginDate]                         DATE             NOT NULL,
    [LocalCourseCode]                   NVARCHAR (60)    NOT NULL,
    [SchoolId]                          BIGINT           NOT NULL,
    [SchoolYear]                        SMALLINT         NOT NULL,
    [SectionIdentifier]                 NVARCHAR (255)   NOT NULL,
    [SessionName]                       NVARCHAR (60)    NOT NULL,
    [StudentUSI]                        INT              NOT NULL,
    [AttemptStatusDescriptorId]         INT              NULL,
    [DualCreditEducationOrganizationId] BIGINT           NULL,
    [DualCreditIndicator]               BIT              NULL,
    [DualCreditInstitutionDescriptorId] INT              NULL,
    [DualCreditTypeDescriptorId]        INT              NULL,
    [DualHighSchoolCreditIndicator]     BIT              NULL,
    [EndDate]                           DATE             NULL,
    [HomeroomIndicator]                 BIT              NULL,
    [RepeatIdentifierDescriptorId]      INT              NULL,
    [TeacherStudentDataLinkExclusion]   BIT              NULL,
    [Discriminator]                     NVARCHAR (128)   NULL,
    [CreateDate]                        DATETIME2 (7)    CONSTRAINT [StudentSectionAssociation_DF_CreateDate] DEFAULT (getutcdate()) NOT NULL,
    [LastModifiedDate]                  DATETIME2 (7)    CONSTRAINT [StudentSectionAssociation_DF_LastModifiedDate] DEFAULT (getutcdate()) NOT NULL,
    [Id]                                UNIQUEIDENTIFIER CONSTRAINT [StudentSectionAssociation_DF_Id] DEFAULT (newid()) NOT NULL,
    [AggregateId]                       INT              DEFAULT ( NEXT VALUE FOR [edfi].[StudentSectionAssociation_AggSeq]) NOT NULL,
    [AggregateData]                     VARBINARY (8000) NULL,
    CONSTRAINT [tmp_ms_xx_constraint_StudentSectionAssociation_PK1] PRIMARY KEY CLUSTERED ([BeginDate] ASC, [LocalCourseCode] ASC, [SchoolId] ASC, [SchoolYear] ASC, [SectionIdentifier] ASC, [SessionName] ASC, [StudentUSI] ASC)
);

IF EXISTS (SELECT TOP 1 1 
           FROM   [edfi].[StudentSectionAssociation])
    BEGIN
        INSERT INTO [edfi].[tmp_ms_xx_StudentSectionAssociation] ([BeginDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName], [StudentUSI], [AttemptStatusDescriptorId], [EndDate], [HomeroomIndicator], [RepeatIdentifierDescriptorId], [TeacherStudentDataLinkExclusion], [Discriminator], [CreateDate], [LastModifiedDate], [Id])
        SELECT   [BeginDate],
                 [LocalCourseCode],
                 [SchoolId],
                 [SchoolYear],
                 [SectionIdentifier],
                 [SessionName],
                 [StudentUSI],
                 [AttemptStatusDescriptorId],
                 [EndDate],
                 [HomeroomIndicator],
                 [RepeatIdentifierDescriptorId],
                 [TeacherStudentDataLinkExclusion],
                 [Discriminator],
                 [CreateDate],
                 [LastModifiedDate],
                 [Id]
        FROM     [edfi].[StudentSectionAssociation]
        ORDER BY [BeginDate] ASC, [LocalCourseCode] ASC, [SchoolId] ASC, [SchoolYear] ASC, [SectionIdentifier] ASC, [SessionName] ASC, [StudentUSI] ASC;
    END

DROP TABLE [edfi].[StudentSectionAssociation];

EXECUTE sp_rename N'[edfi].[tmp_ms_xx_StudentSectionAssociation]', N'StudentSectionAssociation';

EXECUTE sp_rename N'[edfi].[tmp_ms_xx_constraint_StudentSectionAssociation_PK1]', N'StudentSectionAssociation_PK', N'OBJECT';

COMMIT TRANSACTION;

SET TRANSACTION ISOLATION LEVEL READ COMMITTED;


GO
PRINT N'Creating Index [edfi].[StudentSectionAssociation].[FK_StudentSectionAssociation_AttemptStatusDescriptor]...';


GO
CREATE NONCLUSTERED INDEX [FK_StudentSectionAssociation_AttemptStatusDescriptor]
    ON [edfi].[StudentSectionAssociation]([AttemptStatusDescriptorId] ASC);


GO
PRINT N'Creating Index [edfi].[StudentSectionAssociation].[FK_StudentSectionAssociation_DualCreditInstitutionDescriptor]...';


GO
CREATE NONCLUSTERED INDEX [FK_StudentSectionAssociation_DualCreditInstitutionDescriptor]
    ON [edfi].[StudentSectionAssociation]([DualCreditInstitutionDescriptorId] ASC);


GO
PRINT N'Creating Index [edfi].[StudentSectionAssociation].[FK_StudentSectionAssociation_DualCreditTypeDescriptor]...';


GO
CREATE NONCLUSTERED INDEX [FK_StudentSectionAssociation_DualCreditTypeDescriptor]
    ON [edfi].[StudentSectionAssociation]([DualCreditTypeDescriptorId] ASC);


GO
PRINT N'Creating Index [edfi].[StudentSectionAssociation].[FK_StudentSectionAssociation_EducationOrganization]...';


GO
CREATE NONCLUSTERED INDEX [FK_StudentSectionAssociation_EducationOrganization]
    ON [edfi].[StudentSectionAssociation]([DualCreditEducationOrganizationId] ASC);


GO
PRINT N'Creating Index [edfi].[StudentSectionAssociation].[FK_StudentSectionAssociation_RepeatIdentifierDescriptor]...';


GO
CREATE NONCLUSTERED INDEX [FK_StudentSectionAssociation_RepeatIdentifierDescriptor]
    ON [edfi].[StudentSectionAssociation]([RepeatIdentifierDescriptorId] ASC);


GO
PRINT N'Creating Index [edfi].[StudentSectionAssociation].[FK_StudentSectionAssociation_Section]...';


GO
CREATE NONCLUSTERED INDEX [FK_StudentSectionAssociation_Section]
    ON [edfi].[StudentSectionAssociation]([LocalCourseCode] ASC, [SchoolId] ASC, [SchoolYear] ASC, [SectionIdentifier] ASC, [SessionName] ASC);


GO
PRINT N'Creating Index [edfi].[StudentSectionAssociation].[UX_StudentSectionAssociation_Id]...';


GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_StudentSectionAssociation_Id]
    ON [edfi].[StudentSectionAssociation]([Id] ASC) WITH (FILLFACTOR = 75, PAD_INDEX = ON);


GO
PRINT N'Creating Index [edfi].[StudentSectionAssociation].[IX_StudentSectionAssociation_SchoolId]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentSectionAssociation_SchoolId]
    ON [edfi].[StudentSectionAssociation]([SchoolId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[StudentSectionAssociation].[IX_StudentSectionAssociation_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentSectionAssociation_AggregateId]
    ON [edfi].[StudentSectionAssociation]([AggregateId] ASC);


GO
PRINT N'Creating Index [edfi].[StudentSectionAssociation].[IX_StudentSectionAssociation_StudentUSI]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentSectionAssociation_StudentUSI]
    ON [edfi].[StudentSectionAssociation]([StudentUSI] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Altering Table [edfi].[StudentSectionAttendanceEvent]...';


GO
ALTER TABLE [edfi].[StudentSectionAttendanceEvent]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[StudentSectionAttendanceEvent_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[StudentSectionAttendanceEvent].[IX_StudentSectionAttendanceEvent_SchoolId]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentSectionAttendanceEvent_SchoolId]
    ON [edfi].[StudentSectionAttendanceEvent]([SchoolId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[StudentSectionAttendanceEvent].[IX_StudentSectionAttendanceEvent_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentSectionAttendanceEvent_AggregateId]
    ON [edfi].[StudentSectionAttendanceEvent]([AggregateId] ASC);


GO
PRINT N'Creating Index [edfi].[StudentSectionAttendanceEvent].[IX_StudentSectionAttendanceEvent_StudentUSI]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentSectionAttendanceEvent_StudentUSI]
    ON [edfi].[StudentSectionAttendanceEvent]([StudentUSI] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Starting rebuilding table [edfi].[StudentSpecialEducationProgramEligibilityAssociation]...';


GO
BEGIN TRANSACTION;

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

SET XACT_ABORT ON;

CREATE TABLE [edfi].[tmp_ms_xx_StudentSpecialEducationProgramEligibilityAssociation] (
    [ConsentToEvaluationReceivedDate]       DATE             NOT NULL,
    [EducationOrganizationId]               BIGINT           NOT NULL,
    [ProgramEducationOrganizationId]        BIGINT           NOT NULL,
    [ProgramName]                           NVARCHAR (60)    NOT NULL,
    [ProgramTypeDescriptorId]               INT              NOT NULL,
    [StudentUSI]                            INT              NOT NULL,
    [ConsentToEvaluationDate]               DATE             NULL,
    [EligibilityConferenceDate]             DATE             NULL,
    [EligibilityDelayReasonDescriptorId]    INT              NULL,
    [EligibilityDeterminationDate]          DATE             NULL,
    [EligibilityEvaluationDate]             DATE             NULL,
    [EligibilityEvaluationTypeDescriptorId] INT              NULL,
    [EvaluationCompleteIndicator]           BIT              NULL,
    [EvaluationDelayDays]                   INT              NULL,
    [EvaluationDelayReasonDescriptorId]     INT              NULL,
    [EvaluationLateReason]                  NVARCHAR (255)   NULL,
    [IDEAIndicator]                         BIT              NULL,
    [IDEAPartDescriptorId]                  INT              NOT NULL,
    [OriginalECIServicesDate]               DATE             NULL,
    [TransitionConferenceDate]              DATE             NULL,
    [TransitionNotificationDate]            DATE             NULL,
    [Discriminator]                         NVARCHAR (128)   NULL,
    [CreateDate]                            DATETIME2 (7)    CONSTRAINT [StudentSpecialEducationProgramEligibilityAssociation_DF_CreateDate] DEFAULT (getutcdate()) NOT NULL,
    [LastModifiedDate]                      DATETIME2 (7)    CONSTRAINT [StudentSpecialEducationProgramEligibilityAssociation_DF_LastModifiedDate] DEFAULT (getutcdate()) NOT NULL,
    [Id]                                    UNIQUEIDENTIFIER CONSTRAINT [StudentSpecialEducationProgramEligibilityAssociation_DF_Id] DEFAULT (newid()) NOT NULL,
    [AggregateId]                           INT              DEFAULT ( NEXT VALUE FOR [edfi].[StudentSpecialEducationProgramEligibilityAssociation_AggSeq]) NOT NULL,
    [AggregateData]                         VARBINARY (8000) NULL,
    CONSTRAINT [tmp_ms_xx_constraint_StudentSpecialEducationProgramEligibilityAssociation_PK1] PRIMARY KEY CLUSTERED ([ConsentToEvaluationReceivedDate] ASC, [EducationOrganizationId] ASC, [ProgramEducationOrganizationId] ASC, [ProgramName] ASC, [ProgramTypeDescriptorId] ASC, [StudentUSI] ASC)
);

IF EXISTS (SELECT TOP 1 1 
           FROM   [edfi].[StudentSpecialEducationProgramEligibilityAssociation])
    BEGIN
        INSERT INTO [edfi].[tmp_ms_xx_StudentSpecialEducationProgramEligibilityAssociation] ([ConsentToEvaluationReceivedDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI], [ConsentToEvaluationDate], [EligibilityConferenceDate], [EligibilityDelayReasonDescriptorId], [EligibilityDeterminationDate], [EligibilityEvaluationDate], [EligibilityEvaluationTypeDescriptorId], [EvaluationCompleteIndicator], [EvaluationDelayDays], [EvaluationDelayReasonDescriptorId], [EvaluationLateReason], [IDEAIndicator], [IDEAPartDescriptorId], [OriginalECIServicesDate], [TransitionConferenceDate], [TransitionNotificationDate], [Discriminator], [CreateDate], [LastModifiedDate], [Id])
        SELECT   [ConsentToEvaluationReceivedDate],
                 [EducationOrganizationId] as edorg1,
				 [EducationOrganizationId] as edorg2,
                 [ProgramName],
                 [ProgramTypeDescriptorId],
                 [StudentUSI],
                 [ConsentToEvaluationDate],
                 [EligibilityConferenceDate],
                 [EligibilityDelayReasonDescriptorId],
                 [EligibilityDeterminationDate],
                 [EligibilityEvaluationDate],
                 [EligibilityEvaluationTypeDescriptorId],
                 [EvaluationCompleteIndicator],
                 [EvaluationDelayDays],
                 [EvaluationDelayReasonDescriptorId],
                 [EvaluationLateReason],
                 [IDEAIndicator],
                 [IDEAPartDescriptorId],
                 [OriginalECIServicesDate],
                 [TransitionConferenceDate],
                 [TransitionNotificationDate],
                 [Discriminator],
                 [CreateDate],
                 [LastModifiedDate],
                 [Id]
        FROM     [edfi].[StudentSpecialEducationProgramEligibilityAssociation]
        ORDER BY [ConsentToEvaluationReceivedDate] ASC, edorg1 ASC, [ProgramName] ASC, [ProgramTypeDescriptorId] ASC, [StudentUSI] ASC;
    END

DROP TABLE [edfi].[StudentSpecialEducationProgramEligibilityAssociation];

EXECUTE sp_rename N'[edfi].[tmp_ms_xx_StudentSpecialEducationProgramEligibilityAssociation]', N'StudentSpecialEducationProgramEligibilityAssociation';

EXECUTE sp_rename N'[edfi].[tmp_ms_xx_constraint_StudentSpecialEducationProgramEligibilityAssociation_PK1]', N'StudentSpecialEducationProgramEligibilityAssociation_PK', N'OBJECT';

COMMIT TRANSACTION;

SET TRANSACTION ISOLATION LEVEL READ COMMITTED;


GO
PRINT N'Creating Index [edfi].[StudentSpecialEducationProgramEligibilityAssociation].[FK_StudentSpecialEducationProgramEligibilityAssociation_EligibilityDelayReasonDescriptor]...';


GO
CREATE NONCLUSTERED INDEX [FK_StudentSpecialEducationProgramEligibilityAssociation_EligibilityDelayReasonDescriptor]
    ON [edfi].[StudentSpecialEducationProgramEligibilityAssociation]([EligibilityDelayReasonDescriptorId] ASC);


GO
PRINT N'Creating Index [edfi].[StudentSpecialEducationProgramEligibilityAssociation].[FK_StudentSpecialEducationProgramEligibilityAssociation_EligibilityEvaluationTypeDescriptor]...';


GO
CREATE NONCLUSTERED INDEX [FK_StudentSpecialEducationProgramEligibilityAssociation_EligibilityEvaluationTypeDescriptor]
    ON [edfi].[StudentSpecialEducationProgramEligibilityAssociation]([EligibilityEvaluationTypeDescriptorId] ASC);


GO
PRINT N'Creating Index [edfi].[StudentSpecialEducationProgramEligibilityAssociation].[FK_StudentSpecialEducationProgramEligibilityAssociation_EvaluationDelayReasonDescriptor]...';


GO
CREATE NONCLUSTERED INDEX [FK_StudentSpecialEducationProgramEligibilityAssociation_EvaluationDelayReasonDescriptor]
    ON [edfi].[StudentSpecialEducationProgramEligibilityAssociation]([EvaluationDelayReasonDescriptorId] ASC);


GO
PRINT N'Creating Index [edfi].[StudentSpecialEducationProgramEligibilityAssociation].[FK_StudentSpecialEducationProgramEligibilityAssociation_IDEAPartDescriptor]...';


GO
CREATE NONCLUSTERED INDEX [FK_StudentSpecialEducationProgramEligibilityAssociation_IDEAPartDescriptor]
    ON [edfi].[StudentSpecialEducationProgramEligibilityAssociation]([IDEAPartDescriptorId] ASC);


GO
PRINT N'Creating Index [edfi].[StudentSpecialEducationProgramEligibilityAssociation].[FK_StudentSpecialEducationProgramEligibilityAssociation_Program]...';


GO
CREATE NONCLUSTERED INDEX [FK_StudentSpecialEducationProgramEligibilityAssociation_Program]
    ON [edfi].[StudentSpecialEducationProgramEligibilityAssociation]([ProgramEducationOrganizationId] ASC, [ProgramName] ASC, [ProgramTypeDescriptorId] ASC);


GO
PRINT N'Creating Index [edfi].[StudentSpecialEducationProgramEligibilityAssociation].[UX_StudentSpecialEducationProgramEligibilityAssociation_Id]...';


GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_StudentSpecialEducationProgramEligibilityAssociation_Id]
    ON [edfi].[StudentSpecialEducationProgramEligibilityAssociation]([Id] ASC) WITH (FILLFACTOR = 75, PAD_INDEX = ON);


GO
PRINT N'Creating Index [edfi].[StudentSpecialEducationProgramEligibilityAssociation].[IX_StudentSpecialEducationProgramEligibilityAssociation_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentSpecialEducationProgramEligibilityAssociation_EducationOrganizationId]
    ON [edfi].[StudentSpecialEducationProgramEligibilityAssociation]([EducationOrganizationId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[StudentSpecialEducationProgramEligibilityAssociation].[IX_StudentSpecialEducationProgramEligibilityAssociation_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentSpecialEducationProgramEligibilityAssociation_AggregateId]
    ON [edfi].[StudentSpecialEducationProgramEligibilityAssociation]([AggregateId] ASC);


GO
PRINT N'Creating Index [edfi].[StudentSpecialEducationProgramEligibilityAssociation].[IX_StudentSpecialEducationProgramEligibilityAssociation_StudentUSI]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentSpecialEducationProgramEligibilityAssociation_StudentUSI]
    ON [edfi].[StudentSpecialEducationProgramEligibilityAssociation]([StudentUSI] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Altering Table [edfi].[StudentTransportation]...';


GO
ALTER TABLE [edfi].[StudentTransportation]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[StudentTransportation_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[StudentTransportation].[IX_StudentTransportation_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentTransportation_AggregateId]
    ON [edfi].[StudentTransportation]([AggregateId] ASC);


GO
PRINT N'Creating Index [edfi].[StudentTransportation].[IX_StudentTransportation_StudentUSI]...';


GO
CREATE NONCLUSTERED INDEX [IX_StudentTransportation_StudentUSI]
    ON [edfi].[StudentTransportation]([StudentUSI] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Altering Table [edfi].[Survey]...';


GO
ALTER TABLE [edfi].[Survey]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[Survey_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[Survey].[IX_Survey_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [IX_Survey_EducationOrganizationId]
    ON [edfi].[Survey]([EducationOrganizationId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[Survey].[IX_Survey_SchoolId]...';


GO
CREATE NONCLUSTERED INDEX [IX_Survey_SchoolId]
    ON [edfi].[Survey]([SchoolId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[Survey].[IX_Survey_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_Survey_AggregateId]
    ON [edfi].[Survey]([AggregateId] ASC);


GO
PRINT N'Altering Table [edfi].[SurveyCourseAssociation]...';


GO
ALTER TABLE [edfi].[SurveyCourseAssociation]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[SurveyCourseAssociation_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[SurveyCourseAssociation].[IX_SurveyCourseAssociation_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [IX_SurveyCourseAssociation_EducationOrganizationId]
    ON [edfi].[SurveyCourseAssociation]([EducationOrganizationId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[SurveyCourseAssociation].[IX_SurveyCourseAssociation_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_SurveyCourseAssociation_AggregateId]
    ON [edfi].[SurveyCourseAssociation]([AggregateId] ASC);


GO
PRINT N'Altering Table [edfi].[SurveyProgramAssociation]...';


GO
ALTER TABLE [edfi].[SurveyProgramAssociation]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[SurveyProgramAssociation_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[SurveyProgramAssociation].[IX_SurveyProgramAssociation_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [IX_SurveyProgramAssociation_EducationOrganizationId]
    ON [edfi].[SurveyProgramAssociation]([EducationOrganizationId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[SurveyProgramAssociation].[IX_SurveyProgramAssociation_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_SurveyProgramAssociation_AggregateId]
    ON [edfi].[SurveyProgramAssociation]([AggregateId] ASC);


GO
PRINT N'Altering Table [edfi].[SurveyQuestion]...';


GO
ALTER TABLE [edfi].[SurveyQuestion]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[SurveyQuestion_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[SurveyQuestion].[IX_SurveyQuestion_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_SurveyQuestion_AggregateId]
    ON [edfi].[SurveyQuestion]([AggregateId] ASC);


GO
PRINT N'Altering Table [edfi].[SurveyQuestionResponse]...';


GO
ALTER TABLE [edfi].[SurveyQuestionResponse]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[SurveyQuestionResponse_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[SurveyQuestionResponse].[IX_SurveyQuestionResponse_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_SurveyQuestionResponse_AggregateId]
    ON [edfi].[SurveyQuestionResponse]([AggregateId] ASC);


GO
PRINT N'Altering Table [edfi].[SurveyResponse]...';


GO
ALTER TABLE [edfi].[SurveyResponse]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[SurveyResponse_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[SurveyResponse].[IX_SurveyResponse_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_SurveyResponse_AggregateId]
    ON [edfi].[SurveyResponse]([AggregateId] ASC);


GO
PRINT N'Creating Index [edfi].[SurveyResponse].[IX_SurveyResponse_ContactUSI]...';


GO
CREATE NONCLUSTERED INDEX [IX_SurveyResponse_ContactUSI]
    ON [edfi].[SurveyResponse]([ContactUSI] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[SurveyResponse].[IX_SurveyResponse_StaffUSI]...';


GO
CREATE NONCLUSTERED INDEX [IX_SurveyResponse_StaffUSI]
    ON [edfi].[SurveyResponse]([StaffUSI] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[SurveyResponse].[IX_SurveyResponse_StudentUSI]...';


GO
CREATE NONCLUSTERED INDEX [IX_SurveyResponse_StudentUSI]
    ON [edfi].[SurveyResponse]([StudentUSI] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Altering Table [edfi].[SurveyResponseEducationOrganizationTargetAssociation]...';


GO
ALTER TABLE [edfi].[SurveyResponseEducationOrganizationTargetAssociation]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[SurveyResponseEducationOrganizationTargetAssociation_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[SurveyResponseEducationOrganizationTargetAssociation].[IX_SurveyResponseEducationOrganizationTargetAssociation_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [IX_SurveyResponseEducationOrganizationTargetAssociation_EducationOrganizationId]
    ON [edfi].[SurveyResponseEducationOrganizationTargetAssociation]([EducationOrganizationId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[SurveyResponseEducationOrganizationTargetAssociation].[IX_SurveyResponseEducationOrganizationTargetAssociation_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_SurveyResponseEducationOrganizationTargetAssociation_AggregateId]
    ON [edfi].[SurveyResponseEducationOrganizationTargetAssociation]([AggregateId] ASC);


GO
PRINT N'Altering Table [edfi].[SurveyResponseStaffTargetAssociation]...';


GO
ALTER TABLE [edfi].[SurveyResponseStaffTargetAssociation]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[SurveyResponseStaffTargetAssociation_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[SurveyResponseStaffTargetAssociation].[IX_SurveyResponseStaffTargetAssociation_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_SurveyResponseStaffTargetAssociation_AggregateId]
    ON [edfi].[SurveyResponseStaffTargetAssociation]([AggregateId] ASC);


GO
PRINT N'Creating Index [edfi].[SurveyResponseStaffTargetAssociation].[IX_SurveyResponseStaffTargetAssociation_StaffUSI]...';


GO
CREATE NONCLUSTERED INDEX [IX_SurveyResponseStaffTargetAssociation_StaffUSI]
    ON [edfi].[SurveyResponseStaffTargetAssociation]([StaffUSI] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Altering Table [edfi].[SurveySection]...';


GO
ALTER TABLE [edfi].[SurveySection]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[SurveySection_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[SurveySection].[IX_SurveySection_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_SurveySection_AggregateId]
    ON [edfi].[SurveySection]([AggregateId] ASC);


GO
PRINT N'Altering Table [edfi].[SurveySectionAssociation]...';


GO
ALTER TABLE [edfi].[SurveySectionAssociation]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[SurveySectionAssociation_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[SurveySectionAssociation].[IX_SurveySectionAssociation_SchoolId]...';


GO
CREATE NONCLUSTERED INDEX [IX_SurveySectionAssociation_SchoolId]
    ON [edfi].[SurveySectionAssociation]([SchoolId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[SurveySectionAssociation].[IX_SurveySectionAssociation_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_SurveySectionAssociation_AggregateId]
    ON [edfi].[SurveySectionAssociation]([AggregateId] ASC);


GO
PRINT N'Altering Table [edfi].[SurveySectionResponse]...';


GO
ALTER TABLE [edfi].[SurveySectionResponse]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[SurveySectionResponse_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[SurveySectionResponse].[IX_SurveySectionResponse_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_SurveySectionResponse_AggregateId]
    ON [edfi].[SurveySectionResponse]([AggregateId] ASC);


GO
PRINT N'Altering Table [edfi].[SurveySectionResponseEducationOrganizationTargetAssociation]...';


GO
ALTER TABLE [edfi].[SurveySectionResponseEducationOrganizationTargetAssociation]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[SurveySectionResponseEducationOrganizationTargetAssociation_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[SurveySectionResponseEducationOrganizationTargetAssociation].[IX_SurveySectionResponseEducationOrganizationTargetAssociation_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [IX_SurveySectionResponseEducationOrganizationTargetAssociation_EducationOrganizationId]
    ON [edfi].[SurveySectionResponseEducationOrganizationTargetAssociation]([EducationOrganizationId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [edfi].[SurveySectionResponseEducationOrganizationTargetAssociation].[IX_SurveySectionResponseEducationOrganizationTargetAssociation_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_SurveySectionResponseEducationOrganizationTargetAssociation_AggregateId]
    ON [edfi].[SurveySectionResponseEducationOrganizationTargetAssociation]([AggregateId] ASC);


GO
PRINT N'Altering Table [edfi].[SurveySectionResponseStaffTargetAssociation]...';


GO
ALTER TABLE [edfi].[SurveySectionResponseStaffTargetAssociation]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [edfi].[SurveySectionResponseStaffTargetAssociation_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [edfi].[SurveySectionResponseStaffTargetAssociation].[IX_SurveySectionResponseStaffTargetAssociation_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_SurveySectionResponseStaffTargetAssociation_AggregateId]
    ON [edfi].[SurveySectionResponseStaffTargetAssociation]([AggregateId] ASC);


GO
PRINT N'Creating Index [edfi].[SurveySectionResponseStaffTargetAssociation].[IX_SurveySectionResponseStaffTargetAssociation_StaffUSI]...';


GO
CREATE NONCLUSTERED INDEX [IX_SurveySectionResponseStaffTargetAssociation_StaffUSI]
    ON [edfi].[SurveySectionResponseStaffTargetAssociation]([StaffUSI] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Altering Table [tpdm].[Candidate]...';


GO
ALTER TABLE [tpdm].[Candidate] ALTER COLUMN [SexDescriptorId] INT NULL;


GO
ALTER TABLE [tpdm].[Candidate]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [tpdm].[Candidate_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [tpdm].[Candidate].[FK_Candidate_SexDescriptor]...';


GO
CREATE NONCLUSTERED INDEX [FK_Candidate_SexDescriptor]
    ON [tpdm].[Candidate]([SexDescriptorId] ASC);


GO
PRINT N'Creating Index [tpdm].[Candidate].[IX_Candidate_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_Candidate_AggregateId]
    ON [tpdm].[Candidate]([AggregateId] ASC);


GO
PRINT N'Altering Table [tpdm].[CandidateEducatorPreparationProgramAssociation]...';


GO
ALTER TABLE [tpdm].[CandidateEducatorPreparationProgramAssociation]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [tpdm].[CandidateEducatorPreparationProgramAssociation_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [tpdm].[CandidateEducatorPreparationProgramAssociation].[IX_CandidateEducatorPreparationProgramAssociation_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [IX_CandidateEducatorPreparationProgramAssociation_EducationOrganizationId]
    ON [tpdm].[CandidateEducatorPreparationProgramAssociation]([EducationOrganizationId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [tpdm].[CandidateEducatorPreparationProgramAssociation].[IX_CandidateEducatorPreparationProgramAssociation_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_CandidateEducatorPreparationProgramAssociation_AggregateId]
    ON [tpdm].[CandidateEducatorPreparationProgramAssociation]([AggregateId] ASC);


GO
PRINT N'Altering Table [tpdm].[EducatorPreparationProgram]...';


GO
ALTER TABLE [tpdm].[EducatorPreparationProgram]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [tpdm].[EducatorPreparationProgram_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [tpdm].[EducatorPreparationProgram].[IX_EducatorPreparationProgram_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [IX_EducatorPreparationProgram_EducationOrganizationId]
    ON [tpdm].[EducatorPreparationProgram]([EducationOrganizationId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [tpdm].[EducatorPreparationProgram].[IX_EducatorPreparationProgram_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_EducatorPreparationProgram_AggregateId]
    ON [tpdm].[EducatorPreparationProgram]([AggregateId] ASC);


GO
PRINT N'Altering Table [tpdm].[Evaluation]...';


GO
ALTER TABLE [tpdm].[Evaluation]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [tpdm].[Evaluation_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [tpdm].[Evaluation].[IX_Evaluation_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [IX_Evaluation_EducationOrganizationId]
    ON [tpdm].[Evaluation]([EducationOrganizationId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [tpdm].[Evaluation].[IX_Evaluation_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_Evaluation_AggregateId]
    ON [tpdm].[Evaluation]([AggregateId] ASC);


GO
PRINT N'Altering Table [tpdm].[EvaluationElement]...';


GO
ALTER TABLE [tpdm].[EvaluationElement]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [tpdm].[EvaluationElement_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [tpdm].[EvaluationElement].[IX_EvaluationElement_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [IX_EvaluationElement_EducationOrganizationId]
    ON [tpdm].[EvaluationElement]([EducationOrganizationId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [tpdm].[EvaluationElement].[IX_EvaluationElement_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_EvaluationElement_AggregateId]
    ON [tpdm].[EvaluationElement]([AggregateId] ASC);


GO
PRINT N'Altering Table [tpdm].[EvaluationElementRating]...';


GO
ALTER TABLE [tpdm].[EvaluationElementRating]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [tpdm].[EvaluationElementRating_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [tpdm].[EvaluationElementRating].[IX_EvaluationElementRating_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [IX_EvaluationElementRating_EducationOrganizationId]
    ON [tpdm].[EvaluationElementRating]([EducationOrganizationId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [tpdm].[EvaluationElementRating].[IX_EvaluationElementRating_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_EvaluationElementRating_AggregateId]
    ON [tpdm].[EvaluationElementRating]([AggregateId] ASC);


GO
PRINT N'Altering Table [tpdm].[EvaluationObjective]...';


GO
ALTER TABLE [tpdm].[EvaluationObjective]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [tpdm].[EvaluationObjective_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [tpdm].[EvaluationObjective].[IX_EvaluationObjective_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [IX_EvaluationObjective_EducationOrganizationId]
    ON [tpdm].[EvaluationObjective]([EducationOrganizationId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [tpdm].[EvaluationObjective].[IX_EvaluationObjective_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_EvaluationObjective_AggregateId]
    ON [tpdm].[EvaluationObjective]([AggregateId] ASC);


GO
PRINT N'Altering Table [tpdm].[EvaluationObjectiveRating]...';


GO
ALTER TABLE [tpdm].[EvaluationObjectiveRating]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [tpdm].[EvaluationObjectiveRating_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [tpdm].[EvaluationObjectiveRating].[IX_EvaluationObjectiveRating_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [IX_EvaluationObjectiveRating_EducationOrganizationId]
    ON [tpdm].[EvaluationObjectiveRating]([EducationOrganizationId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [tpdm].[EvaluationObjectiveRating].[IX_EvaluationObjectiveRating_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_EvaluationObjectiveRating_AggregateId]
    ON [tpdm].[EvaluationObjectiveRating]([AggregateId] ASC);


GO
PRINT N'Starting rebuilding table [tpdm].[EvaluationRating]...';


GO
BEGIN TRANSACTION;

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

SET XACT_ABORT ON;

CREATE TABLE [tpdm].[tmp_ms_xx_EvaluationRating] (
    [EducationOrganizationId]               BIGINT           NOT NULL,
    [EvaluationDate]                        DATETIME2 (7)    NOT NULL,
    [EvaluationPeriodDescriptorId]          INT              NOT NULL,
    [EvaluationTitle]                       NVARCHAR (50)    NOT NULL,
    [PerformanceEvaluationTitle]            NVARCHAR (50)    NOT NULL,
    [PerformanceEvaluationTypeDescriptorId] INT              NOT NULL,
    [PersonId]                              NVARCHAR (32)    NOT NULL,
    [SchoolYear]                            SMALLINT         NOT NULL,
    [SourceSystemDescriptorId]              INT              NOT NULL,
    [TermDescriptorId]                      INT              NOT NULL,
    [ActualDuration]                        INT              NULL,
    [Comments]                              NVARCHAR (1024)  NULL,
    [EvaluationRatingLevelDescriptorId]     INT              NULL,
    [EvaluationRatingStatusDescriptorId]    INT              NULL,
    [LocalCourseCode]                       NVARCHAR (60)    NULL,
    [SchoolId]                              BIGINT           NULL,
    [SectionIdentifier]                     NVARCHAR (255)   NULL,
    [SessionName]                           NVARCHAR (60)    NULL,
    [Discriminator]                         NVARCHAR (128)   NULL,
    [CreateDate]                            DATETIME2 (7)    CONSTRAINT [EvaluationRating_DF_CreateDate] DEFAULT (getutcdate()) NOT NULL,
    [LastModifiedDate]                      DATETIME2 (7)    CONSTRAINT [EvaluationRating_DF_LastModifiedDate] DEFAULT (getutcdate()) NOT NULL,
    [Id]                                    UNIQUEIDENTIFIER CONSTRAINT [EvaluationRating_DF_Id] DEFAULT (newid()) NOT NULL,
    [AggregateId]                           INT              DEFAULT ( NEXT VALUE FOR [tpdm].[EvaluationRating_AggSeq]) NOT NULL,
    [AggregateData]                         VARBINARY (8000) NULL,
    CONSTRAINT [tmp_ms_xx_constraint_EvaluationRating_PK1] PRIMARY KEY CLUSTERED ([EducationOrganizationId] ASC, [EvaluationDate] ASC, [EvaluationPeriodDescriptorId] ASC, [EvaluationTitle] ASC, [PerformanceEvaluationTitle] ASC, [PerformanceEvaluationTypeDescriptorId] ASC, [PersonId] ASC, [SchoolYear] ASC, [SourceSystemDescriptorId] ASC, [TermDescriptorId] ASC)
);

IF EXISTS (SELECT TOP 1 1 
           FROM   [tpdm].[EvaluationRating])
    BEGIN
        INSERT INTO [tpdm].[tmp_ms_xx_EvaluationRating] ([EducationOrganizationId], [EvaluationDate], [EvaluationPeriodDescriptorId], [EvaluationTitle], [PerformanceEvaluationTitle], [PerformanceEvaluationTypeDescriptorId], [PersonId], [SchoolYear], [SourceSystemDescriptorId], [TermDescriptorId], [EvaluationRatingLevelDescriptorId], [EvaluationRatingStatusDescriptorId], [LocalCourseCode], [SchoolId], [SectionIdentifier], [SessionName], [Discriminator], [CreateDate], [LastModifiedDate], [Id])
        SELECT   [EducationOrganizationId],
                 [EvaluationDate],
                 [EvaluationPeriodDescriptorId],
                 [EvaluationTitle],
                 [PerformanceEvaluationTitle],
                 [PerformanceEvaluationTypeDescriptorId],
                 [PersonId],
                 [SchoolYear],
                 [SourceSystemDescriptorId],
                 [TermDescriptorId],
                 [EvaluationRatingLevelDescriptorId],
                 [EvaluationRatingStatusDescriptorId],
                 [LocalCourseCode],
                 [SchoolId],
                 [SectionIdentifier],
                 [SessionName],
                 [Discriminator],
                 [CreateDate],
                 [LastModifiedDate],
                 [Id]
        FROM     [tpdm].[EvaluationRating]
        ORDER BY [EducationOrganizationId] ASC, [EvaluationDate] ASC, [EvaluationPeriodDescriptorId] ASC, [EvaluationTitle] ASC, [PerformanceEvaluationTitle] ASC, [PerformanceEvaluationTypeDescriptorId] ASC, [PersonId] ASC, [SchoolYear] ASC, [SourceSystemDescriptorId] ASC, [TermDescriptorId] ASC;
    END

DROP TABLE [tpdm].[EvaluationRating];

EXECUTE sp_rename N'[tpdm].[tmp_ms_xx_EvaluationRating]', N'EvaluationRating';

EXECUTE sp_rename N'[tpdm].[tmp_ms_xx_constraint_EvaluationRating_PK1]', N'EvaluationRating_PK', N'OBJECT';

COMMIT TRANSACTION;

SET TRANSACTION ISOLATION LEVEL READ COMMITTED;


GO
PRINT N'Creating Index [tpdm].[EvaluationRating].[FK_EvaluationRating_Evaluation]...';


GO
CREATE NONCLUSTERED INDEX [FK_EvaluationRating_Evaluation]
    ON [tpdm].[EvaluationRating]([EducationOrganizationId] ASC, [EvaluationPeriodDescriptorId] ASC, [EvaluationTitle] ASC, [PerformanceEvaluationTitle] ASC, [PerformanceEvaluationTypeDescriptorId] ASC, [SchoolYear] ASC, [TermDescriptorId] ASC);


GO
PRINT N'Creating Index [tpdm].[EvaluationRating].[FK_EvaluationRating_EvaluationRatingLevelDescriptor]...';


GO
CREATE NONCLUSTERED INDEX [FK_EvaluationRating_EvaluationRatingLevelDescriptor]
    ON [tpdm].[EvaluationRating]([EvaluationRatingLevelDescriptorId] ASC);


GO
PRINT N'Creating Index [tpdm].[EvaluationRating].[FK_EvaluationRating_EvaluationRatingStatusDescriptor]...';


GO
CREATE NONCLUSTERED INDEX [FK_EvaluationRating_EvaluationRatingStatusDescriptor]
    ON [tpdm].[EvaluationRating]([EvaluationRatingStatusDescriptorId] ASC);


GO
PRINT N'Creating Index [tpdm].[EvaluationRating].[FK_EvaluationRating_PerformanceEvaluationRating]...';


GO
CREATE NONCLUSTERED INDEX [FK_EvaluationRating_PerformanceEvaluationRating]
    ON [tpdm].[EvaluationRating]([EducationOrganizationId] ASC, [EvaluationPeriodDescriptorId] ASC, [PerformanceEvaluationTitle] ASC, [PerformanceEvaluationTypeDescriptorId] ASC, [PersonId] ASC, [SchoolYear] ASC, [SourceSystemDescriptorId] ASC, [TermDescriptorId] ASC);


GO
PRINT N'Creating Index [tpdm].[EvaluationRating].[FK_EvaluationRating_Section]...';


GO
CREATE NONCLUSTERED INDEX [FK_EvaluationRating_Section]
    ON [tpdm].[EvaluationRating]([LocalCourseCode] ASC, [SchoolId] ASC, [SchoolYear] ASC, [SectionIdentifier] ASC, [SessionName] ASC);


GO
PRINT N'Creating Index [tpdm].[EvaluationRating].[UX_EvaluationRating_Id]...';


GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_EvaluationRating_Id]
    ON [tpdm].[EvaluationRating]([Id] ASC) WITH (FILLFACTOR = 75, PAD_INDEX = ON);


GO
PRINT N'Creating Index [tpdm].[EvaluationRating].[IX_EvaluationRating_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [IX_EvaluationRating_EducationOrganizationId]
    ON [tpdm].[EvaluationRating]([EducationOrganizationId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [tpdm].[EvaluationRating].[IX_EvaluationRating_SchoolId]...';


GO
CREATE NONCLUSTERED INDEX [IX_EvaluationRating_SchoolId]
    ON [tpdm].[EvaluationRating]([SchoolId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [tpdm].[EvaluationRating].[IX_EvaluationRating_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_EvaluationRating_AggregateId]
    ON [tpdm].[EvaluationRating]([AggregateId] ASC);


GO
PRINT N'Altering Table [tpdm].[FinancialAid]...';


GO
ALTER TABLE [tpdm].[FinancialAid]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [tpdm].[FinancialAid_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [tpdm].[FinancialAid].[IX_FinancialAid_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_FinancialAid_AggregateId]
    ON [tpdm].[FinancialAid]([AggregateId] ASC);


GO
PRINT N'Creating Index [tpdm].[FinancialAid].[IX_FinancialAid_StudentUSI]...';


GO
CREATE NONCLUSTERED INDEX [IX_FinancialAid_StudentUSI]
    ON [tpdm].[FinancialAid]([StudentUSI] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Altering Table [tpdm].[PerformanceEvaluation]...';


GO
ALTER TABLE [tpdm].[PerformanceEvaluation]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [tpdm].[PerformanceEvaluation_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [tpdm].[PerformanceEvaluation].[IX_PerformanceEvaluation_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [IX_PerformanceEvaluation_EducationOrganizationId]
    ON [tpdm].[PerformanceEvaluation]([EducationOrganizationId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [tpdm].[PerformanceEvaluation].[IX_PerformanceEvaluation_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_PerformanceEvaluation_AggregateId]
    ON [tpdm].[PerformanceEvaluation]([AggregateId] ASC);


GO
PRINT N'Altering Table [tpdm].[PerformanceEvaluationRating]...';


GO
ALTER TABLE [tpdm].[PerformanceEvaluationRating]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [tpdm].[PerformanceEvaluationRating_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [tpdm].[PerformanceEvaluationRating].[IX_PerformanceEvaluationRating_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [IX_PerformanceEvaluationRating_EducationOrganizationId]
    ON [tpdm].[PerformanceEvaluationRating]([EducationOrganizationId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [tpdm].[PerformanceEvaluationRating].[IX_PerformanceEvaluationRating_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_PerformanceEvaluationRating_AggregateId]
    ON [tpdm].[PerformanceEvaluationRating]([AggregateId] ASC);


GO
PRINT N'Altering Table [tpdm].[RubricDimension]...';


GO
ALTER TABLE [tpdm].[RubricDimension]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [tpdm].[RubricDimension_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [tpdm].[RubricDimension].[IX_RubricDimension_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [IX_RubricDimension_EducationOrganizationId]
    ON [tpdm].[RubricDimension]([EducationOrganizationId] ASC)
    INCLUDE([AggregateId]);


GO
PRINT N'Creating Index [tpdm].[RubricDimension].[IX_RubricDimension_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_RubricDimension_AggregateId]
    ON [tpdm].[RubricDimension]([AggregateId] ASC);


GO
PRINT N'Altering Table [tpdm].[SurveyResponsePersonTargetAssociation]...';


GO
ALTER TABLE [tpdm].[SurveyResponsePersonTargetAssociation]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [tpdm].[SurveyResponsePersonTargetAssociation_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [tpdm].[SurveyResponsePersonTargetAssociation].[IX_SurveyResponsePersonTargetAssociation_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_SurveyResponsePersonTargetAssociation_AggregateId]
    ON [tpdm].[SurveyResponsePersonTargetAssociation]([AggregateId] ASC);


GO
PRINT N'Altering Table [tpdm].[SurveySectionResponsePersonTargetAssociation]...';


GO
ALTER TABLE [tpdm].[SurveySectionResponsePersonTargetAssociation]
    ADD [AggregateId]   INT              DEFAULT ( NEXT VALUE FOR [tpdm].[SurveySectionResponsePersonTargetAssociation_AggSeq]) NOT NULL,
        [AggregateData] VARBINARY (8000) NULL;


GO
PRINT N'Creating Index [tpdm].[SurveySectionResponsePersonTargetAssociation].[IX_SurveySectionResponsePersonTargetAssociation_AggregateId]...';


GO
CREATE NONCLUSTERED INDEX [IX_SurveySectionResponsePersonTargetAssociation_AggregateId]
    ON [tpdm].[SurveySectionResponsePersonTargetAssociation]([AggregateId] ASC);


GO
PRINT N'Creating Default Constraint [edfi].[AcademicWeek_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[AcademicWeek]
    ADD CONSTRAINT [AcademicWeek_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[AcademicWeek_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[AcademicWeek]
    ADD CONSTRAINT [AcademicWeek_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[AccountabilityRating_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[AccountabilityRating]
    ADD CONSTRAINT [AccountabilityRating_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[AccountabilityRating_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[AccountabilityRating]
    ADD CONSTRAINT [AccountabilityRating_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[Assessment_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[Assessment]
    ADD CONSTRAINT [Assessment_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[Assessment_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[Assessment]
    ADD CONSTRAINT [Assessment_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[AssessmentItem_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[AssessmentItem]
    ADD CONSTRAINT [AssessmentItem_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[AssessmentItem_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[AssessmentItem]
    ADD CONSTRAINT [AssessmentItem_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[AssessmentScoreRangeLearningStandard_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[AssessmentScoreRangeLearningStandard]
    ADD CONSTRAINT [AssessmentScoreRangeLearningStandard_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[AssessmentScoreRangeLearningStandard_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[AssessmentScoreRangeLearningStandard]
    ADD CONSTRAINT [AssessmentScoreRangeLearningStandard_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[BalanceSheetDimension_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[BalanceSheetDimension]
    ADD CONSTRAINT [BalanceSheetDimension_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[BalanceSheetDimension_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[BalanceSheetDimension]
    ADD CONSTRAINT [BalanceSheetDimension_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[BellSchedule_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[BellSchedule]
    ADD CONSTRAINT [BellSchedule_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[BellSchedule_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[BellSchedule]
    ADD CONSTRAINT [BellSchedule_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[Calendar_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[Calendar]
    ADD CONSTRAINT [Calendar_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[Calendar_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[Calendar]
    ADD CONSTRAINT [Calendar_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[CalendarDate_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[CalendarDate]
    ADD CONSTRAINT [CalendarDate_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[CalendarDate_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[CalendarDate]
    ADD CONSTRAINT [CalendarDate_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[ChartOfAccount_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[ChartOfAccount]
    ADD CONSTRAINT [ChartOfAccount_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[ChartOfAccount_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[ChartOfAccount]
    ADD CONSTRAINT [ChartOfAccount_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[ClassPeriod_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[ClassPeriod]
    ADD CONSTRAINT [ClassPeriod_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[ClassPeriod_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[ClassPeriod]
    ADD CONSTRAINT [ClassPeriod_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[Cohort_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[Cohort]
    ADD CONSTRAINT [Cohort_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[Cohort_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[Cohort]
    ADD CONSTRAINT [Cohort_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[CommunityProviderLicense_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[CommunityProviderLicense]
    ADD CONSTRAINT [CommunityProviderLicense_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[CommunityProviderLicense_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[CommunityProviderLicense]
    ADD CONSTRAINT [CommunityProviderLicense_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[CompetencyObjective_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[CompetencyObjective]
    ADD CONSTRAINT [CompetencyObjective_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[CompetencyObjective_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[CompetencyObjective]
    ADD CONSTRAINT [CompetencyObjective_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[Contact_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[Contact]
    ADD CONSTRAINT [Contact_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[Contact_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[Contact]
    ADD CONSTRAINT [Contact_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[Course_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[Course]
    ADD CONSTRAINT [Course_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[Course_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[Course]
    ADD CONSTRAINT [Course_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[CourseOffering_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[CourseOffering]
    ADD CONSTRAINT [CourseOffering_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[CourseOffering_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[CourseOffering]
    ADD CONSTRAINT [CourseOffering_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[CourseTranscript_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[CourseTranscript]
    ADD CONSTRAINT [CourseTranscript_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[CourseTranscript_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[CourseTranscript]
    ADD CONSTRAINT [CourseTranscript_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[Credential_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[Credential]
    ADD CONSTRAINT [Credential_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[Credential_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[Credential]
    ADD CONSTRAINT [Credential_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[CrisisEvent_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[CrisisEvent]
    ADD CONSTRAINT [CrisisEvent_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[CrisisEvent_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[CrisisEvent]
    ADD CONSTRAINT [CrisisEvent_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[Descriptor_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[Descriptor]
    ADD CONSTRAINT [Descriptor_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[Descriptor_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[Descriptor]
    ADD CONSTRAINT [Descriptor_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[DescriptorMapping_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[DescriptorMapping]
    ADD CONSTRAINT [DescriptorMapping_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[DescriptorMapping_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[DescriptorMapping]
    ADD CONSTRAINT [DescriptorMapping_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[DisciplineAction_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[DisciplineAction]
    ADD CONSTRAINT [DisciplineAction_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[DisciplineAction_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[DisciplineAction]
    ADD CONSTRAINT [DisciplineAction_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[DisciplineIncident_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[DisciplineIncident]
    ADD CONSTRAINT [DisciplineIncident_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[DisciplineIncident_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[DisciplineIncident]
    ADD CONSTRAINT [DisciplineIncident_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[EducationContent_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[EducationContent]
    ADD CONSTRAINT [EducationContent_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[EducationContent_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[EducationContent]
    ADD CONSTRAINT [EducationContent_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[EducationOrganization_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[EducationOrganization]
    ADD CONSTRAINT [EducationOrganization_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[EducationOrganization_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[EducationOrganization]
    ADD CONSTRAINT [EducationOrganization_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[EducationOrganizationInterventionPrescriptionAssociation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[EducationOrganizationInterventionPrescriptionAssociation]
    ADD CONSTRAINT [EducationOrganizationInterventionPrescriptionAssociation_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[EducationOrganizationInterventionPrescriptionAssociation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[EducationOrganizationInterventionPrescriptionAssociation]
    ADD CONSTRAINT [EducationOrganizationInterventionPrescriptionAssociation_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[EducationOrganizationNetworkAssociation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[EducationOrganizationNetworkAssociation]
    ADD CONSTRAINT [EducationOrganizationNetworkAssociation_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[EducationOrganizationNetworkAssociation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[EducationOrganizationNetworkAssociation]
    ADD CONSTRAINT [EducationOrganizationNetworkAssociation_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[EducationOrganizationPeerAssociation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[EducationOrganizationPeerAssociation]
    ADD CONSTRAINT [EducationOrganizationPeerAssociation_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[EducationOrganizationPeerAssociation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[EducationOrganizationPeerAssociation]
    ADD CONSTRAINT [EducationOrganizationPeerAssociation_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[EvaluationRubricDimension_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[EvaluationRubricDimension]
    ADD CONSTRAINT [EvaluationRubricDimension_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[EvaluationRubricDimension_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[EvaluationRubricDimension]
    ADD CONSTRAINT [EvaluationRubricDimension_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[FeederSchoolAssociation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[FeederSchoolAssociation]
    ADD CONSTRAINT [FeederSchoolAssociation_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[FeederSchoolAssociation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[FeederSchoolAssociation]
    ADD CONSTRAINT [FeederSchoolAssociation_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[FunctionDimension_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[FunctionDimension]
    ADD CONSTRAINT [FunctionDimension_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[FunctionDimension_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[FunctionDimension]
    ADD CONSTRAINT [FunctionDimension_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[FundDimension_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[FundDimension]
    ADD CONSTRAINT [FundDimension_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[FundDimension_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[FundDimension]
    ADD CONSTRAINT [FundDimension_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[GeneralStudentProgramAssociation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[GeneralStudentProgramAssociation]
    ADD CONSTRAINT [GeneralStudentProgramAssociation_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[GeneralStudentProgramAssociation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[GeneralStudentProgramAssociation]
    ADD CONSTRAINT [GeneralStudentProgramAssociation_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[Grade_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[Grade]
    ADD CONSTRAINT [Grade_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[Grade_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[Grade]
    ADD CONSTRAINT [Grade_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[GradebookEntry_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[GradebookEntry]
    ADD CONSTRAINT [GradebookEntry_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[GradebookEntry_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[GradebookEntry]
    ADD CONSTRAINT [GradebookEntry_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[GradingPeriod_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[GradingPeriod]
    ADD CONSTRAINT [GradingPeriod_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[GradingPeriod_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[GradingPeriod]
    ADD CONSTRAINT [GradingPeriod_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[GraduationPlan_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[GraduationPlan]
    ADD CONSTRAINT [GraduationPlan_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[GraduationPlan_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[GraduationPlan]
    ADD CONSTRAINT [GraduationPlan_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[Intervention_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[Intervention]
    ADD CONSTRAINT [Intervention_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[Intervention_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[Intervention]
    ADD CONSTRAINT [Intervention_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[InterventionPrescription_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[InterventionPrescription]
    ADD CONSTRAINT [InterventionPrescription_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[InterventionPrescription_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[InterventionPrescription]
    ADD CONSTRAINT [InterventionPrescription_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[InterventionStudy_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[InterventionStudy]
    ADD CONSTRAINT [InterventionStudy_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[InterventionStudy_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[InterventionStudy]
    ADD CONSTRAINT [InterventionStudy_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[LearningStandard_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[LearningStandard]
    ADD CONSTRAINT [LearningStandard_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[LearningStandard_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[LearningStandard]
    ADD CONSTRAINT [LearningStandard_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[LearningStandardEquivalenceAssociation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[LearningStandardEquivalenceAssociation]
    ADD CONSTRAINT [LearningStandardEquivalenceAssociation_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[LearningStandardEquivalenceAssociation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[LearningStandardEquivalenceAssociation]
    ADD CONSTRAINT [LearningStandardEquivalenceAssociation_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[LocalAccount_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[LocalAccount]
    ADD CONSTRAINT [LocalAccount_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[LocalAccount_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[LocalAccount]
    ADD CONSTRAINT [LocalAccount_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[LocalActual_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[LocalActual]
    ADD CONSTRAINT [LocalActual_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[LocalActual_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[LocalActual]
    ADD CONSTRAINT [LocalActual_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[LocalBudget_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[LocalBudget]
    ADD CONSTRAINT [LocalBudget_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[LocalBudget_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[LocalBudget]
    ADD CONSTRAINT [LocalBudget_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[LocalContractedStaff_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[LocalContractedStaff]
    ADD CONSTRAINT [LocalContractedStaff_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[LocalContractedStaff_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[LocalContractedStaff]
    ADD CONSTRAINT [LocalContractedStaff_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[LocalEncumbrance_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[LocalEncumbrance]
    ADD CONSTRAINT [LocalEncumbrance_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[LocalEncumbrance_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[LocalEncumbrance]
    ADD CONSTRAINT [LocalEncumbrance_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[LocalPayroll_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[LocalPayroll]
    ADD CONSTRAINT [LocalPayroll_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[LocalPayroll_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[LocalPayroll]
    ADD CONSTRAINT [LocalPayroll_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[Location_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[Location]
    ADD CONSTRAINT [Location_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[Location_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[Location]
    ADD CONSTRAINT [Location_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[ObjectDimension_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[ObjectDimension]
    ADD CONSTRAINT [ObjectDimension_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[ObjectDimension_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[ObjectDimension]
    ADD CONSTRAINT [ObjectDimension_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[ObjectiveAssessment_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[ObjectiveAssessment]
    ADD CONSTRAINT [ObjectiveAssessment_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[ObjectiveAssessment_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[ObjectiveAssessment]
    ADD CONSTRAINT [ObjectiveAssessment_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[OpenStaffPosition_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[OpenStaffPosition]
    ADD CONSTRAINT [OpenStaffPosition_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[OpenStaffPosition_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[OpenStaffPosition]
    ADD CONSTRAINT [OpenStaffPosition_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[OperationalUnitDimension_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[OperationalUnitDimension]
    ADD CONSTRAINT [OperationalUnitDimension_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[OperationalUnitDimension_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[OperationalUnitDimension]
    ADD CONSTRAINT [OperationalUnitDimension_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[Person_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[Person]
    ADD CONSTRAINT [Person_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[Person_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[Person]
    ADD CONSTRAINT [Person_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[PostSecondaryEvent_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[PostSecondaryEvent]
    ADD CONSTRAINT [PostSecondaryEvent_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[PostSecondaryEvent_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[PostSecondaryEvent]
    ADD CONSTRAINT [PostSecondaryEvent_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[Program_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[Program]
    ADD CONSTRAINT [Program_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[Program_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[Program]
    ADD CONSTRAINT [Program_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[ProgramDimension_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[ProgramDimension]
    ADD CONSTRAINT [ProgramDimension_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[ProgramDimension_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[ProgramDimension]
    ADD CONSTRAINT [ProgramDimension_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[ProgramEvaluation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[ProgramEvaluation]
    ADD CONSTRAINT [ProgramEvaluation_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[ProgramEvaluation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[ProgramEvaluation]
    ADD CONSTRAINT [ProgramEvaluation_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[ProgramEvaluationElement_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[ProgramEvaluationElement]
    ADD CONSTRAINT [ProgramEvaluationElement_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[ProgramEvaluationElement_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[ProgramEvaluationElement]
    ADD CONSTRAINT [ProgramEvaluationElement_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[ProgramEvaluationObjective_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[ProgramEvaluationObjective]
    ADD CONSTRAINT [ProgramEvaluationObjective_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[ProgramEvaluationObjective_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[ProgramEvaluationObjective]
    ADD CONSTRAINT [ProgramEvaluationObjective_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[ProjectDimension_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[ProjectDimension]
    ADD CONSTRAINT [ProjectDimension_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[ProjectDimension_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[ProjectDimension]
    ADD CONSTRAINT [ProjectDimension_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[ReportCard_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[ReportCard]
    ADD CONSTRAINT [ReportCard_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[ReportCard_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[ReportCard]
    ADD CONSTRAINT [ReportCard_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[SchoolYearType_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[SchoolYearType]
    ADD CONSTRAINT [SchoolYearType_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[SchoolYearType_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[SchoolYearType]
    ADD CONSTRAINT [SchoolYearType_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[Section_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[Section]
    ADD CONSTRAINT [Section_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[Section_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[Section]
    ADD CONSTRAINT [Section_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[SectionAttendanceTakenEvent_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[SectionAttendanceTakenEvent]
    ADD CONSTRAINT [SectionAttendanceTakenEvent_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[SectionAttendanceTakenEvent_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[SectionAttendanceTakenEvent]
    ADD CONSTRAINT [SectionAttendanceTakenEvent_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[Session_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[Session]
    ADD CONSTRAINT [Session_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[Session_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[Session]
    ADD CONSTRAINT [Session_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[SourceDimension_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[SourceDimension]
    ADD CONSTRAINT [SourceDimension_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[SourceDimension_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[SourceDimension]
    ADD CONSTRAINT [SourceDimension_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[Staff_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[Staff]
    ADD CONSTRAINT [Staff_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[Staff_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[Staff]
    ADD CONSTRAINT [Staff_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[StaffAbsenceEvent_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StaffAbsenceEvent]
    ADD CONSTRAINT [StaffAbsenceEvent_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StaffAbsenceEvent_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[StaffAbsenceEvent]
    ADD CONSTRAINT [StaffAbsenceEvent_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[StaffCohortAssociation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StaffCohortAssociation]
    ADD CONSTRAINT [StaffCohortAssociation_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StaffCohortAssociation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[StaffCohortAssociation]
    ADD CONSTRAINT [StaffCohortAssociation_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[StaffDisciplineIncidentAssociation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StaffDisciplineIncidentAssociation]
    ADD CONSTRAINT [StaffDisciplineIncidentAssociation_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StaffDisciplineIncidentAssociation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[StaffDisciplineIncidentAssociation]
    ADD CONSTRAINT [StaffDisciplineIncidentAssociation_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[StaffEducationOrganizationAssignmentAssociation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StaffEducationOrganizationAssignmentAssociation]
    ADD CONSTRAINT [StaffEducationOrganizationAssignmentAssociation_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StaffEducationOrganizationAssignmentAssociation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[StaffEducationOrganizationAssignmentAssociation]
    ADD CONSTRAINT [StaffEducationOrganizationAssignmentAssociation_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[StaffEducationOrganizationContactAssociation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StaffEducationOrganizationContactAssociation]
    ADD CONSTRAINT [StaffEducationOrganizationContactAssociation_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StaffEducationOrganizationContactAssociation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[StaffEducationOrganizationContactAssociation]
    ADD CONSTRAINT [StaffEducationOrganizationContactAssociation_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[StaffEducationOrganizationEmploymentAssociation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StaffEducationOrganizationEmploymentAssociation]
    ADD CONSTRAINT [StaffEducationOrganizationEmploymentAssociation_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StaffEducationOrganizationEmploymentAssociation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[StaffEducationOrganizationEmploymentAssociation]
    ADD CONSTRAINT [StaffEducationOrganizationEmploymentAssociation_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[StaffLeave_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StaffLeave]
    ADD CONSTRAINT [StaffLeave_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StaffLeave_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[StaffLeave]
    ADD CONSTRAINT [StaffLeave_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[StaffProgramAssociation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StaffProgramAssociation]
    ADD CONSTRAINT [StaffProgramAssociation_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StaffProgramAssociation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[StaffProgramAssociation]
    ADD CONSTRAINT [StaffProgramAssociation_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[StaffSchoolAssociation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StaffSchoolAssociation]
    ADD CONSTRAINT [StaffSchoolAssociation_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StaffSchoolAssociation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[StaffSchoolAssociation]
    ADD CONSTRAINT [StaffSchoolAssociation_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[StaffSectionAssociation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StaffSectionAssociation]
    ADD CONSTRAINT [StaffSectionAssociation_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StaffSectionAssociation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[StaffSectionAssociation]
    ADD CONSTRAINT [StaffSectionAssociation_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[Student_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[Student]
    ADD CONSTRAINT [Student_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[Student_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[Student]
    ADD CONSTRAINT [Student_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentAcademicRecord_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentAcademicRecord]
    ADD CONSTRAINT [StudentAcademicRecord_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentAcademicRecord_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[StudentAcademicRecord]
    ADD CONSTRAINT [StudentAcademicRecord_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentAssessment_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentAssessment]
    ADD CONSTRAINT [StudentAssessment_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentAssessment_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[StudentAssessment]
    ADD CONSTRAINT [StudentAssessment_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentAssessmentEducationOrganizationAssociation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentAssessmentEducationOrganizationAssociation]
    ADD CONSTRAINT [StudentAssessmentEducationOrganizationAssociation_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentAssessmentEducationOrganizationAssociation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[StudentAssessmentEducationOrganizationAssociation]
    ADD CONSTRAINT [StudentAssessmentEducationOrganizationAssociation_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentCohortAssociation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentCohortAssociation]
    ADD CONSTRAINT [StudentCohortAssociation_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentCohortAssociation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[StudentCohortAssociation]
    ADD CONSTRAINT [StudentCohortAssociation_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentCompetencyObjective_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentCompetencyObjective]
    ADD CONSTRAINT [StudentCompetencyObjective_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentCompetencyObjective_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[StudentCompetencyObjective]
    ADD CONSTRAINT [StudentCompetencyObjective_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentContactAssociation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentContactAssociation]
    ADD CONSTRAINT [StudentContactAssociation_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentContactAssociation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[StudentContactAssociation]
    ADD CONSTRAINT [StudentContactAssociation_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentDisciplineIncidentBehaviorAssociation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentDisciplineIncidentBehaviorAssociation]
    ADD CONSTRAINT [StudentDisciplineIncidentBehaviorAssociation_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentDisciplineIncidentBehaviorAssociation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[StudentDisciplineIncidentBehaviorAssociation]
    ADD CONSTRAINT [StudentDisciplineIncidentBehaviorAssociation_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentDisciplineIncidentNonOffenderAssociation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentDisciplineIncidentNonOffenderAssociation]
    ADD CONSTRAINT [StudentDisciplineIncidentNonOffenderAssociation_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentDisciplineIncidentNonOffenderAssociation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[StudentDisciplineIncidentNonOffenderAssociation]
    ADD CONSTRAINT [StudentDisciplineIncidentNonOffenderAssociation_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentEducationOrganizationAssociation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociation]
    ADD CONSTRAINT [StudentEducationOrganizationAssociation_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentEducationOrganizationAssociation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociation]
    ADD CONSTRAINT [StudentEducationOrganizationAssociation_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentEducationOrganizationResponsibilityAssociation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentEducationOrganizationResponsibilityAssociation]
    ADD CONSTRAINT [StudentEducationOrganizationResponsibilityAssociation_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentEducationOrganizationResponsibilityAssociation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[StudentEducationOrganizationResponsibilityAssociation]
    ADD CONSTRAINT [StudentEducationOrganizationResponsibilityAssociation_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentGradebookEntry_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentGradebookEntry]
    ADD CONSTRAINT [StudentGradebookEntry_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentGradebookEntry_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[StudentGradebookEntry]
    ADD CONSTRAINT [StudentGradebookEntry_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentHealth_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentHealth]
    ADD CONSTRAINT [StudentHealth_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentHealth_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[StudentHealth]
    ADD CONSTRAINT [StudentHealth_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentInterventionAssociation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentInterventionAssociation]
    ADD CONSTRAINT [StudentInterventionAssociation_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentInterventionAssociation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[StudentInterventionAssociation]
    ADD CONSTRAINT [StudentInterventionAssociation_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentInterventionAttendanceEvent_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentInterventionAttendanceEvent]
    ADD CONSTRAINT [StudentInterventionAttendanceEvent_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentInterventionAttendanceEvent_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[StudentInterventionAttendanceEvent]
    ADD CONSTRAINT [StudentInterventionAttendanceEvent_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentProgramAttendanceEvent_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentProgramAttendanceEvent]
    ADD CONSTRAINT [StudentProgramAttendanceEvent_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentProgramAttendanceEvent_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[StudentProgramAttendanceEvent]
    ADD CONSTRAINT [StudentProgramAttendanceEvent_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentProgramEvaluation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentProgramEvaluation]
    ADD CONSTRAINT [StudentProgramEvaluation_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentProgramEvaluation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[StudentProgramEvaluation]
    ADD CONSTRAINT [StudentProgramEvaluation_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentSchoolAssociation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentSchoolAssociation]
    ADD CONSTRAINT [StudentSchoolAssociation_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentSchoolAssociation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[StudentSchoolAssociation]
    ADD CONSTRAINT [StudentSchoolAssociation_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentSchoolAttendanceEvent_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentSchoolAttendanceEvent]
    ADD CONSTRAINT [StudentSchoolAttendanceEvent_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentSchoolAttendanceEvent_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[StudentSchoolAttendanceEvent]
    ADD CONSTRAINT [StudentSchoolAttendanceEvent_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentSectionAttendanceEvent_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentSectionAttendanceEvent]
    ADD CONSTRAINT [StudentSectionAttendanceEvent_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentSectionAttendanceEvent_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[StudentSectionAttendanceEvent]
    ADD CONSTRAINT [StudentSectionAttendanceEvent_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentTransportation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentTransportation]
    ADD CONSTRAINT [StudentTransportation_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[StudentTransportation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[StudentTransportation]
    ADD CONSTRAINT [StudentTransportation_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[Survey_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[Survey]
    ADD CONSTRAINT [Survey_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[Survey_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[Survey]
    ADD CONSTRAINT [Survey_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[SurveyCourseAssociation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[SurveyCourseAssociation]
    ADD CONSTRAINT [SurveyCourseAssociation_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[SurveyCourseAssociation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[SurveyCourseAssociation]
    ADD CONSTRAINT [SurveyCourseAssociation_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[SurveyProgramAssociation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[SurveyProgramAssociation]
    ADD CONSTRAINT [SurveyProgramAssociation_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[SurveyProgramAssociation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[SurveyProgramAssociation]
    ADD CONSTRAINT [SurveyProgramAssociation_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[SurveyQuestion_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[SurveyQuestion]
    ADD CONSTRAINT [SurveyQuestion_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[SurveyQuestion_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[SurveyQuestion]
    ADD CONSTRAINT [SurveyQuestion_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[SurveyQuestionResponse_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[SurveyQuestionResponse]
    ADD CONSTRAINT [SurveyQuestionResponse_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[SurveyQuestionResponse_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[SurveyQuestionResponse]
    ADD CONSTRAINT [SurveyQuestionResponse_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[SurveyResponse_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[SurveyResponse]
    ADD CONSTRAINT [SurveyResponse_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[SurveyResponse_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[SurveyResponse]
    ADD CONSTRAINT [SurveyResponse_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[SurveyResponseEducationOrganizationTargetAssociation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[SurveyResponseEducationOrganizationTargetAssociation]
    ADD CONSTRAINT [SurveyResponseEducationOrganizationTargetAssociation_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[SurveyResponseEducationOrganizationTargetAssociation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[SurveyResponseEducationOrganizationTargetAssociation]
    ADD CONSTRAINT [SurveyResponseEducationOrganizationTargetAssociation_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[SurveyResponseStaffTargetAssociation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[SurveyResponseStaffTargetAssociation]
    ADD CONSTRAINT [SurveyResponseStaffTargetAssociation_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[SurveyResponseStaffTargetAssociation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[SurveyResponseStaffTargetAssociation]
    ADD CONSTRAINT [SurveyResponseStaffTargetAssociation_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[SurveySection_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[SurveySection]
    ADD CONSTRAINT [SurveySection_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[SurveySection_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[SurveySection]
    ADD CONSTRAINT [SurveySection_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[SurveySectionAssociation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[SurveySectionAssociation]
    ADD CONSTRAINT [SurveySectionAssociation_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[SurveySectionAssociation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[SurveySectionAssociation]
    ADD CONSTRAINT [SurveySectionAssociation_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[SurveySectionResponse_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[SurveySectionResponse]
    ADD CONSTRAINT [SurveySectionResponse_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[SurveySectionResponse_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[SurveySectionResponse]
    ADD CONSTRAINT [SurveySectionResponse_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[SurveySectionResponseEducationOrganizationTargetAssociation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[SurveySectionResponseEducationOrganizationTargetAssociation]
    ADD CONSTRAINT [SurveySectionResponseEducationOrganizationTargetAssociation_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[SurveySectionResponseEducationOrganizationTargetAssociation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[SurveySectionResponseEducationOrganizationTargetAssociation]
    ADD CONSTRAINT [SurveySectionResponseEducationOrganizationTargetAssociation_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [edfi].[SurveySectionResponseStaffTargetAssociation_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[SurveySectionResponseStaffTargetAssociation]
    ADD CONSTRAINT [SurveySectionResponseStaffTargetAssociation_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [edfi].[SurveySectionResponseStaffTargetAssociation_DF_LastModifiedDate]...';


GO
ALTER TABLE [edfi].[SurveySectionResponseStaffTargetAssociation]
    ADD CONSTRAINT [SurveySectionResponseStaffTargetAssociation_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [tpdm].[Candidate_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[Candidate]
    ADD CONSTRAINT [Candidate_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [tpdm].[Candidate_DF_LastModifiedDate]...';


GO
ALTER TABLE [tpdm].[Candidate]
    ADD CONSTRAINT [Candidate_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [tpdm].[CandidateEducatorPreparationProgramAssociation_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[CandidateEducatorPreparationProgramAssociation]
    ADD CONSTRAINT [CandidateEducatorPreparationProgramAssociation_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [tpdm].[CandidateEducatorPreparationProgramAssociation_DF_LastModifiedDate]...';


GO
ALTER TABLE [tpdm].[CandidateEducatorPreparationProgramAssociation]
    ADD CONSTRAINT [CandidateEducatorPreparationProgramAssociation_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [tpdm].[EducatorPreparationProgram_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[EducatorPreparationProgram]
    ADD CONSTRAINT [EducatorPreparationProgram_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [tpdm].[EducatorPreparationProgram_DF_LastModifiedDate]...';


GO
ALTER TABLE [tpdm].[EducatorPreparationProgram]
    ADD CONSTRAINT [EducatorPreparationProgram_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [tpdm].[Evaluation_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[Evaluation]
    ADD CONSTRAINT [Evaluation_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [tpdm].[Evaluation_DF_LastModifiedDate]...';


GO
ALTER TABLE [tpdm].[Evaluation]
    ADD CONSTRAINT [Evaluation_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [tpdm].[EvaluationElement_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[EvaluationElement]
    ADD CONSTRAINT [EvaluationElement_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [tpdm].[EvaluationElement_DF_LastModifiedDate]...';


GO
ALTER TABLE [tpdm].[EvaluationElement]
    ADD CONSTRAINT [EvaluationElement_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [tpdm].[EvaluationElementRating_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[EvaluationElementRating]
    ADD CONSTRAINT [EvaluationElementRating_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [tpdm].[EvaluationElementRating_DF_LastModifiedDate]...';


GO
ALTER TABLE [tpdm].[EvaluationElementRating]
    ADD CONSTRAINT [EvaluationElementRating_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [tpdm].[EvaluationObjective_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[EvaluationObjective]
    ADD CONSTRAINT [EvaluationObjective_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [tpdm].[EvaluationObjective_DF_LastModifiedDate]...';


GO
ALTER TABLE [tpdm].[EvaluationObjective]
    ADD CONSTRAINT [EvaluationObjective_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [tpdm].[EvaluationObjectiveRating_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[EvaluationObjectiveRating]
    ADD CONSTRAINT [EvaluationObjectiveRating_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [tpdm].[EvaluationObjectiveRating_DF_LastModifiedDate]...';


GO
ALTER TABLE [tpdm].[EvaluationObjectiveRating]
    ADD CONSTRAINT [EvaluationObjectiveRating_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [tpdm].[FinancialAid_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[FinancialAid]
    ADD CONSTRAINT [FinancialAid_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [tpdm].[FinancialAid_DF_LastModifiedDate]...';


GO
ALTER TABLE [tpdm].[FinancialAid]
    ADD CONSTRAINT [FinancialAid_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [tpdm].[PerformanceEvaluation_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[PerformanceEvaluation]
    ADD CONSTRAINT [PerformanceEvaluation_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [tpdm].[PerformanceEvaluation_DF_LastModifiedDate]...';


GO
ALTER TABLE [tpdm].[PerformanceEvaluation]
    ADD CONSTRAINT [PerformanceEvaluation_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [tpdm].[PerformanceEvaluationRating_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[PerformanceEvaluationRating]
    ADD CONSTRAINT [PerformanceEvaluationRating_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [tpdm].[PerformanceEvaluationRating_DF_LastModifiedDate]...';


GO
ALTER TABLE [tpdm].[PerformanceEvaluationRating]
    ADD CONSTRAINT [PerformanceEvaluationRating_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [tpdm].[RubricDimension_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[RubricDimension]
    ADD CONSTRAINT [RubricDimension_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [tpdm].[RubricDimension_DF_LastModifiedDate]...';


GO
ALTER TABLE [tpdm].[RubricDimension]
    ADD CONSTRAINT [RubricDimension_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [tpdm].[SurveyResponsePersonTargetAssociation_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[SurveyResponsePersonTargetAssociation]
    ADD CONSTRAINT [SurveyResponsePersonTargetAssociation_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [tpdm].[SurveyResponsePersonTargetAssociation_DF_LastModifiedDate]...';


GO
ALTER TABLE [tpdm].[SurveyResponsePersonTargetAssociation]
    ADD CONSTRAINT [SurveyResponsePersonTargetAssociation_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Default Constraint [tpdm].[SurveySectionResponsePersonTargetAssociation_DF_CreateDate]...';


GO
ALTER TABLE [tpdm].[SurveySectionResponsePersonTargetAssociation]
    ADD CONSTRAINT [SurveySectionResponsePersonTargetAssociation_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate];


GO
PRINT N'Creating Default Constraint [tpdm].[SurveySectionResponsePersonTargetAssociation_DF_LastModifiedDate]...';


GO
ALTER TABLE [tpdm].[SurveySectionResponsePersonTargetAssociation]
    ADD CONSTRAINT [SurveySectionResponsePersonTargetAssociation_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating Foreign Key [edfi].[FK_RestraintEventProgram_RestraintEvent]...';


GO
ALTER TABLE [edfi].[RestraintEventProgram] WITH NOCHECK
    ADD CONSTRAINT [FK_RestraintEventProgram_RestraintEvent] FOREIGN KEY ([RestraintEventIdentifier], [SchoolId], [StudentUSI]) REFERENCES [edfi].[RestraintEvent] ([RestraintEventIdentifier], [SchoolId], [StudentUSI]) ON DELETE CASCADE;


GO
PRINT N'Creating Foreign Key [edfi].[FK_RestraintEventReason_RestraintEvent]...';


GO
ALTER TABLE [edfi].[RestraintEventReason] WITH NOCHECK
    ADD CONSTRAINT [FK_RestraintEventReason_RestraintEvent] FOREIGN KEY ([RestraintEventIdentifier], [SchoolId], [StudentUSI]) REFERENCES [edfi].[RestraintEvent] ([RestraintEventIdentifier], [SchoolId], [StudentUSI]) ON DELETE CASCADE;


GO
PRINT N'Creating Foreign Key [edfi].[FK_RestraintEvent_EducationalEnvironmentDescriptor]...';


GO
ALTER TABLE [edfi].[RestraintEvent] WITH NOCHECK
    ADD CONSTRAINT [FK_RestraintEvent_EducationalEnvironmentDescriptor] FOREIGN KEY ([EducationalEnvironmentDescriptorId]) REFERENCES [edfi].[EducationalEnvironmentDescriptor] ([EducationalEnvironmentDescriptorId]);


GO
PRINT N'Creating Foreign Key [edfi].[FK_RestraintEvent_School]...';


GO
ALTER TABLE [edfi].[RestraintEvent] WITH NOCHECK
    ADD CONSTRAINT [FK_RestraintEvent_School] FOREIGN KEY ([SchoolId]) REFERENCES [edfi].[School] ([SchoolId]);


GO
PRINT N'Creating Foreign Key [edfi].[FK_RestraintEvent_Student]...';


GO
ALTER TABLE [edfi].[RestraintEvent] WITH NOCHECK
    ADD CONSTRAINT [FK_RestraintEvent_Student] FOREIGN KEY ([StudentUSI]) REFERENCES [edfi].[Student] ([StudentUSI]);


GO
PRINT N'Creating Foreign Key [edfi].[FK_RestraintEvent_DisciplineIncident]...';


GO
ALTER TABLE [edfi].[RestraintEvent] WITH NOCHECK
    ADD CONSTRAINT [FK_RestraintEvent_DisciplineIncident] FOREIGN KEY ([IncidentIdentifier], [SchoolId]) REFERENCES [edfi].[DisciplineIncident] ([IncidentIdentifier], [SchoolId]);


GO
PRINT N'Creating Foreign Key [edfi].[FK_StudentSectionAssociationProgram_StudentSectionAssociation]...';


GO
ALTER TABLE [edfi].[StudentSectionAssociationProgram] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentSectionAssociationProgram_StudentSectionAssociation] FOREIGN KEY ([BeginDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName], [StudentUSI]) REFERENCES [edfi].[StudentSectionAssociation] ([BeginDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName], [StudentUSI]) ON DELETE CASCADE ON UPDATE CASCADE;


GO
PRINT N'Creating Foreign Key [edfi].[FK_StudentCompetencyObjectiveStudentSectionAssociation_StudentSectionAssociation]...';


GO
ALTER TABLE [edfi].[StudentCompetencyObjectiveStudentSectionAssociation] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentCompetencyObjectiveStudentSectionAssociation_StudentSectionAssociation] FOREIGN KEY ([BeginDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName], [StudentUSI]) REFERENCES [edfi].[StudentSectionAssociation] ([BeginDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName], [StudentUSI]) ON UPDATE CASCADE;


GO
PRINT N'Creating Foreign Key [edfi].[FK_StudentSectionAssociation_AttemptStatusDescriptor]...';


GO
ALTER TABLE [edfi].[StudentSectionAssociation] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentSectionAssociation_AttemptStatusDescriptor] FOREIGN KEY ([AttemptStatusDescriptorId]) REFERENCES [edfi].[AttemptStatusDescriptor] ([AttemptStatusDescriptorId]);


GO
PRINT N'Creating Foreign Key [edfi].[FK_StudentSectionAssociation_RepeatIdentifierDescriptor]...';


GO
ALTER TABLE [edfi].[StudentSectionAssociation] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentSectionAssociation_RepeatIdentifierDescriptor] FOREIGN KEY ([RepeatIdentifierDescriptorId]) REFERENCES [edfi].[RepeatIdentifierDescriptor] ([RepeatIdentifierDescriptorId]);


GO
PRINT N'Creating Foreign Key [edfi].[FK_StudentSectionAssociation_Section]...';


GO
ALTER TABLE [edfi].[StudentSectionAssociation] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentSectionAssociation_Section] FOREIGN KEY ([LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName]) REFERENCES [edfi].[Section] ([LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName]) ON UPDATE CASCADE;


GO
PRINT N'Creating Foreign Key [edfi].[FK_StudentSectionAssociation_Student]...';


GO
ALTER TABLE [edfi].[StudentSectionAssociation] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentSectionAssociation_Student] FOREIGN KEY ([StudentUSI]) REFERENCES [edfi].[Student] ([StudentUSI]);


GO
PRINT N'Creating Foreign Key [edfi].[FK_Grade_StudentSectionAssociation]...';


GO
ALTER TABLE [edfi].[Grade] WITH NOCHECK
    ADD CONSTRAINT [FK_Grade_StudentSectionAssociation] FOREIGN KEY ([BeginDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName], [StudentUSI]) REFERENCES [edfi].[StudentSectionAssociation] ([BeginDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName], [StudentUSI]) ON UPDATE CASCADE;


GO
PRINT N'Creating Foreign Key [edfi].[FK_StudentSectionAssociation_DualCreditInstitutionDescriptor]...';


GO
ALTER TABLE [edfi].[StudentSectionAssociation] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentSectionAssociation_DualCreditInstitutionDescriptor] FOREIGN KEY ([DualCreditInstitutionDescriptorId]) REFERENCES [edfi].[DualCreditInstitutionDescriptor] ([DualCreditInstitutionDescriptorId]);


GO
PRINT N'Creating Foreign Key [edfi].[FK_StudentSectionAssociation_DualCreditTypeDescriptor]...';


GO
ALTER TABLE [edfi].[StudentSectionAssociation] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentSectionAssociation_DualCreditTypeDescriptor] FOREIGN KEY ([DualCreditTypeDescriptorId]) REFERENCES [edfi].[DualCreditTypeDescriptor] ([DualCreditTypeDescriptorId]);


GO
PRINT N'Creating Foreign Key [edfi].[FK_StudentSectionAssociation_EducationOrganization]...';


GO
ALTER TABLE [edfi].[StudentSectionAssociation] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentSectionAssociation_EducationOrganization] FOREIGN KEY ([DualCreditEducationOrganizationId]) REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId]);


GO
PRINT N'Creating Foreign Key [edfi].[FK_StudentSpecialEducationProgramAssociation_GeneralStudentProgramAssociation]...';


GO
ALTER TABLE [edfi].[StudentSpecialEducationProgramAssociation] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentSpecialEducationProgramAssociation_GeneralStudentProgramAssociation] FOREIGN KEY ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI]) REFERENCES [edfi].[GeneralStudentProgramAssociation] ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI]) ON DELETE CASCADE;


GO
PRINT N'Creating Foreign Key [edfi].[FK_StudentSpecialEducationProgramAssociation_SpecialEducationExitReasonDescriptor]...';


GO
ALTER TABLE [edfi].[StudentSpecialEducationProgramAssociation] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentSpecialEducationProgramAssociation_SpecialEducationExitReasonDescriptor] FOREIGN KEY ([SpecialEducationExitReasonDescriptorId]) REFERENCES [edfi].[SpecialEducationExitReasonDescriptor] ([SpecialEducationExitReasonDescriptorId]);


GO
PRINT N'Creating Foreign Key [edfi].[FK_StudentSpecialEducationProgramAssociation_SpecialEducationSettingDescriptor]...';


GO
ALTER TABLE [edfi].[StudentSpecialEducationProgramAssociation] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentSpecialEducationProgramAssociation_SpecialEducationSettingDescriptor] FOREIGN KEY ([SpecialEducationSettingDescriptorId]) REFERENCES [edfi].[SpecialEducationSettingDescriptor] ([SpecialEducationSettingDescriptorId]);


GO
PRINT N'Creating Foreign Key [edfi].[FK_StudentSpecialEducationProgramAssociationDisability_StudentSpecialEducationProgramAssociation]...';


GO
ALTER TABLE [edfi].[StudentSpecialEducationProgramAssociationDisability] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentSpecialEducationProgramAssociationDisability_StudentSpecialEducationProgramAssociation] FOREIGN KEY ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI]) REFERENCES [edfi].[StudentSpecialEducationProgramAssociation] ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI]) ON DELETE CASCADE;


GO
PRINT N'Creating Foreign Key [edfi].[FK_StudentSpecialEducationProgramAssociationServiceProvider_StudentSpecialEducationProgramAssociation]...';


GO
ALTER TABLE [edfi].[StudentSpecialEducationProgramAssociationServiceProvider] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentSpecialEducationProgramAssociationServiceProvider_StudentSpecialEducationProgramAssociation] FOREIGN KEY ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI]) REFERENCES [edfi].[StudentSpecialEducationProgramAssociation] ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI]) ON DELETE CASCADE;


GO
PRINT N'Creating Foreign Key [edfi].[FK_StudentSpecialEducationProgramAssociationSpecialEducationProgramService_StudentSpecialEducationProgramAssociation]...';


GO
ALTER TABLE [edfi].[StudentSpecialEducationProgramAssociationSpecialEducationProgramService] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentSpecialEducationProgramAssociationSpecialEducationProgramService_StudentSpecialEducationProgramAssociation] FOREIGN KEY ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI]) REFERENCES [edfi].[StudentSpecialEducationProgramAssociation] ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI]) ON DELETE CASCADE;


GO
PRINT N'Creating Foreign Key [edfi].[FK_StudentSpecialEducationProgramEligibilityAssociation_EducationOrganization]...';


GO
ALTER TABLE [edfi].[StudentSpecialEducationProgramEligibilityAssociation] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentSpecialEducationProgramEligibilityAssociation_EducationOrganization] FOREIGN KEY ([EducationOrganizationId]) REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId]);


GO
PRINT N'Creating Foreign Key [edfi].[FK_StudentSpecialEducationProgramEligibilityAssociation_EligibilityDelayReasonDescriptor]...';


GO
ALTER TABLE [edfi].[StudentSpecialEducationProgramEligibilityAssociation] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentSpecialEducationProgramEligibilityAssociation_EligibilityDelayReasonDescriptor] FOREIGN KEY ([EligibilityDelayReasonDescriptorId]) REFERENCES [edfi].[EligibilityDelayReasonDescriptor] ([EligibilityDelayReasonDescriptorId]);


GO
PRINT N'Creating Foreign Key [edfi].[FK_StudentSpecialEducationProgramEligibilityAssociation_EligibilityEvaluationTypeDescriptor]...';


GO
ALTER TABLE [edfi].[StudentSpecialEducationProgramEligibilityAssociation] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentSpecialEducationProgramEligibilityAssociation_EligibilityEvaluationTypeDescriptor] FOREIGN KEY ([EligibilityEvaluationTypeDescriptorId]) REFERENCES [edfi].[EligibilityEvaluationTypeDescriptor] ([EligibilityEvaluationTypeDescriptorId]);


GO
PRINT N'Creating Foreign Key [edfi].[FK_StudentSpecialEducationProgramEligibilityAssociation_EvaluationDelayReasonDescriptor]...';


GO
ALTER TABLE [edfi].[StudentSpecialEducationProgramEligibilityAssociation] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentSpecialEducationProgramEligibilityAssociation_EvaluationDelayReasonDescriptor] FOREIGN KEY ([EvaluationDelayReasonDescriptorId]) REFERENCES [edfi].[EvaluationDelayReasonDescriptor] ([EvaluationDelayReasonDescriptorId]);


GO
PRINT N'Creating Foreign Key [edfi].[FK_StudentSpecialEducationProgramEligibilityAssociation_IDEAPartDescriptor]...';


GO
ALTER TABLE [edfi].[StudentSpecialEducationProgramEligibilityAssociation] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentSpecialEducationProgramEligibilityAssociation_IDEAPartDescriptor] FOREIGN KEY ([IDEAPartDescriptorId]) REFERENCES [edfi].[IDEAPartDescriptor] ([IDEAPartDescriptorId]);


GO
PRINT N'Creating Foreign Key [edfi].[FK_StudentSpecialEducationProgramEligibilityAssociation_Program]...';


GO
ALTER TABLE [edfi].[StudentSpecialEducationProgramEligibilityAssociation] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentSpecialEducationProgramEligibilityAssociation_Program] FOREIGN KEY ([ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId]) REFERENCES [edfi].[Program] ([EducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId]);


GO
PRINT N'Creating Foreign Key [edfi].[FK_StudentSpecialEducationProgramEligibilityAssociation_Student]...';


GO
ALTER TABLE [edfi].[StudentSpecialEducationProgramEligibilityAssociation] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentSpecialEducationProgramEligibilityAssociation_Student] FOREIGN KEY ([StudentUSI]) REFERENCES [edfi].[Student] ([StudentUSI]);


GO
PRINT N'Creating Foreign Key [tpdm].[FK_Candidate_SexDescriptor]...';


GO
ALTER TABLE [tpdm].[Candidate] WITH NOCHECK
    ADD CONSTRAINT [FK_Candidate_SexDescriptor] FOREIGN KEY ([SexDescriptorId]) REFERENCES [edfi].[SexDescriptor] ([SexDescriptorId]);


GO
PRINT N'Creating Foreign Key [tpdm].[FK_EvaluationRatingResult_EvaluationRating]...';


GO
ALTER TABLE [tpdm].[EvaluationRatingResult] WITH NOCHECK
    ADD CONSTRAINT [FK_EvaluationRatingResult_EvaluationRating] FOREIGN KEY ([EducationOrganizationId], [EvaluationDate], [EvaluationPeriodDescriptorId], [EvaluationTitle], [PerformanceEvaluationTitle], [PerformanceEvaluationTypeDescriptorId], [PersonId], [SchoolYear], [SourceSystemDescriptorId], [TermDescriptorId]) REFERENCES [tpdm].[EvaluationRating] ([EducationOrganizationId], [EvaluationDate], [EvaluationPeriodDescriptorId], [EvaluationTitle], [PerformanceEvaluationTitle], [PerformanceEvaluationTypeDescriptorId], [PersonId], [SchoolYear], [SourceSystemDescriptorId], [TermDescriptorId]) ON DELETE CASCADE;


GO
PRINT N'Creating Foreign Key [tpdm].[FK_EvaluationRatingReviewer_EvaluationRating]...';


GO
ALTER TABLE [tpdm].[EvaluationRatingReviewer] WITH NOCHECK
    ADD CONSTRAINT [FK_EvaluationRatingReviewer_EvaluationRating] FOREIGN KEY ([EducationOrganizationId], [EvaluationDate], [EvaluationPeriodDescriptorId], [EvaluationTitle], [PerformanceEvaluationTitle], [PerformanceEvaluationTypeDescriptorId], [PersonId], [SchoolYear], [SourceSystemDescriptorId], [TermDescriptorId]) REFERENCES [tpdm].[EvaluationRating] ([EducationOrganizationId], [EvaluationDate], [EvaluationPeriodDescriptorId], [EvaluationTitle], [PerformanceEvaluationTitle], [PerformanceEvaluationTypeDescriptorId], [PersonId], [SchoolYear], [SourceSystemDescriptorId], [TermDescriptorId]) ON DELETE CASCADE;


GO
PRINT N'Creating Foreign Key [tpdm].[FK_EvaluationObjectiveRating_EvaluationRating]...';


GO
ALTER TABLE [tpdm].[EvaluationObjectiveRating] WITH NOCHECK
    ADD CONSTRAINT [FK_EvaluationObjectiveRating_EvaluationRating] FOREIGN KEY ([EducationOrganizationId], [EvaluationDate], [EvaluationPeriodDescriptorId], [EvaluationTitle], [PerformanceEvaluationTitle], [PerformanceEvaluationTypeDescriptorId], [PersonId], [SchoolYear], [SourceSystemDescriptorId], [TermDescriptorId]) REFERENCES [tpdm].[EvaluationRating] ([EducationOrganizationId], [EvaluationDate], [EvaluationPeriodDescriptorId], [EvaluationTitle], [PerformanceEvaluationTitle], [PerformanceEvaluationTypeDescriptorId], [PersonId], [SchoolYear], [SourceSystemDescriptorId], [TermDescriptorId]);


GO
PRINT N'Creating Foreign Key [tpdm].[FK_EvaluationRating_Evaluation]...';


GO
ALTER TABLE [tpdm].[EvaluationRating] WITH NOCHECK
    ADD CONSTRAINT [FK_EvaluationRating_Evaluation] FOREIGN KEY ([EducationOrganizationId], [EvaluationPeriodDescriptorId], [EvaluationTitle], [PerformanceEvaluationTitle], [PerformanceEvaluationTypeDescriptorId], [SchoolYear], [TermDescriptorId]) REFERENCES [tpdm].[Evaluation] ([EducationOrganizationId], [EvaluationPeriodDescriptorId], [EvaluationTitle], [PerformanceEvaluationTitle], [PerformanceEvaluationTypeDescriptorId], [SchoolYear], [TermDescriptorId]);


GO
PRINT N'Creating Foreign Key [tpdm].[FK_EvaluationRating_EvaluationRatingLevelDescriptor]...';


GO
ALTER TABLE [tpdm].[EvaluationRating] WITH NOCHECK
    ADD CONSTRAINT [FK_EvaluationRating_EvaluationRatingLevelDescriptor] FOREIGN KEY ([EvaluationRatingLevelDescriptorId]) REFERENCES [tpdm].[EvaluationRatingLevelDescriptor] ([EvaluationRatingLevelDescriptorId]);


GO
PRINT N'Creating Foreign Key [tpdm].[FK_EvaluationRating_EvaluationRatingStatusDescriptor]...';


GO
ALTER TABLE [tpdm].[EvaluationRating] WITH NOCHECK
    ADD CONSTRAINT [FK_EvaluationRating_EvaluationRatingStatusDescriptor] FOREIGN KEY ([EvaluationRatingStatusDescriptorId]) REFERENCES [tpdm].[EvaluationRatingStatusDescriptor] ([EvaluationRatingStatusDescriptorId]);


GO
PRINT N'Creating Foreign Key [tpdm].[FK_EvaluationRating_PerformanceEvaluationRating]...';


GO
ALTER TABLE [tpdm].[EvaluationRating] WITH NOCHECK
    ADD CONSTRAINT [FK_EvaluationRating_PerformanceEvaluationRating] FOREIGN KEY ([EducationOrganizationId], [EvaluationPeriodDescriptorId], [PerformanceEvaluationTitle], [PerformanceEvaluationTypeDescriptorId], [PersonId], [SchoolYear], [SourceSystemDescriptorId], [TermDescriptorId]) REFERENCES [tpdm].[PerformanceEvaluationRating] ([EducationOrganizationId], [EvaluationPeriodDescriptorId], [PerformanceEvaluationTitle], [PerformanceEvaluationTypeDescriptorId], [PersonId], [SchoolYear], [SourceSystemDescriptorId], [TermDescriptorId]);


GO
PRINT N'Creating Foreign Key [tpdm].[FK_EvaluationRating_Section]...';


GO
ALTER TABLE [tpdm].[EvaluationRating] WITH NOCHECK
    ADD CONSTRAINT [FK_EvaluationRating_Section] FOREIGN KEY ([LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName]) REFERENCES [edfi].[Section] ([LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName]) ON UPDATE CASCADE;


GO
PRINT N'Creating Foreign Key [edfi].[FK_AssessmentAdministration_Assessment]...';


GO
ALTER TABLE [edfi].[AssessmentAdministration] WITH NOCHECK
    ADD CONSTRAINT [FK_AssessmentAdministration_Assessment] FOREIGN KEY ([AssessmentIdentifier], [Namespace]) REFERENCES [edfi].[Assessment] ([AssessmentIdentifier], [Namespace]);


GO
PRINT N'Creating Foreign Key [edfi].[FK_AssessmentAdministration_EducationOrganization]...';


GO
ALTER TABLE [edfi].[AssessmentAdministration] WITH NOCHECK
    ADD CONSTRAINT [FK_AssessmentAdministration_EducationOrganization] FOREIGN KEY ([AssigningEducationOrganizationId]) REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId]);


GO
PRINT N'Creating Foreign Key [edfi].[FK_AssessmentAdministrationAssessmentBatteryPart_AssessmentAdministration]...';


GO
ALTER TABLE [edfi].[AssessmentAdministrationAssessmentBatteryPart] WITH NOCHECK
    ADD CONSTRAINT [FK_AssessmentAdministrationAssessmentBatteryPart_AssessmentAdministration] FOREIGN KEY ([AdministrationIdentifier], [AssessmentIdentifier], [AssigningEducationOrganizationId], [Namespace]) REFERENCES [edfi].[AssessmentAdministration] ([AdministrationIdentifier], [AssessmentIdentifier], [AssigningEducationOrganizationId], [Namespace]) ON DELETE CASCADE;


GO
PRINT N'Creating Foreign Key [edfi].[FK_AssessmentAdministrationAssessmentBatteryPart_AssessmentBatteryPart]...';


GO
ALTER TABLE [edfi].[AssessmentAdministrationAssessmentBatteryPart] WITH NOCHECK
    ADD CONSTRAINT [FK_AssessmentAdministrationAssessmentBatteryPart_AssessmentBatteryPart] FOREIGN KEY ([AssessmentBatteryPartName], [AssessmentIdentifier], [Namespace]) REFERENCES [edfi].[AssessmentBatteryPart] ([AssessmentBatteryPartName], [AssessmentIdentifier], [Namespace]);


GO
PRINT N'Creating Foreign Key [edfi].[FK_AssessmentAdministrationParticipation_AssessmentAdministration]...';


GO
ALTER TABLE [edfi].[AssessmentAdministrationParticipation] WITH NOCHECK
    ADD CONSTRAINT [FK_AssessmentAdministrationParticipation_AssessmentAdministration] FOREIGN KEY ([AdministrationIdentifier], [AssessmentIdentifier], [AssigningEducationOrganizationId], [Namespace]) REFERENCES [edfi].[AssessmentAdministration] ([AdministrationIdentifier], [AssessmentIdentifier], [AssigningEducationOrganizationId], [Namespace]);


GO
PRINT N'Creating Foreign Key [edfi].[FK_AssessmentAdministrationParticipation_EducationOrganization]...';


GO
ALTER TABLE [edfi].[AssessmentAdministrationParticipation] WITH NOCHECK
    ADD CONSTRAINT [FK_AssessmentAdministrationParticipation_EducationOrganization] FOREIGN KEY ([ParticipatingEducationOrganizationId]) REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId]);


GO
PRINT N'Creating Foreign Key [edfi].[FK_AssessmentAdministrationParticipationAdministrationPointOfContact_AssessmentAdministrationParticipation]...';


GO
ALTER TABLE [edfi].[AssessmentAdministrationParticipationAdministrationPointOfContact] WITH NOCHECK
    ADD CONSTRAINT [FK_AssessmentAdministrationParticipationAdministrationPointOfContact_AssessmentAdministrationParticipation] FOREIGN KEY ([AdministrationIdentifier], [AssessmentIdentifier], [AssigningEducationOrganizationId], [Namespace], [ParticipatingEducationOrganizationId]) REFERENCES [edfi].[AssessmentAdministrationParticipation] ([AdministrationIdentifier], [AssessmentIdentifier], [AssigningEducationOrganizationId], [Namespace], [ParticipatingEducationOrganizationId]) ON DELETE CASCADE;


GO
PRINT N'Creating Foreign Key [edfi].[FK_AssessmentAdministrationParticipationAdministrationPointOfContact_EducationOrganization]...';


GO
ALTER TABLE [edfi].[AssessmentAdministrationParticipationAdministrationPointOfContact] WITH NOCHECK
    ADD CONSTRAINT [FK_AssessmentAdministrationParticipationAdministrationPointOfContact_EducationOrganization] FOREIGN KEY ([EducationOrganizationId]) REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId]);


GO
PRINT N'Creating Foreign Key [edfi].[FK_AssessmentAdministrationPeriod_AssessmentAdministration]...';


GO
ALTER TABLE [edfi].[AssessmentAdministrationPeriod] WITH NOCHECK
    ADD CONSTRAINT [FK_AssessmentAdministrationPeriod_AssessmentAdministration] FOREIGN KEY ([AdministrationIdentifier], [AssessmentIdentifier], [AssigningEducationOrganizationId], [Namespace]) REFERENCES [edfi].[AssessmentAdministration] ([AdministrationIdentifier], [AssessmentIdentifier], [AssigningEducationOrganizationId], [Namespace]) ON DELETE CASCADE;


GO
PRINT N'Creating Foreign Key [edfi].[FK_AssessmentBatteryPart_Assessment]...';


GO
ALTER TABLE [edfi].[AssessmentBatteryPart] WITH NOCHECK
    ADD CONSTRAINT [FK_AssessmentBatteryPart_Assessment] FOREIGN KEY ([AssessmentIdentifier], [Namespace]) REFERENCES [edfi].[Assessment] ([AssessmentIdentifier], [Namespace]);


GO
PRINT N'Creating Foreign Key [edfi].[FK_AssessmentBatteryPartObjectiveAssessment_AssessmentBatteryPart]...';


GO
ALTER TABLE [edfi].[AssessmentBatteryPartObjectiveAssessment] WITH NOCHECK
    ADD CONSTRAINT [FK_AssessmentBatteryPartObjectiveAssessment_AssessmentBatteryPart] FOREIGN KEY ([AssessmentBatteryPartName], [AssessmentIdentifier], [Namespace]) REFERENCES [edfi].[AssessmentBatteryPart] ([AssessmentBatteryPartName], [AssessmentIdentifier], [Namespace]) ON DELETE CASCADE;


GO
PRINT N'Creating Foreign Key [edfi].[FK_AssessmentBatteryPartObjectiveAssessment_ObjectiveAssessment]...';


GO
ALTER TABLE [edfi].[AssessmentBatteryPartObjectiveAssessment] WITH NOCHECK
    ADD CONSTRAINT [FK_AssessmentBatteryPartObjectiveAssessment_ObjectiveAssessment] FOREIGN KEY ([AssessmentIdentifier], [IdentificationCode], [Namespace]) REFERENCES [edfi].[ObjectiveAssessment] ([AssessmentIdentifier], [IdentificationCode], [Namespace]);


GO
PRINT N'Creating Foreign Key [edfi].[FK_DualCreditInstitutionDescriptor_Descriptor]...';


GO
ALTER TABLE [edfi].[DualCreditInstitutionDescriptor] WITH NOCHECK
    ADD CONSTRAINT [FK_DualCreditInstitutionDescriptor_Descriptor] FOREIGN KEY ([DualCreditInstitutionDescriptorId]) REFERENCES [edfi].[Descriptor] ([DescriptorId]) ON DELETE CASCADE;


GO
PRINT N'Creating Foreign Key [edfi].[FK_DualCreditTypeDescriptor_Descriptor]...';


GO
ALTER TABLE [edfi].[DualCreditTypeDescriptor] WITH NOCHECK
    ADD CONSTRAINT [FK_DualCreditTypeDescriptor_Descriptor] FOREIGN KEY ([DualCreditTypeDescriptorId]) REFERENCES [edfi].[Descriptor] ([DescriptorId]) ON DELETE CASCADE;


GO
PRINT N'Creating Foreign Key [edfi].[FK_Section504DisabilityDescriptor_Descriptor]...';


GO
ALTER TABLE [edfi].[Section504DisabilityDescriptor] WITH NOCHECK
    ADD CONSTRAINT [FK_Section504DisabilityDescriptor_Descriptor] FOREIGN KEY ([Section504DisabilityDescriptorId]) REFERENCES [edfi].[Descriptor] ([DescriptorId]) ON DELETE CASCADE;


GO
PRINT N'Creating Foreign Key [edfi].[FK_StudentAssessmentRegistration_AssessmentAdministration]...';


GO
ALTER TABLE [edfi].[StudentAssessmentRegistration] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentAssessmentRegistration_AssessmentAdministration] FOREIGN KEY ([AdministrationIdentifier], [AssessmentIdentifier], [AssigningEducationOrganizationId], [Namespace]) REFERENCES [edfi].[AssessmentAdministration] ([AdministrationIdentifier], [AssessmentIdentifier], [AssigningEducationOrganizationId], [Namespace]);


GO
PRINT N'Creating Foreign Key [edfi].[FK_StudentAssessmentRegistration_EducationOrganization]...';


GO
ALTER TABLE [edfi].[StudentAssessmentRegistration] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentAssessmentRegistration_EducationOrganization] FOREIGN KEY ([ReportingEducationOrganizationId]) REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId]);


GO
PRINT N'Creating Foreign Key [edfi].[FK_StudentAssessmentRegistration_EducationOrganization1]...';


GO
ALTER TABLE [edfi].[StudentAssessmentRegistration] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentAssessmentRegistration_EducationOrganization1] FOREIGN KEY ([TestingEducationOrganizationId]) REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId]);


GO
PRINT N'Creating Foreign Key [edfi].[FK_StudentAssessmentRegistration_GradeLevelDescriptor]...';


GO
ALTER TABLE [edfi].[StudentAssessmentRegistration] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentAssessmentRegistration_GradeLevelDescriptor] FOREIGN KEY ([AssessmentGradeLevelDescriptorId]) REFERENCES [edfi].[GradeLevelDescriptor] ([GradeLevelDescriptorId]);


GO
PRINT N'Creating Foreign Key [edfi].[FK_StudentAssessmentRegistration_PlatformTypeDescriptor]...';


GO
ALTER TABLE [edfi].[StudentAssessmentRegistration] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentAssessmentRegistration_PlatformTypeDescriptor] FOREIGN KEY ([PlatformTypeDescriptorId]) REFERENCES [edfi].[PlatformTypeDescriptor] ([PlatformTypeDescriptorId]);


GO
PRINT N'Creating Foreign Key [edfi].[FK_StudentAssessmentRegistration_StudentEducationOrganizationAssessmentAccommodation]...';


GO
ALTER TABLE [edfi].[StudentAssessmentRegistration] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentAssessmentRegistration_StudentEducationOrganizationAssessmentAccommodation] FOREIGN KEY ([ScheduledEducationOrganizationId], [ScheduledStudentUSI]) REFERENCES [edfi].[StudentEducationOrganizationAssessmentAccommodation] ([EducationOrganizationId], [StudentUSI]);


GO
PRINT N'Creating Foreign Key [edfi].[FK_StudentAssessmentRegistration_StudentEducationOrganizationAssociation]...';


GO
ALTER TABLE [edfi].[StudentAssessmentRegistration] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentAssessmentRegistration_StudentEducationOrganizationAssociation] FOREIGN KEY ([EducationOrganizationId], [StudentUSI]) REFERENCES [edfi].[StudentEducationOrganizationAssociation] ([EducationOrganizationId], [StudentUSI]);


GO
PRINT N'Creating Foreign Key [edfi].[FK_StudentAssessmentRegistration_StudentSchoolAssociation]...';


GO
ALTER TABLE [edfi].[StudentAssessmentRegistration] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentAssessmentRegistration_StudentSchoolAssociation] FOREIGN KEY ([EntryDate], [SchoolId], [StudentUSI]) REFERENCES [edfi].[StudentSchoolAssociation] ([EntryDate], [SchoolId], [StudentUSI]) ON UPDATE CASCADE;


GO
PRINT N'Creating Foreign Key [edfi].[FK_StudentAssessmentRegistrationAssessmentAccommodation_AccommodationDescriptor]...';


GO
ALTER TABLE [edfi].[StudentAssessmentRegistrationAssessmentAccommodation] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentAssessmentRegistrationAssessmentAccommodation_AccommodationDescriptor] FOREIGN KEY ([AccommodationDescriptorId]) REFERENCES [edfi].[AccommodationDescriptor] ([AccommodationDescriptorId]);


GO
PRINT N'Creating Foreign Key [edfi].[FK_StudentAssessmentRegistrationAssessmentAccommodation_StudentAssessmentRegistration]...';


GO
ALTER TABLE [edfi].[StudentAssessmentRegistrationAssessmentAccommodation] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentAssessmentRegistrationAssessmentAccommodation_StudentAssessmentRegistration] FOREIGN KEY ([AdministrationIdentifier], [AssessmentIdentifier], [AssigningEducationOrganizationId], [EducationOrganizationId], [Namespace], [StudentUSI]) REFERENCES [edfi].[StudentAssessmentRegistration] ([AdministrationIdentifier], [AssessmentIdentifier], [AssigningEducationOrganizationId], [EducationOrganizationId], [Namespace], [StudentUSI]) ON DELETE CASCADE;


GO
PRINT N'Creating Foreign Key [edfi].[FK_StudentAssessmentRegistrationAssessmentCustomization_StudentAssessmentRegistration]...';


GO
ALTER TABLE [edfi].[StudentAssessmentRegistrationAssessmentCustomization] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentAssessmentRegistrationAssessmentCustomization_StudentAssessmentRegistration] FOREIGN KEY ([AdministrationIdentifier], [AssessmentIdentifier], [AssigningEducationOrganizationId], [EducationOrganizationId], [Namespace], [StudentUSI]) REFERENCES [edfi].[StudentAssessmentRegistration] ([AdministrationIdentifier], [AssessmentIdentifier], [AssigningEducationOrganizationId], [EducationOrganizationId], [Namespace], [StudentUSI]) ON DELETE CASCADE;


GO
PRINT N'Creating Foreign Key [edfi].[FK_StudentAssessmentRegistrationBatteryPartAssociation_AssessmentBatteryPart]...';


GO
ALTER TABLE [edfi].[StudentAssessmentRegistrationBatteryPartAssociation] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentAssessmentRegistrationBatteryPartAssociation_AssessmentBatteryPart] FOREIGN KEY ([AssessmentBatteryPartName], [AssessmentIdentifier], [Namespace]) REFERENCES [edfi].[AssessmentBatteryPart] ([AssessmentBatteryPartName], [AssessmentIdentifier], [Namespace]);


GO
PRINT N'Creating Foreign Key [edfi].[FK_StudentAssessmentRegistrationBatteryPartAssociation_StudentAssessmentRegistration]...';


GO
ALTER TABLE [edfi].[StudentAssessmentRegistrationBatteryPartAssociation] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentAssessmentRegistrationBatteryPartAssociation_StudentAssessmentRegistration] FOREIGN KEY ([AdministrationIdentifier], [AssessmentIdentifier], [AssigningEducationOrganizationId], [EducationOrganizationId], [Namespace], [StudentUSI]) REFERENCES [edfi].[StudentAssessmentRegistration] ([AdministrationIdentifier], [AssessmentIdentifier], [AssigningEducationOrganizationId], [EducationOrganizationId], [Namespace], [StudentUSI]);


GO
PRINT N'Creating Foreign Key [edfi].[FK_StudentAssessmentRegistrationBatteryPartAssociationAccommodation_AccommodationDescriptor]...';


GO
ALTER TABLE [edfi].[StudentAssessmentRegistrationBatteryPartAssociationAccommodation] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentAssessmentRegistrationBatteryPartAssociationAccommodation_AccommodationDescriptor] FOREIGN KEY ([AccommodationDescriptorId]) REFERENCES [edfi].[AccommodationDescriptor] ([AccommodationDescriptorId]);


GO
PRINT N'Creating Foreign Key [edfi].[FK_StudentAssessmentRegistrationBatteryPartAssociationAccommodation_StudentAssessmentRegistrationBatteryPartAssociation]...';


GO
ALTER TABLE [edfi].[StudentAssessmentRegistrationBatteryPartAssociationAccommodation] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentAssessmentRegistrationBatteryPartAssociationAccommodation_StudentAssessmentRegistrationBatteryPartAssociation] FOREIGN KEY ([AdministrationIdentifier], [AssessmentBatteryPartName], [AssessmentIdentifier], [AssigningEducationOrganizationId], [EducationOrganizationId], [Namespace], [StudentUSI]) REFERENCES [edfi].[StudentAssessmentRegistrationBatteryPartAssociation] ([AdministrationIdentifier], [AssessmentBatteryPartName], [AssessmentIdentifier], [AssigningEducationOrganizationId], [EducationOrganizationId], [Namespace], [StudentUSI]) ON DELETE CASCADE;


GO
PRINT N'Creating Foreign Key [edfi].[FK_StudentDisciplineIncidentBehaviorAssociationWeapon_StudentDisciplineIncidentBehaviorAssociation]...';


GO
ALTER TABLE [edfi].[StudentDisciplineIncidentBehaviorAssociationWeapon] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentDisciplineIncidentBehaviorAssociationWeapon_StudentDisciplineIncidentBehaviorAssociation] FOREIGN KEY ([BehaviorDescriptorId], [IncidentIdentifier], [SchoolId], [StudentUSI]) REFERENCES [edfi].[StudentDisciplineIncidentBehaviorAssociation] ([BehaviorDescriptorId], [IncidentIdentifier], [SchoolId], [StudentUSI]) ON DELETE CASCADE;


GO
PRINT N'Creating Foreign Key [edfi].[FK_StudentDisciplineIncidentBehaviorAssociationWeapon_WeaponDescriptor]...';


GO
ALTER TABLE [edfi].[StudentDisciplineIncidentBehaviorAssociationWeapon] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentDisciplineIncidentBehaviorAssociationWeapon_WeaponDescriptor] FOREIGN KEY ([WeaponDescriptorId]) REFERENCES [edfi].[WeaponDescriptor] ([WeaponDescriptorId]);


GO
PRINT N'Creating Foreign Key [edfi].[FK_StudentEducationOrganizationAssessmentAccommodation_Student]...';


GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssessmentAccommodation] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentEducationOrganizationAssessmentAccommodation_Student] FOREIGN KEY ([StudentUSI]) REFERENCES [edfi].[Student] ([StudentUSI]);


GO
PRINT N'Creating Foreign Key [edfi].[FK_StudentEducationOrganizationAssessmentAccommodation_EducationOrganization]...';


GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssessmentAccommodation] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentEducationOrganizationAssessmentAccommodation_EducationOrganization] FOREIGN KEY ([EducationOrganizationId]) REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId]);


GO
PRINT N'Creating Foreign Key [edfi].[FK_StudentEducationOrganizationAssessmentAccommodationGeneralAccommodation_AccommodationDescriptor]...';


GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssessmentAccommodationGeneralAccommodation] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentEducationOrganizationAssessmentAccommodationGeneralAccommodation_AccommodationDescriptor] FOREIGN KEY ([AccommodationDescriptorId]) REFERENCES [edfi].[AccommodationDescriptor] ([AccommodationDescriptorId]);


GO
PRINT N'Creating Foreign Key [edfi].[FK_StudentEducationOrganizationAssessmentAccommodationGeneralAccommodation_StudentEducationOrganizationAssessmentAccommodation]...';


GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssessmentAccommodationGeneralAccommodation] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentEducationOrganizationAssessmentAccommodationGeneralAccommodation_StudentEducationOrganizationAssessmentAccommodation] FOREIGN KEY ([EducationOrganizationId], [StudentUSI]) REFERENCES [edfi].[StudentEducationOrganizationAssessmentAccommodation] ([EducationOrganizationId], [StudentUSI]) ON DELETE CASCADE;


GO
PRINT N'Creating Foreign Key [edfi].[FK_StudentSection504ProgramAssociation_GeneralStudentProgramAssociation]...';


GO
ALTER TABLE [edfi].[StudentSection504ProgramAssociation] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentSection504ProgramAssociation_GeneralStudentProgramAssociation] FOREIGN KEY ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI]) REFERENCES [edfi].[GeneralStudentProgramAssociation] ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI]) ON DELETE CASCADE;


GO
PRINT N'Creating Foreign Key [edfi].[FK_StudentSection504ProgramAssociation_Section504DisabilityDescriptor]...';


GO
ALTER TABLE [edfi].[StudentSection504ProgramAssociation] WITH NOCHECK
    ADD CONSTRAINT [FK_StudentSection504ProgramAssociation_Section504DisabilityDescriptor] FOREIGN KEY ([Section504DisabilityDescriptorId]) REFERENCES [edfi].[Section504DisabilityDescriptor] ([Section504DisabilityDescriptorId]);


GO
PRINT N'Creating Trigger [edfi].[edfi_AssessmentSection_TR_Assessment_Update]...';


GO
-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

CREATE TRIGGER [edfi].[edfi_AssessmentSection_TR_Assessment_Update]
ON [edfi].[AssessmentSection]
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    -- Check if any volatile foreign key values have changed
    IF UPDATE(LocalCourseCode)
       OR UPDATE(SchoolId)
       OR UPDATE(SchoolYear)
       OR UPDATE(SectionIdentifier)
       OR UPDATE(SessionName)
    BEGIN
        -- Update the LastModifiedDate in the root table to the current UTC time
        UPDATE rt
        SET rt.LastModifiedDate = GETUTCDATE()
        FROM [edfi].[Assessment] rt
        INNER JOIN inserted i
            ON rt.AssessmentIdentifier = i.AssessmentIdentifier
               AND rt.Namespace = i.Namespace;
    END
END;
GO
PRINT N'Creating Trigger [edfi].[edfi_BellScheduleClassPeriod_TR_BellSchedule_Update]...';


GO
CREATE TRIGGER [edfi].[edfi_BellScheduleClassPeriod_TR_BellSchedule_Update]
ON [edfi].[BellScheduleClassPeriod]
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    -- Check if any volatile foreign key values have changed
    IF UPDATE(ClassPeriodName)
       OR UPDATE(SchoolId)
    BEGIN
        -- Update the LastModifiedDate in the root table to the current UTC time
        UPDATE rt
        SET rt.LastModifiedDate = GETUTCDATE()
        FROM [edfi].[BellSchedule] rt
        INNER JOIN inserted i
            ON rt.BellScheduleName = i.BellScheduleName
               AND rt.SchoolId = i.SchoolId;
    END
END;
GO
PRINT N'Creating Trigger [edfi].[edfi_CourseTranscriptSection_TR_CourseTranscript_Update]...';


GO
CREATE TRIGGER [edfi].[edfi_CourseTranscriptSection_TR_CourseTranscript_Update]
ON [edfi].[CourseTranscriptSection]
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    -- Check if any volatile foreign key values have changed
    IF UPDATE(LocalCourseCode)
       OR UPDATE(SchoolId)
       OR UPDATE(SchoolYear)
       OR UPDATE(SectionIdentifier)
       OR UPDATE(SessionName)
    BEGIN
        -- Update the LastModifiedDate in the root table to the current UTC time
        UPDATE rt
        SET rt.LastModifiedDate = GETUTCDATE()
        FROM [edfi].[CourseTranscript] rt
        INNER JOIN inserted i
            ON rt.CourseAttemptResultDescriptorId = i.CourseAttemptResultDescriptorId
               AND rt.CourseCode = i.CourseCode
               AND rt.CourseEducationOrganizationId = i.CourseEducationOrganizationId
               AND rt.EducationOrganizationId = i.EducationOrganizationId
               AND rt.SchoolYear = i.SchoolYear
               AND rt.StudentUSI = i.StudentUSI
               AND rt.TermDescriptorId = i.TermDescriptorId;
    END
END;
GO
PRINT N'Creating Trigger [edfi].[edfi_ReportCardGrade_TR_ReportCard_Update]...';


GO
CREATE TRIGGER [edfi].[edfi_ReportCardGrade_TR_ReportCard_Update]
ON [edfi].[ReportCardGrade]
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    -- Check if any volatile foreign key values have changed
    IF UPDATE(BeginDate)
       OR UPDATE(GradeTypeDescriptorId)
       OR UPDATE(GradingPeriodDescriptorId)
       OR UPDATE(GradingPeriodName)
       OR UPDATE(GradingPeriodSchoolYear)
       OR UPDATE(LocalCourseCode)
       OR UPDATE(SchoolId)
       OR UPDATE(SchoolYear)
       OR UPDATE(SectionIdentifier)
       OR UPDATE(SessionName)
       OR UPDATE(StudentUSI)
    BEGIN
        -- Update the LastModifiedDate in the root table to the current UTC time
        UPDATE rt
        SET rt.LastModifiedDate = GETUTCDATE()
        FROM [edfi].[ReportCard] rt
        INNER JOIN inserted i
            ON rt.EducationOrganizationId = i.EducationOrganizationId
               AND rt.GradingPeriodDescriptorId = i.GradingPeriodDescriptorId
               AND rt.GradingPeriodName = i.GradingPeriodName
               AND rt.GradingPeriodSchoolId = i.GradingPeriodSchoolId
               AND rt.GradingPeriodSchoolYear = i.GradingPeriodSchoolYear
               AND rt.StudentUSI = i.StudentUSI;
    END
END;
GO
PRINT N'Creating Trigger [edfi].[edfi_SectionClassPeriod_TR_Section_Update]...';


GO
CREATE TRIGGER [edfi].[edfi_SectionClassPeriod_TR_Section_Update]
ON [edfi].[SectionClassPeriod]
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    -- Check if any volatile foreign key values have changed
    IF UPDATE(ClassPeriodName)
       OR UPDATE(SchoolId)
    BEGIN
        -- Update the LastModifiedDate in the root table to the current UTC time
        UPDATE rt
        SET rt.LastModifiedDate = GETUTCDATE()
        FROM [edfi].[Section] rt
        INNER JOIN inserted i
            ON rt.LocalCourseCode = i.LocalCourseCode
               AND rt.SchoolId = i.SchoolId
               AND rt.SchoolYear = i.SchoolYear
               AND rt.SectionIdentifier = i.SectionIdentifier
               AND rt.SessionName = i.SessionName;
    END
END;
GO
PRINT N'Creating Trigger [edfi].[edfi_StudentCohortAssociationSection_TR_StudentCohortAssociation_Update]...';


GO
CREATE TRIGGER [edfi].[edfi_StudentCohortAssociationSection_TR_StudentCohortAssociation_Update]
ON [edfi].[StudentCohortAssociationSection]
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    -- Check if any volatile foreign key values have changed
    IF UPDATE(LocalCourseCode)
       OR UPDATE(SchoolId)
       OR UPDATE(SchoolYear)
       OR UPDATE(SectionIdentifier)
       OR UPDATE(SessionName)
    BEGIN
        -- Update the LastModifiedDate in the root table to the current UTC time
        UPDATE rt
        SET rt.LastModifiedDate = GETUTCDATE()
        FROM [edfi].[StudentCohortAssociation] rt
        INNER JOIN inserted i
            ON rt.BeginDate = i.BeginDate
               AND rt.CohortIdentifier = i.CohortIdentifier
               AND rt.EducationOrganizationId = i.EducationOrganizationId
               AND rt.StudentUSI = i.StudentUSI;
    END
END;
GO
PRINT N'Creating Trigger [edfi].[edfi_StudentCompetencyObjectiveStudentSectionAssociation_TR_StudentCompetencyObjective_Update]...';


GO
CREATE TRIGGER [edfi].[edfi_StudentCompetencyObjectiveStudentSectionAssociation_TR_StudentCompetencyObjective_Update]
ON [edfi].[StudentCompetencyObjectiveStudentSectionAssociation]
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    -- Check if any volatile foreign key values have changed
    IF UPDATE(BeginDate)
       OR UPDATE(LocalCourseCode)
       OR UPDATE(SchoolId)
       OR UPDATE(SchoolYear)
       OR UPDATE(SectionIdentifier)
       OR UPDATE(SessionName)
       OR UPDATE(StudentUSI)
    BEGIN
        -- Update the LastModifiedDate in the root table to the current UTC time
        UPDATE rt
        SET rt.LastModifiedDate = GETUTCDATE()
        FROM [edfi].[StudentCompetencyObjective] rt
        INNER JOIN inserted i
            ON rt.GradingPeriodDescriptorId = i.GradingPeriodDescriptorId
               AND rt.GradingPeriodName = i.GradingPeriodName
               AND rt.GradingPeriodSchoolId = i.GradingPeriodSchoolId
               AND rt.GradingPeriodSchoolYear = i.GradingPeriodSchoolYear
               AND rt.ObjectiveEducationOrganizationId = i.ObjectiveEducationOrganizationId
               AND rt.Objective = i.Objective
               AND rt.ObjectiveGradeLevelDescriptorId = i.ObjectiveGradeLevelDescriptorId
               AND rt.StudentUSI = i.StudentUSI;
    END
END;
GO
PRINT N'Creating Trigger [edfi].[edfi_StudentSectionAttendanceEventClassPeriod_TR_StudentSectionAttendanceEvent_Update]...';


GO
CREATE TRIGGER [edfi].[edfi_StudentSectionAttendanceEventClassPeriod_TR_StudentSectionAttendanceEvent_Update]
ON [edfi].[StudentSectionAttendanceEventClassPeriod]
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    -- Check if any volatile foreign key values have changed
    IF UPDATE(ClassPeriodName)
       OR UPDATE(SchoolId)
    BEGIN
        -- Update the LastModifiedDate in the root table to the current UTC time
        UPDATE rt
        SET rt.LastModifiedDate = GETUTCDATE()
        FROM [edfi].[StudentSectionAttendanceEvent] rt
        INNER JOIN inserted i
            ON rt.AttendanceEventCategoryDescriptorId = i.AttendanceEventCategoryDescriptorId
               AND rt.EventDate = i.EventDate
               AND rt.LocalCourseCode = i.LocalCourseCode
               AND rt.SchoolId = i.SchoolId
               AND rt.SchoolYear = i.SchoolYear
               AND rt.SectionIdentifier = i.SectionIdentifier
               AND rt.SessionName = i.SessionName
               AND rt.StudentUSI = i.StudentUSI;
    END
END;
GO
PRINT N'Refreshing View [interop].[OperationalContextSupport]...';


GO
EXECUTE sp_refreshsqlmodule N'[interop].[OperationalContextSupport]';


GO
PRINT N'Altering View [auth].[EducationOrganizationIdToStaffUSI]...';


GO
ALTER   VIEW auth.EducationOrganizationIdToStaffUSI AS

    -- EdOrg Assignments
    SELECT  edOrgs.SourceEducationOrganizationId, seo_assign.StaffUSI
    FROM    auth.EducationOrganizationIdToEducationOrganizationId edOrgs
            INNER JOIN edfi.StaffEducationOrganizationAssignmentAssociation seo_assign
                ON edOrgs.TargetEducationOrganizationId =  seo_assign.EducationOrganizationId
    
    UNION

    -- EdOrg Employment
    SELECT  edOrgs.SourceEducationOrganizationId, seo_empl.StaffUSI
    FROM    auth.EducationOrganizationIdToEducationOrganizationId edOrgs
            INNER JOIN edfi.StaffEducationOrganizationEmploymentAssociation seo_empl
                ON edOrgs.TargetEducationOrganizationId = seo_empl.EducationOrganizationId
GO
PRINT N'Altering View [auth].[EducationOrganizationIdToContactUSI]...';


GO
ALTER   VIEW auth.EducationOrganizationIdToContactUSI AS
    SELECT  edOrgs.SourceEducationOrganizationId, spa.ContactUSI, COUNT_BIG(*) AS Ignored
    FROM    auth.EducationOrganizationIdToEducationOrganizationId edOrgs
            INNER JOIN edfi.StudentSchoolAssociation ssa 
                ON edOrgs.TargetEducationOrganizationId = ssa.SchoolId
            INNER JOIN edfi.StudentContactAssociation spa 
                ON ssa.StudentUSI = spa.StudentUSI
    GROUP BY edOrgs.SourceEducationOrganizationId, spa.ContactUSI
GO
PRINT N'Refreshing View [auth].[EducationOrganizationIdToStudentUSIThroughDeletedResponsibility]...';


GO
EXECUTE sp_refreshsqlmodule N'[auth].[EducationOrganizationIdToStudentUSIThroughDeletedResponsibility]';


GO
PRINT N'Altering View [auth].[EducationOrganizationIdToStudentUSIThroughResponsibility]...';


GO
ALTER   VIEW auth.EducationOrganizationIdToStudentUSIThroughResponsibility AS
    SELECT  edOrgs.SourceEducationOrganizationId, seora.StudentUSI
    FROM    auth.EducationOrganizationIdToEducationOrganizationId edOrgs
            INNER JOIN edfi.StudentEducationOrganizationResponsibilityAssociation seora
                ON edOrgs.TargetEducationOrganizationId = seora.EducationOrganizationId
    GROUP BY edOrgs.SourceEducationOrganizationId, seora.StudentUSI
GO
PRINT N'Altering View [auth].[EducationOrganizationIdToStudentUSI]...';


GO
ALTER   VIEW auth.EducationOrganizationIdToStudentUSI AS
    SELECT  edOrgs.SourceEducationOrganizationId, ssa.StudentUSI, COUNT_BIG(*) AS Ignored
    FROM    auth.EducationOrganizationIdToEducationOrganizationId edOrgs
        INNER JOIN edfi.StudentSchoolAssociation ssa
            ON edOrgs.TargetEducationOrganizationId = ssa.SchoolId
    GROUP BY edOrgs.SourceEducationOrganizationId, ssa.StudentUSI
GO
PRINT N'Creating View [auth].[AssessmentWithAnACTIdentifier]...';


GO
CREATE   VIEW auth.AssessmentWithAnACTIdentifier
AS
    SELECT a.AssessmentIdentifier ,a.Namespace
    FROM edfi.Assessment a
    WHERE   a.AssessmentIdentifier LIKE 'ACT%'
GO
PRINT N'Creating View [auth].[EducationOrganizationWithACategoryContainingAnSWord]...';


GO
CREATE   VIEW auth.EducationOrganizationWithACategoryContainingAnSWord
AS
    SELECT DISTINCT EducationOrganizationId
    FROM edfi.EducationOrganizationCategory cat
        INNER JOIN edfi.Descriptor d ON cat.EducationOrganizationCategoryDescriptorId = d.DescriptorId
    WHERE CodeValue LIKE 'S%' OR CodeValue LIKE '% S%'
GO
PRINT N'Creating View [auth].[StudentWithCTECourseEnrollments]...';


GO
CREATE   VIEW auth.StudentWithCTECourseEnrollments
AS
    SELECT DISTINCT StudentUSI
    FROM edfi.StudentSectionAssociation ssa
        INNER JOIN edfi.CourseOffering co
        ON co.LocalCourseCode = ssa.LocalCourseCode
            AND co.SchoolId = ssa.SchoolId
            AND co.SchoolYear = ssa.SchoolYear
            AND co.SessionName = ssa.SessionName
        INNER JOIN edfi.CourseAcademicSubject csubj
        ON csubj.CourseCode = co.CourseCode
            AND csubj.EducationOrganizationId = co.EducationOrganizationId
        INNER JOIN edfi.descriptor d
        ON csubj.AcademicSubjectDescriptorId = d.descriptorid
    WHERE d.CodeValue = 'Career and Technical Education'
GO
PRINT N'Creating View [auth].[TransportationTypeDescriptorWithABus]...';


GO
CREATE   VIEW auth.TransportationTypeDescriptorWithABus
AS
    SELECT TransportationTypeDescriptorId
    FROM edfi.TransportationTypeDescriptor td
        INNER JOIN edfi.Descriptor d ON td.TransportationTypeDescriptorId = d.DescriptorId
    WHERE  CodeValue LIKE '%Bus%'
GO
PRINT N'Altering Function [util].[GetEdFiOdsVersion]...';


GO
ALTER FUNCTION util.GetEdFiOdsVersion()
RETURNS VARCHAR(60)
AS
BEGIN
    RETURN '7.3'
END
GO
PRINT N'Altering Function [util].[GetEdFiStandardVersion]...';


GO
ALTER FUNCTION util.GetEdFiStandardVersion()
RETURNS VARCHAR(60)
AS
BEGIN
    RETURN '5.2'
END
GO
PRINT N'Creating Extended Property [edfi].[RestraintEvent].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'This event entity represents the instances where a special education student was physically or mechanically restrained due to imminent serious physical harm to themselves or others, imminent serious property destruction or a combination of both imminent serious physical harm to themselves or others and imminent serious property destruction.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'RestraintEvent';


GO
PRINT N'Creating Extended Property [edfi].[RestraintEvent].[RestraintEventIdentifier].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique number or alphanumeric code assigned to a restraint event by a school, school system, state, or other agency or entity.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'RestraintEvent', @level2type = N'COLUMN', @level2name = N'RestraintEventIdentifier';


GO
PRINT N'Creating Extended Property [edfi].[RestraintEvent].[SchoolId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'RestraintEvent', @level2type = N'COLUMN', @level2name = N'SchoolId';


GO
PRINT N'Creating Extended Property [edfi].[RestraintEvent].[StudentUSI].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique alphanumeric code assigned to a student.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'RestraintEvent', @level2type = N'COLUMN', @level2name = N'StudentUSI';


GO
PRINT N'Creating Extended Property [edfi].[RestraintEvent].[EducationalEnvironmentDescriptorId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The setting where the RestraintEvent was exercised.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'RestraintEvent', @level2type = N'COLUMN', @level2name = N'EducationalEnvironmentDescriptorId';


GO
PRINT N'Creating Extended Property [edfi].[RestraintEvent].[EventDate].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Month, day, and year of the restraint event.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'RestraintEvent', @level2type = N'COLUMN', @level2name = N'EventDate';


GO
PRINT N'Creating Extended Property [edfi].[RestraintEvent].[IncidentIdentifier].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A locally assigned unique identifier (within the school or school district) to identify each specific DisciplineIncident or occurrence. The same identifier should be used to document the entire discipline incident even if it included multiple offenses and multiple offenders.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'RestraintEvent', @level2type = N'COLUMN', @level2name = N'IncidentIdentifier';


GO
PRINT N'Creating Extended Property [edfi].[StudentSectionAssociation].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'This association indicates the course sections to which a student is assigned.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSectionAssociation';


GO
PRINT N'Creating Extended Property [edfi].[StudentSectionAssociation].[BeginDate].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Month, day, and year of the student''s entry or assignment to the section.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSectionAssociation', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO
PRINT N'Creating Extended Property [edfi].[StudentSectionAssociation].[LocalCourseCode].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSectionAssociation', @level2type = N'COLUMN', @level2name = N'LocalCourseCode';


GO
PRINT N'Creating Extended Property [edfi].[StudentSectionAssociation].[SchoolId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSectionAssociation', @level2type = N'COLUMN', @level2name = N'SchoolId';


GO
PRINT N'Creating Extended Property [edfi].[StudentSectionAssociation].[SchoolYear].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier for the school year.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSectionAssociation', @level2type = N'COLUMN', @level2name = N'SchoolYear';


GO
PRINT N'Creating Extended Property [edfi].[StudentSectionAssociation].[SectionIdentifier].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The local identifier assigned to a section.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSectionAssociation', @level2type = N'COLUMN', @level2name = N'SectionIdentifier';


GO
PRINT N'Creating Extended Property [edfi].[StudentSectionAssociation].[SessionName].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier for the calendar for the academic session.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSectionAssociation', @level2type = N'COLUMN', @level2name = N'SessionName';


GO
PRINT N'Creating Extended Property [edfi].[StudentSectionAssociation].[StudentUSI].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique alphanumeric code assigned to a student.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSectionAssociation', @level2type = N'COLUMN', @level2name = N'StudentUSI';


GO
PRINT N'Creating Extended Property [edfi].[StudentSectionAssociation].[AttemptStatusDescriptorId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'An indication of the student''s completion status for the section.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSectionAssociation', @level2type = N'COLUMN', @level2name = N'AttemptStatusDescriptorId';


GO
PRINT N'Creating Extended Property [edfi].[StudentSectionAssociation].[DualCreditEducationOrganizationId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to an education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSectionAssociation', @level2type = N'COLUMN', @level2name = N'DualCreditEducationOrganizationId';


GO
PRINT N'Creating Extended Property [edfi].[StudentSectionAssociation].[DualCreditIndicator].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Indicates whether the student assigned to the section is to receive dual credit upon successful completion.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSectionAssociation', @level2type = N'COLUMN', @level2name = N'DualCreditIndicator';


GO
PRINT N'Creating Extended Property [edfi].[StudentSectionAssociation].[DualCreditInstitutionDescriptorId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Descriptor for the postsecondary institution offering college credit. This descriptor may be used to select a postsecondary institution that is not defined as an education organization, and/or select a general type of postsecondary institution.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSectionAssociation', @level2type = N'COLUMN', @level2name = N'DualCreditInstitutionDescriptorId';


GO
PRINT N'Creating Extended Property [edfi].[StudentSectionAssociation].[DualCreditTypeDescriptorId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'For a student taking a dual credit course in a college or high school setting, indicates the type of dual credit program.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSectionAssociation', @level2type = N'COLUMN', @level2name = N'DualCreditTypeDescriptorId';


GO
PRINT N'Creating Extended Property [edfi].[StudentSectionAssociation].[DualHighSchoolCreditIndicator].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Indicates whether successful completion of the course will result in credits toward high school graduation.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSectionAssociation', @level2type = N'COLUMN', @level2name = N'DualHighSchoolCreditIndicator';


GO
PRINT N'Creating Extended Property [edfi].[StudentSectionAssociation].[EndDate].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Month, day, and year of the withdrawal or exit of the student from the section.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSectionAssociation', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
PRINT N'Creating Extended Property [edfi].[StudentSectionAssociation].[HomeroomIndicator].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Indicates the section is the student''s homeroom. Homeroom period may the convention for taking daily attendance.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSectionAssociation', @level2type = N'COLUMN', @level2name = N'HomeroomIndicator';


GO
PRINT N'Creating Extended Property [edfi].[StudentSectionAssociation].[RepeatIdentifierDescriptorId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'An indication as to whether a student has previously taken a given course.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSectionAssociation', @level2type = N'COLUMN', @level2name = N'RepeatIdentifierDescriptorId';


GO
PRINT N'Creating Extended Property [edfi].[StudentSectionAssociation].[TeacherStudentDataLinkExclusion].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Indicates that the student-section combination is excluded from calculation of value-added or growth attribution calculations used for a particular teacher evaluation.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSectionAssociation', @level2type = N'COLUMN', @level2name = N'TeacherStudentDataLinkExclusion';


GO
PRINT N'Creating Extended Property [edfi].[StudentSpecialEducationProgramAssociation].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'This association represents the special education program(s) that a student participates in or receives services from. The association is a subclass of the GeneralStudentProgramAssociation specifically designed for special education programs.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSpecialEducationProgramAssociation';


GO
PRINT N'Creating Extended Property [edfi].[StudentSpecialEducationProgramAssociation].[BeginDate].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSpecialEducationProgramAssociation', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO
PRINT N'Creating Extended Property [edfi].[StudentSpecialEducationProgramAssociation].[EducationOrganizationId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to an education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSpecialEducationProgramAssociation', @level2type = N'COLUMN', @level2name = N'EducationOrganizationId';


GO
PRINT N'Creating Extended Property [edfi].[StudentSpecialEducationProgramAssociation].[ProgramEducationOrganizationId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to an education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSpecialEducationProgramAssociation', @level2type = N'COLUMN', @level2name = N'ProgramEducationOrganizationId';


GO
PRINT N'Creating Extended Property [edfi].[StudentSpecialEducationProgramAssociation].[ProgramName].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSpecialEducationProgramAssociation', @level2type = N'COLUMN', @level2name = N'ProgramName';


GO
PRINT N'Creating Extended Property [edfi].[StudentSpecialEducationProgramAssociation].[ProgramTypeDescriptorId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The type of program.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSpecialEducationProgramAssociation', @level2type = N'COLUMN', @level2name = N'ProgramTypeDescriptorId';


GO
PRINT N'Creating Extended Property [edfi].[StudentSpecialEducationProgramAssociation].[StudentUSI].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique alphanumeric code assigned to a student.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSpecialEducationProgramAssociation', @level2type = N'COLUMN', @level2name = N'StudentUSI';


GO
PRINT N'Creating Extended Property [edfi].[StudentSpecialEducationProgramAssociation].[IdeaEligibility].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Indicator of the eligibility of the student to receive special education services according to the Individuals with Disabilities Education Act (IDEA).', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSpecialEducationProgramAssociation', @level2type = N'COLUMN', @level2name = N'IdeaEligibility';


GO
PRINT N'Creating Extended Property [edfi].[StudentSpecialEducationProgramAssociation].[IEPBeginDate].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The effective date of the most recent IEP.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSpecialEducationProgramAssociation', @level2type = N'COLUMN', @level2name = N'IEPBeginDate';


GO
PRINT N'Creating Extended Property [edfi].[StudentSpecialEducationProgramAssociation].[IEPEndDate].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The end date of the most recent IEP.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSpecialEducationProgramAssociation', @level2type = N'COLUMN', @level2name = N'IEPEndDate';


GO
PRINT N'Creating Extended Property [edfi].[StudentSpecialEducationProgramAssociation].[IEPReviewDate].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The date of the last IEP review.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSpecialEducationProgramAssociation', @level2type = N'COLUMN', @level2name = N'IEPReviewDate';


GO
PRINT N'Creating Extended Property [edfi].[StudentSpecialEducationProgramAssociation].[LastEvaluationDate].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The date of the last special education evaluation.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSpecialEducationProgramAssociation', @level2type = N'COLUMN', @level2name = N'LastEvaluationDate';


GO
PRINT N'Creating Extended Property [edfi].[StudentSpecialEducationProgramAssociation].[MedicallyFragile].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Indicates whether the student receiving special education and related services is: 1) in the age range of birth to 22 years, and 2) has a serious, ongoing illness or a chronic condition that has lasted or is anticipated to last at least 12 or more months or has required at least one month of hospitalization, and that requires daily, ongoing medical treatments and monitoring by appropriately trained personnel which may include parents or other family members, and 3) requires the routine use of medical device or of assistive technology to compensate for the loss of usefulness of a body function needed to participate in activities of daily living, and 4) lives with ongoing threat to his or her continued well-being. Aligns with federal requirements.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSpecialEducationProgramAssociation', @level2type = N'COLUMN', @level2name = N'MedicallyFragile';


GO
PRINT N'Creating Extended Property [edfi].[StudentSpecialEducationProgramAssociation].[MultiplyDisabled].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Indicates whether the student receiving special education and related services has been designated as multiply disabled by the admission, review, and dismissal committee as aligned with federal requirements.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSpecialEducationProgramAssociation', @level2type = N'COLUMN', @level2name = N'MultiplyDisabled';


GO
PRINT N'Creating Extended Property [edfi].[StudentSpecialEducationProgramAssociation].[ReductionInHoursPerWeekComparedToPeers].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Records the number of hours reduced for the shortened school day for the IEP student as compared to peers in regular education.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSpecialEducationProgramAssociation', @level2type = N'COLUMN', @level2name = N'ReductionInHoursPerWeekComparedToPeers';


GO
PRINT N'Creating Extended Property [edfi].[StudentSpecialEducationProgramAssociation].[SchoolHoursPerWeek].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Indicate the total number of hours of instructional time per week for the school that the student attends.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSpecialEducationProgramAssociation', @level2type = N'COLUMN', @level2name = N'SchoolHoursPerWeek';


GO
PRINT N'Creating Extended Property [edfi].[StudentSpecialEducationProgramAssociation].[ShortenedSchoolDayIndicator].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Indicator that the student''s IEP requires a shortened school day.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSpecialEducationProgramAssociation', @level2type = N'COLUMN', @level2name = N'ShortenedSchoolDayIndicator';


GO
PRINT N'Creating Extended Property [edfi].[StudentSpecialEducationProgramAssociation].[SpecialEducationExitDate].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The  month, day and year on which a person stops receiving special education services.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSpecialEducationProgramAssociation', @level2type = N'COLUMN', @level2name = N'SpecialEducationExitDate';


GO
PRINT N'Creating Extended Property [edfi].[StudentSpecialEducationProgramAssociation].[SpecialEducationExitExplained].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Explanation on why a person stops receiving special education services.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSpecialEducationProgramAssociation', @level2type = N'COLUMN', @level2name = N'SpecialEducationExitExplained';


GO
PRINT N'Creating Extended Property [edfi].[StudentSpecialEducationProgramAssociation].[SpecialEducationExitReasonDescriptorId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The reason why a person stops receiving special education services.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSpecialEducationProgramAssociation', @level2type = N'COLUMN', @level2name = N'SpecialEducationExitReasonDescriptorId';


GO
PRINT N'Creating Extended Property [edfi].[StudentSpecialEducationProgramAssociation].[SpecialEducationHoursPerWeek].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The number of hours per week for special education instruction and therapy.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSpecialEducationProgramAssociation', @level2type = N'COLUMN', @level2name = N'SpecialEducationHoursPerWeek';


GO
PRINT N'Creating Extended Property [edfi].[StudentSpecialEducationProgramAssociation].[SpecialEducationSettingDescriptorId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The major instructional setting (more than 50 percent of a student''s special education program).', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSpecialEducationProgramAssociation', @level2type = N'COLUMN', @level2name = N'SpecialEducationSettingDescriptorId';


GO
PRINT N'Creating Extended Property [edfi].[StudentSpecialEducationProgramEligibilityAssociation].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Captures details regarding the evaluation process for eligibility of students for special education services under IDEA Part C or Part B.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSpecialEducationProgramEligibilityAssociation';


GO
PRINT N'Creating Extended Property [edfi].[StudentSpecialEducationProgramEligibilityAssociation].[ConsentToEvaluationReceivedDate].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Indicates the date on which the local education agency received written consent for the evaluation from the student''s parent or guardian. This is the first day of the evaluation timeframe.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSpecialEducationProgramEligibilityAssociation', @level2type = N'COLUMN', @level2name = N'ConsentToEvaluationReceivedDate';


GO
PRINT N'Creating Extended Property [edfi].[StudentSpecialEducationProgramEligibilityAssociation].[EducationOrganizationId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to an education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSpecialEducationProgramEligibilityAssociation', @level2type = N'COLUMN', @level2name = N'EducationOrganizationId';


GO
PRINT N'Creating Extended Property [edfi].[StudentSpecialEducationProgramEligibilityAssociation].[ProgramEducationOrganizationId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to an education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSpecialEducationProgramEligibilityAssociation', @level2type = N'COLUMN', @level2name = N'ProgramEducationOrganizationId';


GO
PRINT N'Creating Extended Property [edfi].[StudentSpecialEducationProgramEligibilityAssociation].[ProgramName].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSpecialEducationProgramEligibilityAssociation', @level2type = N'COLUMN', @level2name = N'ProgramName';


GO
PRINT N'Creating Extended Property [edfi].[StudentSpecialEducationProgramEligibilityAssociation].[ProgramTypeDescriptorId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The type of program.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSpecialEducationProgramEligibilityAssociation', @level2type = N'COLUMN', @level2name = N'ProgramTypeDescriptorId';


GO
PRINT N'Creating Extended Property [edfi].[StudentSpecialEducationProgramEligibilityAssociation].[StudentUSI].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique alphanumeric code assigned to a student.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSpecialEducationProgramEligibilityAssociation', @level2type = N'COLUMN', @level2name = N'StudentUSI';


GO
PRINT N'Creating Extended Property [edfi].[StudentSpecialEducationProgramEligibilityAssociation].[ConsentToEvaluationDate].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The date on which the student''s parent gave a consent (Parent Consent Date).', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSpecialEducationProgramEligibilityAssociation', @level2type = N'COLUMN', @level2name = N'ConsentToEvaluationDate';


GO
PRINT N'Creating Extended Property [edfi].[StudentSpecialEducationProgramEligibilityAssociation].[EligibilityConferenceDate].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The month, day, and year when the eligibility conference is held between the parent(s)/guardian(s) and the educational organization responsible staff member(s) to review and make decision on special education related services eligibility.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSpecialEducationProgramEligibilityAssociation', @level2type = N'COLUMN', @level2name = N'EligibilityConferenceDate';


GO
PRINT N'Creating Extended Property [edfi].[StudentSpecialEducationProgramEligibilityAssociation].[EligibilityDelayReasonDescriptorId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The reason why the eligibility determination was completed beyond the required timeframe.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSpecialEducationProgramEligibilityAssociation', @level2type = N'COLUMN', @level2name = N'EligibilityDelayReasonDescriptorId';


GO
PRINT N'Creating Extended Property [edfi].[StudentSpecialEducationProgramEligibilityAssociation].[EligibilityDeterminationDate].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Indicates the month, day, and year the local education agency (LEA) held the admission, review, and dismissal committee meeting regarding the child''s eligibility determination for special education and related services. An individualized education plan (IEP) would be developed and implemented for a child admitted into special education on this same date.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSpecialEducationProgramEligibilityAssociation', @level2type = N'COLUMN', @level2name = N'EligibilityDeterminationDate';


GO
PRINT N'Creating Extended Property [edfi].[StudentSpecialEducationProgramEligibilityAssociation].[EligibilityEvaluationDate].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Indicates the month, day, and year when the written individual evaluation report was completed.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSpecialEducationProgramEligibilityAssociation', @level2type = N'COLUMN', @level2name = N'EligibilityEvaluationDate';


GO
PRINT N'Creating Extended Property [edfi].[StudentSpecialEducationProgramEligibilityAssociation].[EligibilityEvaluationTypeDescriptorId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Indicates if this is an initial evaluation or a reevaluation.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSpecialEducationProgramEligibilityAssociation', @level2type = N'COLUMN', @level2name = N'EligibilityEvaluationTypeDescriptorId';


GO
PRINT N'Creating Extended Property [edfi].[StudentSpecialEducationProgramEligibilityAssociation].[EvaluationCompleteIndicator].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Indicates the evaluation completed status.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSpecialEducationProgramEligibilityAssociation', @level2type = N'COLUMN', @level2name = N'EvaluationCompleteIndicator';


GO
PRINT N'Creating Extended Property [edfi].[StudentSpecialEducationProgramEligibilityAssociation].[EvaluationDelayDays].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Indicates the number of student absences, if any, beginning the first instructional day following the date on which the local education agency (LEA) received written parental or guardian consent for the evaluation.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSpecialEducationProgramEligibilityAssociation', @level2type = N'COLUMN', @level2name = N'EvaluationDelayDays';


GO
PRINT N'Creating Extended Property [edfi].[StudentSpecialEducationProgramEligibilityAssociation].[EvaluationDelayReasonDescriptorId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Refers to the justification as to why the evaluation report was completed beyond the state-established timeframe. This descriptor field will have allowed reasons as descriptor values.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSpecialEducationProgramEligibilityAssociation', @level2type = N'COLUMN', @level2name = N'EvaluationDelayReasonDescriptorId';


GO
PRINT N'Creating Extended Property [edfi].[StudentSpecialEducationProgramEligibilityAssociation].[EvaluationLateReason].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Refers to additional information for delay in doing the evaluation.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSpecialEducationProgramEligibilityAssociation', @level2type = N'COLUMN', @level2name = N'EvaluationLateReason';


GO
PRINT N'Creating Extended Property [edfi].[StudentSpecialEducationProgramEligibilityAssociation].[IDEAIndicator].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Indicates whether or not the student was determined eligible as a result of an evaluation.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSpecialEducationProgramEligibilityAssociation', @level2type = N'COLUMN', @level2name = N'IDEAIndicator';


GO
PRINT N'Creating Extended Property [edfi].[StudentSpecialEducationProgramEligibilityAssociation].[IDEAPartDescriptorId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Indicates if the evaluation is done under Part B IDEA or Part C IDEA.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSpecialEducationProgramEligibilityAssociation', @level2type = N'COLUMN', @level2name = N'IDEAPartDescriptorId';


GO
PRINT N'Creating Extended Property [edfi].[StudentSpecialEducationProgramEligibilityAssociation].[OriginalECIServicesDate].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The month, date, and year when an infant or toddler, from birth through age 2, began participating in the early childhood intervention (ECI) program.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSpecialEducationProgramEligibilityAssociation', @level2type = N'COLUMN', @level2name = N'OriginalECIServicesDate';


GO
PRINT N'Creating Extended Property [edfi].[StudentSpecialEducationProgramEligibilityAssociation].[TransitionConferenceDate].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Indicates the month, day, and year when the transition conference was held (for a child receiving early childhood intervention (ECI) services) among the lead agency, the family, and the local education agency (LEA) where the child resides to discuss the child''s potential eligibility for early childhood special education (ECSE) services.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSpecialEducationProgramEligibilityAssociation', @level2type = N'COLUMN', @level2name = N'TransitionConferenceDate';


GO
PRINT N'Creating Extended Property [edfi].[StudentSpecialEducationProgramEligibilityAssociation].[TransitionNotificationDate].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Indicates the month, day, and year the LEA Notification of Potentially Eligible for Special Education Services was sent by the early childhood intervention (ECI) contractor to the local education agency (LEA) to notify them that a child enrolled in ECI will shortly reach the age of eligibility for Part B services and the child is potentially eligible for services under Part B, early childhood special education (ECSE). The LEA Notification constitutes a referral to the LEA for an initial evaluation and eligibility determination of the child which the parent or guardian may opt out from the referral.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSpecialEducationProgramEligibilityAssociation', @level2type = N'COLUMN', @level2name = N'TransitionNotificationDate';


GO
PRINT N'Creating Extended Property [tpdm].[EvaluationRating].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The summary weighting for the Evaluation instrument for an individual educator.', @level0type = N'SCHEMA', @level0name = N'tpdm', @level1type = N'TABLE', @level1name = N'EvaluationRating';


GO
PRINT N'Creating Extended Property [tpdm].[EvaluationRating].[EducationOrganizationId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to an education organization.', @level0type = N'SCHEMA', @level0name = N'tpdm', @level1type = N'TABLE', @level1name = N'EvaluationRating', @level2type = N'COLUMN', @level2name = N'EducationOrganizationId';


GO
PRINT N'Creating Extended Property [tpdm].[EvaluationRating].[EvaluationDate].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The date for the person''s evaluation.', @level0type = N'SCHEMA', @level0name = N'tpdm', @level1type = N'TABLE', @level1name = N'EvaluationRating', @level2type = N'COLUMN', @level2name = N'EvaluationDate';


GO
PRINT N'Creating Extended Property [tpdm].[EvaluationRating].[EvaluationPeriodDescriptorId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The period for the evaluation.', @level0type = N'SCHEMA', @level0name = N'tpdm', @level1type = N'TABLE', @level1name = N'EvaluationRating', @level2type = N'COLUMN', @level2name = N'EvaluationPeriodDescriptorId';


GO
PRINT N'Creating Extended Property [tpdm].[EvaluationRating].[EvaluationTitle].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The name or title of the evaluation.', @level0type = N'SCHEMA', @level0name = N'tpdm', @level1type = N'TABLE', @level1name = N'EvaluationRating', @level2type = N'COLUMN', @level2name = N'EvaluationTitle';


GO
PRINT N'Creating Extended Property [tpdm].[EvaluationRating].[PerformanceEvaluationTitle].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'An assigned unique identifier for the performance evaluation.', @level0type = N'SCHEMA', @level0name = N'tpdm', @level1type = N'TABLE', @level1name = N'EvaluationRating', @level2type = N'COLUMN', @level2name = N'PerformanceEvaluationTitle';


GO
PRINT N'Creating Extended Property [tpdm].[EvaluationRating].[PerformanceEvaluationTypeDescriptorId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The type of performance evaluation conducted.', @level0type = N'SCHEMA', @level0name = N'tpdm', @level1type = N'TABLE', @level1name = N'EvaluationRating', @level2type = N'COLUMN', @level2name = N'PerformanceEvaluationTypeDescriptorId';


GO
PRINT N'Creating Extended Property [tpdm].[EvaluationRating].[PersonId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique alphanumeric code assigned to a person.', @level0type = N'SCHEMA', @level0name = N'tpdm', @level1type = N'TABLE', @level1name = N'EvaluationRating', @level2type = N'COLUMN', @level2name = N'PersonId';


GO
PRINT N'Creating Extended Property [tpdm].[EvaluationRating].[SchoolYear].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier for the school year.', @level0type = N'SCHEMA', @level0name = N'tpdm', @level1type = N'TABLE', @level1name = N'EvaluationRating', @level2type = N'COLUMN', @level2name = N'SchoolYear';


GO
PRINT N'Creating Extended Property [tpdm].[EvaluationRating].[SourceSystemDescriptorId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'This descriptor defines the originating record source system for the person.', @level0type = N'SCHEMA', @level0name = N'tpdm', @level1type = N'TABLE', @level1name = N'EvaluationRating', @level2type = N'COLUMN', @level2name = N'SourceSystemDescriptorId';


GO
PRINT N'Creating Extended Property [tpdm].[EvaluationRating].[TermDescriptorId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The term for the session during the school year.', @level0type = N'SCHEMA', @level0name = N'tpdm', @level1type = N'TABLE', @level1name = N'EvaluationRating', @level2type = N'COLUMN', @level2name = N'TermDescriptorId';


GO
PRINT N'Creating Extended Property [tpdm].[EvaluationRating].[ActualDuration].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The actual or estimated number of clock minutes during which the evaluation was conducted.', @level0type = N'SCHEMA', @level0name = N'tpdm', @level1type = N'TABLE', @level1name = N'EvaluationRating', @level2type = N'COLUMN', @level2name = N'ActualDuration';


GO
PRINT N'Creating Extended Property [tpdm].[EvaluationRating].[Comments].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Any comments about the evaluation to be captured.', @level0type = N'SCHEMA', @level0name = N'tpdm', @level1type = N'TABLE', @level1name = N'EvaluationRating', @level2type = N'COLUMN', @level2name = N'Comments';


GO
PRINT N'Creating Extended Property [tpdm].[EvaluationRating].[EvaluationRatingLevelDescriptorId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The rating level achieved based upon the rating or score.', @level0type = N'SCHEMA', @level0name = N'tpdm', @level1type = N'TABLE', @level1name = N'EvaluationRating', @level2type = N'COLUMN', @level2name = N'EvaluationRatingLevelDescriptorId';


GO
PRINT N'Creating Extended Property [tpdm].[EvaluationRating].[EvaluationRatingStatusDescriptorId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The Status of the poerformance evaluation.', @level0type = N'SCHEMA', @level0name = N'tpdm', @level1type = N'TABLE', @level1name = N'EvaluationRating', @level2type = N'COLUMN', @level2name = N'EvaluationRatingStatusDescriptorId';


GO
PRINT N'Creating Extended Property [tpdm].[EvaluationRating].[LocalCourseCode].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type = N'SCHEMA', @level0name = N'tpdm', @level1type = N'TABLE', @level1name = N'EvaluationRating', @level2type = N'COLUMN', @level2name = N'LocalCourseCode';


GO
PRINT N'Creating Extended Property [tpdm].[EvaluationRating].[SchoolId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'tpdm', @level1type = N'TABLE', @level1name = N'EvaluationRating', @level2type = N'COLUMN', @level2name = N'SchoolId';


GO
PRINT N'Creating Extended Property [tpdm].[EvaluationRating].[SectionIdentifier].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The local identifier assigned to a section.', @level0type = N'SCHEMA', @level0name = N'tpdm', @level1type = N'TABLE', @level1name = N'EvaluationRating', @level2type = N'COLUMN', @level2name = N'SectionIdentifier';


GO
PRINT N'Creating Extended Property [tpdm].[EvaluationRating].[SessionName].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier for the calendar for the academic session.', @level0type = N'SCHEMA', @level0name = N'tpdm', @level1type = N'TABLE', @level1name = N'EvaluationRating', @level2type = N'COLUMN', @level2name = N'SessionName';


GO
PRINT N'Altering Extended Property [edfi].[AcademicWeek].[BeginDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The start date for the academic week.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AcademicWeek', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO
PRINT N'Altering Extended Property [edfi].[AcademicWeek].[EndDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The end date for the academic week.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AcademicWeek', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
PRINT N'Altering Extended Property [edfi].[AssessmentContentStandard].[BeginDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The beginning of the period during which this learning standard document is intended for use.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AssessmentContentStandard', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO
PRINT N'Altering Extended Property [edfi].[AssessmentContentStandard].[EndDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The end of the period during which this learning standard document is intended for use.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AssessmentContentStandard', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
PRINT N'Altering Extended Property [edfi].[AssessmentItem].[ExpectedTimeAssessed].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The duration allotted for the assessment item expressed in minutes.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AssessmentItem', @level2type = N'COLUMN', @level2name = N'ExpectedTimeAssessed';


GO
PRINT N'Altering Extended Property [edfi].[AssessmentItemResultDescriptor].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The analyzed result of a student''s response to an assessment item.. For example:
    Correct
    Incorrect
    Met standard
    ...', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AssessmentItemResultDescriptor';


GO
PRINT N'Altering Extended Property [edfi].[AssessmentPeriod].[BeginDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The first date the assessment is to be administered.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AssessmentPeriod', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO
PRINT N'Altering Extended Property [edfi].[AssessmentPeriod].[EndDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The last date the assessment is to be administered.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AssessmentPeriod', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
PRINT N'Altering Extended Property [edfi].[AttendanceEventCategoryDescriptor].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'This descriptor holds the category of the attendance event (e.g., tardy).', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AttendanceEventCategoryDescriptor';


GO
PRINT N'Altering Extended Property [edfi].[CommunityProviderLicense].[LicenseEffectiveDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The month, day, and year on which a license is active or becomes effective.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'CommunityProviderLicense', @level2type = N'COLUMN', @level2name = N'LicenseEffectiveDate';


GO
PRINT N'Altering Extended Property [edfi].[CommunityProviderLicense].[LicenseExpirationDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The month, day, and year on which a license will expire.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'CommunityProviderLicense', @level2type = N'COLUMN', @level2name = N'LicenseExpirationDate';


GO
PRINT N'Altering Extended Property [edfi].[ContactAddressPeriod].[BeginDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The month, day, and year for the start of the period.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'ContactAddressPeriod', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO
PRINT N'Altering Extended Property [edfi].[ContactAddressPeriod].[EndDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The month, day, and year for the end of the period.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'ContactAddressPeriod', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
PRINT N'Altering Extended Property [edfi].[ContactInternationalAddress].[BeginDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The first date the address is valid. For physical addresses, the date the individual moved to that address.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'ContactInternationalAddress', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO
PRINT N'Altering Extended Property [edfi].[ContactInternationalAddress].[EndDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The last date the address is valid. For physical addresses, the date the individual moved from that address.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'ContactInternationalAddress', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
PRINT N'Altering Extended Property [edfi].[ContinuationOfServicesReasonDescriptor].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'In the Migrant Education program, a provision allows continuation of services after a child is no longer considered migratory for certain reasons. This descriptor holds the reasons prescribed in the statute.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'ContinuationOfServicesReasonDescriptor';


GO
PRINT N'Altering Extended Property [edfi].[Credential].[EffectiveDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The year, month and day on which an active credential held by an individual was issued.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'Credential', @level2type = N'COLUMN', @level2name = N'EffectiveDate';


GO
PRINT N'Altering Extended Property [edfi].[Credential].[ExpirationDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The month, day, and year on which an active credential held by an individual will expire.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'Credential', @level2type = N'COLUMN', @level2name = N'ExpirationDate';


GO
PRINT N'Altering Extended Property [edfi].[CrisisEvent].[CrisisEndDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The date on which the crisis ceased to affect the student. Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'CrisisEvent', @level2type = N'COLUMN', @level2name = N'CrisisEndDate';


GO
PRINT N'Altering Extended Property [edfi].[CrisisEvent].[CrisisStartDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The year, month and day on which the crisis affected the student. This date may not be the same as the date the crisis occurred if evacuation orders are implemented in anticipation of a crisis.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'CrisisEvent', @level2type = N'COLUMN', @level2name = N'CrisisStartDate';


GO
PRINT N'Altering Extended Property [edfi].[EducationContent].[TimeRequired].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'Approximate or typical time that it takes to work with or through this learning resource for the typical intended target audience expressed in minutes.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'EducationContent', @level2type = N'COLUMN', @level2name = N'TimeRequired';


GO
PRINT N'Altering Extended Property [edfi].[EducationOrganizationAddressPeriod].[BeginDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The month, day, and year for the start of the period.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'EducationOrganizationAddressPeriod', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO
PRINT N'Altering Extended Property [edfi].[EducationOrganizationAddressPeriod].[EndDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The month, day, and year for the end of the period.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'EducationOrganizationAddressPeriod', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
PRINT N'Altering Extended Property [edfi].[EducationOrganizationIndicatorPeriod].[BeginDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The month, day, and year for the start of the period.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'EducationOrganizationIndicatorPeriod', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO
PRINT N'Altering Extended Property [edfi].[EducationOrganizationIndicatorPeriod].[EndDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The month, day, and year for the end of the period.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'EducationOrganizationIndicatorPeriod', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
PRINT N'Altering Extended Property [edfi].[EducationOrganizationInternationalAddress].[BeginDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The first date the address is valid. For physical addresses, the date the individual moved to that address.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'EducationOrganizationInternationalAddress', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO
PRINT N'Altering Extended Property [edfi].[EducationOrganizationInternationalAddress].[EndDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The last date the address is valid. For physical addresses, the date the individual moved from that address.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'EducationOrganizationInternationalAddress', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
PRINT N'Altering Extended Property [edfi].[EducationOrganizationInterventionPrescriptionAssociation].[BeginDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The begin date of the period during which the intervention prescription is available.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'EducationOrganizationInterventionPrescriptionAssociation', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO
PRINT N'Altering Extended Property [edfi].[EducationOrganizationInterventionPrescriptionAssociation].[EndDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The end date of the period during which the intervention prescription is available.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'EducationOrganizationInterventionPrescriptionAssociation', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
PRINT N'Altering Extended Property [edfi].[EducationOrganizationNetworkAssociation].[BeginDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The date on which the education organization joined this network.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'EducationOrganizationNetworkAssociation', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO
PRINT N'Altering Extended Property [edfi].[EducationOrganizationNetworkAssociation].[EndDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The date on which the education organization left this network.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'EducationOrganizationNetworkAssociation', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
PRINT N'Altering Extended Property [edfi].[FeederSchoolAssociation].[BeginDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The month, day, and year of the first day of the feeder school association.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'FeederSchoolAssociation', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO
PRINT N'Altering Extended Property [edfi].[FeederSchoolAssociation].[EndDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The month, day, and year of the last day of the feeder school association.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'FeederSchoolAssociation', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
PRINT N'Altering Extended Property [edfi].[GeneralStudentProgramAssociation].[BeginDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'GeneralStudentProgramAssociation', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO
PRINT N'Altering Extended Property [edfi].[GeneralStudentProgramAssociation].[EndDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The month, day, and year on which the student exited the program or stopped receiving services.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'GeneralStudentProgramAssociation', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
PRINT N'Altering Extended Property [edfi].[GeneralStudentProgramAssociationProgramParticipationStatus].[BeginDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'GeneralStudentProgramAssociationProgramParticipationStatus', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO
PRINT N'Altering Extended Property [edfi].[GeneralStudentProgramAssociationProgramParticipationStatus].[StatusBeginDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The date the student''s program participation status began.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'GeneralStudentProgramAssociationProgramParticipationStatus', @level2type = N'COLUMN', @level2name = N'StatusBeginDate';


GO
PRINT N'Altering Extended Property [edfi].[GeneralStudentProgramAssociationProgramParticipationStatus].[StatusEndDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The date the student''s program participation status ended.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'GeneralStudentProgramAssociationProgramParticipationStatus', @level2type = N'COLUMN', @level2name = N'StatusEndDate';


GO
PRINT N'Altering Extended Property [edfi].[Grade].[BeginDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'Month, day, and year of the student''s entry or assignment to the section.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'Grade', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO
PRINT N'Altering Extended Property [edfi].[GradeLearningStandardGrade].[BeginDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'Month, day, and year of the student''s entry or assignment to the section.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'GradeLearningStandardGrade', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO
PRINT N'Altering Extended Property [edfi].[GradeLevelDescriptor].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'This descriptor defines the set of grade levels.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'GradeLevelDescriptor';


GO
PRINT N'Altering Extended Property [edfi].[GradingPeriod].[BeginDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'Month, day, and year of the first day of the grading period.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'GradingPeriod', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO
PRINT N'Altering Extended Property [edfi].[GradingPeriod].[EndDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'Month, day, and year of the last day of the grading period.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'GradingPeriod', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
PRINT N'Altering Extended Property [edfi].[GradingPeriodDescriptor].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'This descriptor defines the state''s name of the period for which grades are reported.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'GradingPeriodDescriptor';


GO
PRINT N'Altering Extended Property [edfi].[Intervention].[BeginDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The start date for the intervention implementation.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'Intervention', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO
PRINT N'Altering Extended Property [edfi].[Intervention].[EndDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The end date for the intervention implementation.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'Intervention', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
PRINT N'Altering Extended Property [edfi].[LearningStandardContentStandard].[BeginDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The beginning of the period during which this learning standard document is intended for use.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'LearningStandardContentStandard', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO
PRINT N'Altering Extended Property [edfi].[LearningStandardContentStandard].[EndDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The end of the period during which this learning standard document is intended for use.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'LearningStandardContentStandard', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
PRINT N'Altering Extended Property [edfi].[LimitedEnglishProficiencyDescriptor].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'This descriptor defines the indications that the student has been identified as limited English proficient by the Language Proficiency Assessment Committee (LPAC), or English proficient.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'LimitedEnglishProficiencyDescriptor';


GO
PRINT N'Altering Extended Property [edfi].[OpenStaffPosition].[DatePosted].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'Date the open staff position was posted.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'OpenStaffPosition', @level2type = N'COLUMN', @level2name = N'DatePosted';


GO
PRINT N'Altering Extended Property [edfi].[OpenStaffPosition].[DatePostingRemoved].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The date the posting was removed or filled.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'OpenStaffPosition', @level2type = N'COLUMN', @level2name = N'DatePostingRemoved';


GO
PRINT N'Altering Extended Property [edfi].[ReportCardGrade].[BeginDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'Month, day, and year of the student''s entry or assignment to the section.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'ReportCardGrade', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO
PRINT N'Altering Extended Property [edfi].[Session].[BeginDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'Month, day, and year of the first day of the session.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'Session', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO
PRINT N'Altering Extended Property [edfi].[Session].[EndDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'Month, day and year of the last day of the session.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'Session', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
PRINT N'Altering Extended Property [edfi].[StaffAddressPeriod].[BeginDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The month, day, and year for the start of the period.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StaffAddressPeriod', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO
PRINT N'Altering Extended Property [edfi].[StaffAddressPeriod].[EndDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The month, day, and year for the end of the period.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StaffAddressPeriod', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
PRINT N'Altering Extended Property [edfi].[StaffCohortAssociation].[BeginDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'Start date for the association of staff to this cohort.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StaffCohortAssociation', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO
PRINT N'Altering Extended Property [edfi].[StaffCohortAssociation].[EndDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'End date for the association of staff to this cohort.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StaffCohortAssociation', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
PRINT N'Altering Extended Property [edfi].[StaffEducationOrganizationAssignmentAssociation].[BeginDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'Month, day, and year of the start or effective date of a staff member''s employment, contract, or relationship with the education organization.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StaffEducationOrganizationAssignmentAssociation', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO
PRINT N'Altering Extended Property [edfi].[StaffEducationOrganizationAssignmentAssociation].[EmploymentHireDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The month, day, and year on which an individual was hired for a position.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StaffEducationOrganizationAssignmentAssociation', @level2type = N'COLUMN', @level2name = N'EmploymentHireDate';


GO
PRINT N'Altering Extended Property [edfi].[StaffEducationOrganizationAssignmentAssociation].[EndDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'Month, day, and year of the end or termination date of a staff member''s employment, contract, or relationship with the education organization.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StaffEducationOrganizationAssignmentAssociation', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
PRINT N'Altering Extended Property [edfi].[StaffEducationOrganizationContactAssociationAddressPeriod].[BeginDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The month, day, and year for the start of the period.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StaffEducationOrganizationContactAssociationAddressPeriod', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO
PRINT N'Altering Extended Property [edfi].[StaffEducationOrganizationContactAssociationAddressPeriod].[EndDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The month, day, and year for the end of the period.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StaffEducationOrganizationContactAssociationAddressPeriod', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
PRINT N'Altering Extended Property [edfi].[StaffEducationOrganizationEmploymentAssociation].[EndDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The month, day, and year on which a contract between an individual and a governing authority ends or is terminated under the provisions of the contract (or the date on which the agreement is made invalid).  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StaffEducationOrganizationEmploymentAssociation', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
PRINT N'Altering Extended Property [edfi].[StaffEducationOrganizationEmploymentAssociation].[HireDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The month, day, and year on which an individual was hired for a position.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StaffEducationOrganizationEmploymentAssociation', @level2type = N'COLUMN', @level2name = N'HireDate';


GO
PRINT N'Altering Extended Property [edfi].[StaffInternationalAddress].[BeginDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The first date the address is valid. For physical addresses, the date the individual moved to that address.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StaffInternationalAddress', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO
PRINT N'Altering Extended Property [edfi].[StaffInternationalAddress].[EndDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The last date the address is valid. For physical addresses, the date the individual moved from that address.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StaffInternationalAddress', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
PRINT N'Altering Extended Property [edfi].[StaffLeave].[BeginDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The begin date of the staff leave.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StaffLeave', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO
PRINT N'Altering Extended Property [edfi].[StaffLeave].[EndDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The end date of the staff leave.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StaffLeave', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
PRINT N'Altering Extended Property [edfi].[StaffProgramAssociation].[BeginDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'Start date for the association of staff to this program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StaffProgramAssociation', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO
PRINT N'Altering Extended Property [edfi].[StaffProgramAssociation].[EndDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'End date for the association of staff to this program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StaffProgramAssociation', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
PRINT N'Altering Extended Property [edfi].[StaffRecognition].[RecognitionAwardDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The date the recognition was awarded or earned.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StaffRecognition', @level2type = N'COLUMN', @level2name = N'RecognitionAwardDate';


GO
PRINT N'Altering Extended Property [edfi].[StaffRecognition].[RecognitionAwardExpiresDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'Date on which the recognition expires.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StaffRecognition', @level2type = N'COLUMN', @level2name = N'RecognitionAwardExpiresDate';


GO
PRINT N'Altering Extended Property [edfi].[StaffSectionAssociation].[BeginDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'Month, day, and year of a teacher''s assignment to the section.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StaffSectionAssociation', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO
PRINT N'Altering Extended Property [edfi].[StaffSectionAssociation].[EndDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'Month, day, and year of the last day of a staff member''s assignment to the section.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StaffSectionAssociation', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
PRINT N'Altering Extended Property [edfi].[StudentAcademicRecordAcademicHonor].[HonorAwardDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The date the honor was awarded.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentAcademicRecordAcademicHonor', @level2type = N'COLUMN', @level2name = N'HonorAwardDate';


GO
PRINT N'Altering Extended Property [edfi].[StudentAcademicRecordAcademicHonor].[HonorAwardExpiresDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'Date on which the honor expires.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentAcademicRecordAcademicHonor', @level2type = N'COLUMN', @level2name = N'HonorAwardExpiresDate';


GO
PRINT N'Altering Extended Property [edfi].[StudentAcademicRecordDiploma].[DiplomaAwardDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The month, day, and year on which the student met  graduation requirements and was awarded a diploma.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentAcademicRecordDiploma', @level2type = N'COLUMN', @level2name = N'DiplomaAwardDate';


GO
PRINT N'Altering Extended Property [edfi].[StudentAcademicRecordDiploma].[DiplomaAwardExpiresDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'Date on which the diploma expires.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentAcademicRecordDiploma', @level2type = N'COLUMN', @level2name = N'DiplomaAwardExpiresDate';


GO
PRINT N'Altering Extended Property [edfi].[StudentAcademicRecordRecognition].[RecognitionAwardDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The date the recognition was awarded or earned.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentAcademicRecordRecognition', @level2type = N'COLUMN', @level2name = N'RecognitionAwardDate';


GO
PRINT N'Altering Extended Property [edfi].[StudentAcademicRecordRecognition].[RecognitionAwardExpiresDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'Date on which the recognition expires.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentAcademicRecordRecognition', @level2type = N'COLUMN', @level2name = N'RecognitionAwardExpiresDate';


GO
PRINT N'Altering Extended Property [edfi].[StudentAssessmentItem].[TimeAssessed].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The overall time that a student actually spent on the assessment item expressed in minutes.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentAssessmentItem', @level2type = N'COLUMN', @level2name = N'TimeAssessed';


GO
PRINT N'Altering Extended Property [edfi].[StudentAssessmentPeriod].[BeginDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The first date the assessment is to be administered.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentAssessmentPeriod', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO
PRINT N'Altering Extended Property [edfi].[StudentAssessmentPeriod].[EndDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The last date the assessment is to be administered.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentAssessmentPeriod', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
PRINT N'Altering Extended Property [edfi].[StudentCohortAssociation].[BeginDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The month, day, and year on which the student was first identified as part of the cohort.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentCohortAssociation', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO
PRINT N'Altering Extended Property [edfi].[StudentCohortAssociation].[EndDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The month, day, and year on which the student was removed as part of the cohort.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentCohortAssociation', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
PRINT N'Altering Extended Property [edfi].[StudentCohortAssociationSection].[BeginDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The month, day, and year on which the student was first identified as part of the cohort.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentCohortAssociationSection', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO
PRINT N'Altering Extended Property [edfi].[StudentCompetencyObjectiveGeneralStudentProgramAssociation].[BeginDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentCompetencyObjectiveGeneralStudentProgramAssociation', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO
PRINT N'Altering Extended Property [edfi].[StudentCompetencyObjectiveStudentSectionAssociation].[BeginDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'Month, day, and year of the student''s entry or assignment to the section.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentCompetencyObjectiveStudentSectionAssociation', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO
PRINT N'Altering Extended Property [edfi].[StudentCTEProgramAssociation].[BeginDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentCTEProgramAssociation', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO
PRINT N'Altering Extended Property [edfi].[StudentCTEProgramAssociation].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'This association represents the career and technical education (CTE) program that a student participates in. The association is a subclass of the GeneralStudentProgramAssociation specifically designed for CTE programs.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentCTEProgramAssociation';


GO
PRINT N'Altering Extended Property [edfi].[StudentCTEProgramAssociationCTEProgramService].[BeginDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentCTEProgramAssociationCTEProgramService', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO
PRINT N'Altering Extended Property [edfi].[StudentCTEProgramAssociationCTEProgramService].[ServiceBeginDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'First date the student was in this option for the current school year.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentCTEProgramAssociationCTEProgramService', @level2type = N'COLUMN', @level2name = N'ServiceBeginDate';


GO
PRINT N'Altering Extended Property [edfi].[StudentCTEProgramAssociationCTEProgramService].[ServiceEndDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'Last date the student was in this option for the current school year.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentCTEProgramAssociationCTEProgramService', @level2type = N'COLUMN', @level2name = N'ServiceEndDate';


GO
PRINT N'Altering Extended Property [edfi].[StudentEducationOrganizationAssociationAddressPeriod].[BeginDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The month, day, and year for the start of the period.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationAssociationAddressPeriod', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO
PRINT N'Altering Extended Property [edfi].[StudentEducationOrganizationAssociationAddressPeriod].[EndDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The month, day, and year for the end of the period.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationAssociationAddressPeriod', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
PRINT N'Altering Extended Property [edfi].[StudentEducationOrganizationAssociationDisplacedStudent].[DisplacedStudentEndDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The date marking the end of the period during which a student is considered displaced due to a crisis event.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationAssociationDisplacedStudent', @level2type = N'COLUMN', @level2name = N'DisplacedStudentEndDate';


GO
PRINT N'Altering Extended Property [edfi].[StudentEducationOrganizationAssociationDisplacedStudent].[DisplacedStudentStartDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The date on which a student is officially identified as displaced due to a crisis event.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationAssociationDisplacedStudent', @level2type = N'COLUMN', @level2name = N'DisplacedStudentStartDate';


GO
PRINT N'Altering Extended Property [edfi].[StudentEducationOrganizationAssociationInternationalAddress].[BeginDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The first date the address is valid. For physical addresses, the date the individual moved to that address.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationAssociationInternationalAddress', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO
PRINT N'Altering Extended Property [edfi].[StudentEducationOrganizationAssociationInternationalAddress].[EndDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The last date the address is valid. For physical addresses, the date the individual moved from that address.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationAssociationInternationalAddress', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
PRINT N'Altering Extended Property [edfi].[StudentEducationOrganizationAssociationStudentCharacteristicPeriod].[BeginDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The month, day, and year for the start of the period.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationAssociationStudentCharacteristicPeriod', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO
PRINT N'Altering Extended Property [edfi].[StudentEducationOrganizationAssociationStudentCharacteristicPeriod].[EndDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The month, day, and year for the end of the period.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationAssociationStudentCharacteristicPeriod', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
PRINT N'Altering Extended Property [edfi].[StudentEducationOrganizationAssociationStudentIndicatorPeriod].[BeginDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The month, day, and year for the start of the period.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationAssociationStudentIndicatorPeriod', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO
PRINT N'Altering Extended Property [edfi].[StudentEducationOrganizationAssociationStudentIndicatorPeriod].[EndDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The month, day, and year for the end of the period.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationAssociationStudentIndicatorPeriod', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
PRINT N'Altering Extended Property [edfi].[StudentEducationOrganizationResponsibilityAssociation].[BeginDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'Month, day, and year of the start date of an education organization''s responsibility for a student.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationResponsibilityAssociation', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO
PRINT N'Altering Extended Property [edfi].[StudentEducationOrganizationResponsibilityAssociation].[EndDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'Month, day, and year of the end date of an education organization''s responsibility for a student.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationResponsibilityAssociation', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
PRINT N'Altering Extended Property [edfi].[StudentHomelessProgramAssociation].[BeginDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentHomelessProgramAssociation', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO
PRINT N'Altering Extended Property [edfi].[StudentHomelessProgramAssociation].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'This association represents the McKinney-Vento Homeless Program program(s) that a student participates in or from which the student receives services. The association is a subclass of the GeneralStudentProgramAssociation specifically designed for homeless programs.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentHomelessProgramAssociation';


GO
PRINT N'Altering Extended Property [edfi].[StudentHomelessProgramAssociationHomelessProgramService].[BeginDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentHomelessProgramAssociationHomelessProgramService', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO
PRINT N'Altering Extended Property [edfi].[StudentHomelessProgramAssociationHomelessProgramService].[ServiceBeginDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'First date the student was in this option for the current school year.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentHomelessProgramAssociationHomelessProgramService', @level2type = N'COLUMN', @level2name = N'ServiceBeginDate';


GO
PRINT N'Altering Extended Property [edfi].[StudentHomelessProgramAssociationHomelessProgramService].[ServiceEndDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'Last date the student was in this option for the current school year.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentHomelessProgramAssociationHomelessProgramService', @level2type = N'COLUMN', @level2name = N'ServiceEndDate';


GO
PRINT N'Altering Extended Property [edfi].[StudentInterventionAttendanceEvent].[AttendanceEventCategoryDescriptorId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'A code describing the attendance event, for example:
        Present
        Unexcused absence
        Excused absence
        Tardy.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentInterventionAttendanceEvent', @level2type = N'COLUMN', @level2name = N'AttendanceEventCategoryDescriptorId';


GO
PRINT N'Altering Extended Property [edfi].[StudentInterventionAttendanceEvent].[EventDuration].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The amount of time in days for the event as recognized by the school: 1 day = 1, 1/2 day = 0.5, 1/3 day = 0.33.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentInterventionAttendanceEvent', @level2type = N'COLUMN', @level2name = N'EventDuration';


GO
PRINT N'Altering Extended Property [edfi].[StudentInterventionAttendanceEvent].[InterventionDuration].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The duration in minutes of the intervention attendance event.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentInterventionAttendanceEvent', @level2type = N'COLUMN', @level2name = N'InterventionDuration';


GO
PRINT N'Altering Extended Property [edfi].[StudentLanguageInstructionProgramAssociation].[BeginDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentLanguageInstructionProgramAssociation', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO
PRINT N'Altering Extended Property [edfi].[StudentLanguageInstructionProgramAssociation].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'This association represents the Title III Language Instruction for Limited English Proficient and Immigrant Students program(s) that a student participates in or from which the student receives services. The association is a subclass of the GeneralStudentProgramAssociation specifically designed for language instruction programs.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentLanguageInstructionProgramAssociation';


GO
PRINT N'Altering Extended Property [edfi].[StudentLanguageInstructionProgramAssociationEnglishLanguageProficiencyAssessment].[BeginDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentLanguageInstructionProgramAssociationEnglishLanguageProficiencyAssessment', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO
PRINT N'Altering Extended Property [edfi].[StudentLanguageInstructionProgramAssociationLanguageInstructionProgramService].[BeginDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentLanguageInstructionProgramAssociationLanguageInstructionProgramService', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO
PRINT N'Altering Extended Property [edfi].[StudentLanguageInstructionProgramAssociationLanguageInstructionProgramService].[ServiceBeginDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'First date the student was in this option for the current school year.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentLanguageInstructionProgramAssociationLanguageInstructionProgramService', @level2type = N'COLUMN', @level2name = N'ServiceBeginDate';


GO
PRINT N'Altering Extended Property [edfi].[StudentLanguageInstructionProgramAssociationLanguageInstructionProgramService].[ServiceEndDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'Last date the student was in this option for the current school year.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentLanguageInstructionProgramAssociationLanguageInstructionProgramService', @level2type = N'COLUMN', @level2name = N'ServiceEndDate';


GO
PRINT N'Altering Extended Property [edfi].[StudentMigrantEducationProgramAssociation].[BeginDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentMigrantEducationProgramAssociation', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO
PRINT N'Altering Extended Property [edfi].[StudentMigrantEducationProgramAssociation].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'This association represents the migrant education program(s) that a student participates in or receives services from. The association is a subclass of the GeneralStudentProgramAssociation specifically designed for migrant education programs.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentMigrantEducationProgramAssociation';


GO
PRINT N'Altering Extended Property [edfi].[StudentMigrantEducationProgramAssociationMigrantEducationProgramService].[BeginDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentMigrantEducationProgramAssociationMigrantEducationProgramService', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO
PRINT N'Altering Extended Property [edfi].[StudentMigrantEducationProgramAssociationMigrantEducationProgramService].[ServiceBeginDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'First date the student was in this option for the current school year.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentMigrantEducationProgramAssociationMigrantEducationProgramService', @level2type = N'COLUMN', @level2name = N'ServiceBeginDate';


GO
PRINT N'Altering Extended Property [edfi].[StudentMigrantEducationProgramAssociationMigrantEducationProgramService].[ServiceEndDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'Last date the student was in this option for the current school year.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentMigrantEducationProgramAssociationMigrantEducationProgramService', @level2type = N'COLUMN', @level2name = N'ServiceEndDate';


GO
PRINT N'Altering Extended Property [edfi].[StudentNeglectedOrDelinquentProgramAssociation].[BeginDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentNeglectedOrDelinquentProgramAssociation', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO
PRINT N'Altering Extended Property [edfi].[StudentNeglectedOrDelinquentProgramAssociation].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'This association represents the Title I Part D Neglected or Delinquent program(s) that a student participates in or from which the student receives services. The association is a subclass of the GeneralStudentProgramAssociation specifically designed for Title I Part D Neglected or Delinquent programs.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentNeglectedOrDelinquentProgramAssociation';


GO
PRINT N'Altering Extended Property [edfi].[StudentNeglectedOrDelinquentProgramAssociationNeglectedOrDelinquentProgramService].[BeginDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentNeglectedOrDelinquentProgramAssociationNeglectedOrDelinquentProgramService', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO
PRINT N'Altering Extended Property [edfi].[StudentNeglectedOrDelinquentProgramAssociationNeglectedOrDelinquentProgramService].[ServiceBeginDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'First date the student was in this option for the current school year.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentNeglectedOrDelinquentProgramAssociationNeglectedOrDelinquentProgramService', @level2type = N'COLUMN', @level2name = N'ServiceBeginDate';


GO
PRINT N'Altering Extended Property [edfi].[StudentNeglectedOrDelinquentProgramAssociationNeglectedOrDelinquentProgramService].[ServiceEndDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'Last date the student was in this option for the current school year.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentNeglectedOrDelinquentProgramAssociationNeglectedOrDelinquentProgramService', @level2type = N'COLUMN', @level2name = N'ServiceEndDate';


GO
PRINT N'Altering Extended Property [edfi].[StudentProgramAssociation].[BeginDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentProgramAssociation', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO
PRINT N'Altering Extended Property [edfi].[StudentProgramAssociationService].[BeginDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentProgramAssociationService', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO
PRINT N'Altering Extended Property [edfi].[StudentProgramAssociationService].[ServiceBeginDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'First date the student was in this option for the current school year.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentProgramAssociationService', @level2type = N'COLUMN', @level2name = N'ServiceBeginDate';


GO
PRINT N'Altering Extended Property [edfi].[StudentProgramAssociationService].[ServiceEndDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'Last date the student was in this option for the current school year.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentProgramAssociationService', @level2type = N'COLUMN', @level2name = N'ServiceEndDate';


GO
PRINT N'Altering Extended Property [edfi].[StudentProgramAttendanceEvent].[AttendanceEventCategoryDescriptorId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'A code describing the attendance event, for example:
        Present
        Unexcused absence
        Excused absence
        Tardy.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentProgramAttendanceEvent', @level2type = N'COLUMN', @level2name = N'AttendanceEventCategoryDescriptorId';


GO
PRINT N'Altering Extended Property [edfi].[StudentProgramAttendanceEvent].[EventDuration].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The amount of time in days for the event as recognized by the school: 1 day = 1, 1/2 day = 0.5, 1/3 day = 0.33.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentProgramAttendanceEvent', @level2type = N'COLUMN', @level2name = N'EventDuration';


GO
PRINT N'Altering Extended Property [edfi].[StudentProgramEvaluation].[EvaluationDuration].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The actual number of minutes to conduct the evaluation.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentProgramEvaluation', @level2type = N'COLUMN', @level2name = N'EvaluationDuration';


GO
PRINT N'Altering Extended Property [edfi].[StudentSchoolAssociation].[EntryDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The month, day, and year on which an individual enters and begins to receive instructional services in a school for each school year. The EntryDate value should be the date the student enrolled, or when the student''s enrollment materially changed, such as with a grade promotion.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSchoolAssociation', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
PRINT N'Altering Extended Property [edfi].[StudentSchoolAssociation].[ExitWithdrawDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The recorded exit or withdraw date for the student.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSchoolAssociation', @level2type = N'COLUMN', @level2name = N'ExitWithdrawDate';


GO
PRINT N'Altering Extended Property [edfi].[StudentSchoolAssociationAlternativeGraduationPlan].[EntryDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The month, day, and year on which an individual enters and begins to receive instructional services in a school for each school year. The EntryDate value should be the date the student enrolled, or when the student''s enrollment materially changed, such as with a grade promotion.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSchoolAssociationAlternativeGraduationPlan', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
PRINT N'Altering Extended Property [edfi].[StudentSchoolAssociationEducationPlan].[EntryDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The month, day, and year on which an individual enters and begins to receive instructional services in a school for each school year. The EntryDate value should be the date the student enrolled, or when the student''s enrollment materially changed, such as with a grade promotion.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSchoolAssociationEducationPlan', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
PRINT N'Altering Extended Property [edfi].[StudentSchoolAttendanceEvent].[AttendanceEventCategoryDescriptorId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'A code describing the attendance event, for example:
        Present
        Unexcused absence
        Excused absence
        Tardy.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSchoolAttendanceEvent', @level2type = N'COLUMN', @level2name = N'AttendanceEventCategoryDescriptorId';


GO
PRINT N'Altering Extended Property [edfi].[StudentSchoolAttendanceEvent].[EventDuration].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The amount of time in days for the event as recognized by the school: 1 day = 1, 1/2 day = 0.5, 1/3 day = 0.33.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSchoolAttendanceEvent', @level2type = N'COLUMN', @level2name = N'EventDuration';


GO
PRINT N'Altering Extended Property [edfi].[StudentSchoolFoodServiceProgramAssociation].[BeginDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSchoolFoodServiceProgramAssociation', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO
PRINT N'Altering Extended Property [edfi].[StudentSchoolFoodServiceProgramAssociation].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'This association represents the school food services program(s), such as the Free or Reduced Lunch program, that a student participates in or from which the student receives services. The association is a subclass of the GeneralStudentProgramAssociation specifically designed for school food service programs.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSchoolFoodServiceProgramAssociation';


GO
PRINT N'Altering Extended Property [edfi].[StudentSchoolFoodServiceProgramAssociationSchoolFoodServiceProgramService].[BeginDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSchoolFoodServiceProgramAssociationSchoolFoodServiceProgramService', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO
PRINT N'Altering Extended Property [edfi].[StudentSchoolFoodServiceProgramAssociationSchoolFoodServiceProgramService].[ServiceBeginDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'First date the student was in this option for the current school year.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSchoolFoodServiceProgramAssociationSchoolFoodServiceProgramService', @level2type = N'COLUMN', @level2name = N'ServiceBeginDate';


GO
PRINT N'Altering Extended Property [edfi].[StudentSchoolFoodServiceProgramAssociationSchoolFoodServiceProgramService].[ServiceEndDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'Last date the student was in this option for the current school year.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSchoolFoodServiceProgramAssociationSchoolFoodServiceProgramService', @level2type = N'COLUMN', @level2name = N'ServiceEndDate';


GO
PRINT N'Altering Extended Property [edfi].[StudentSectionAssociationProgram].[BeginDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'Month, day, and year of the student''s entry or assignment to the section.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSectionAssociationProgram', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO
PRINT N'Altering Extended Property [edfi].[StudentSectionAttendanceEvent].[AttendanceEventCategoryDescriptorId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'A code describing the attendance event, for example:
        Present
        Unexcused absence
        Excused absence
        Tardy.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSectionAttendanceEvent', @level2type = N'COLUMN', @level2name = N'AttendanceEventCategoryDescriptorId';


GO
PRINT N'Altering Extended Property [edfi].[StudentSectionAttendanceEvent].[EventDuration].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The amount of time in days for the event as recognized by the school: 1 day = 1, 1/2 day = 0.5, 1/3 day = 0.33.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSectionAttendanceEvent', @level2type = N'COLUMN', @level2name = N'EventDuration';


GO
PRINT N'Altering Extended Property [edfi].[StudentSectionAttendanceEventClassPeriod].[AttendanceEventCategoryDescriptorId].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'A code describing the attendance event, for example:
        Present
        Unexcused absence
        Excused absence
        Tardy.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSectionAttendanceEventClassPeriod', @level2type = N'COLUMN', @level2name = N'AttendanceEventCategoryDescriptorId';


GO
PRINT N'Altering Extended Property [edfi].[StudentSpecialEducationProgramAssociationDisability].[BeginDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSpecialEducationProgramAssociationDisability', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO
PRINT N'Altering Extended Property [edfi].[StudentSpecialEducationProgramAssociationDisabilityDesignation].[BeginDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSpecialEducationProgramAssociationDisabilityDesignation', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO
PRINT N'Altering Extended Property [edfi].[StudentSpecialEducationProgramAssociationServiceProvider].[BeginDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSpecialEducationProgramAssociationServiceProvider', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO
PRINT N'Altering Extended Property [edfi].[StudentSpecialEducationProgramAssociationSpecialEducationProgramService].[BeginDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSpecialEducationProgramAssociationSpecialEducationProgramService', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO
PRINT N'Altering Extended Property [edfi].[StudentSpecialEducationProgramAssociationSpecialEducationProgramService].[ServiceBeginDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'First date the student was in this option for the current school year.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSpecialEducationProgramAssociationSpecialEducationProgramService', @level2type = N'COLUMN', @level2name = N'ServiceBeginDate';


GO
PRINT N'Altering Extended Property [edfi].[StudentSpecialEducationProgramAssociationSpecialEducationProgramService].[ServiceEndDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'Last date the student was in this option for the current school year.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSpecialEducationProgramAssociationSpecialEducationProgramService', @level2type = N'COLUMN', @level2name = N'ServiceEndDate';


GO
PRINT N'Altering Extended Property [edfi].[StudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider].[BeginDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO
PRINT N'Altering Extended Property [edfi].[StudentTitleIPartAProgramAssociation].[BeginDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentTitleIPartAProgramAssociation', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO
PRINT N'Altering Extended Property [edfi].[StudentTitleIPartAProgramAssociation].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'This association represents the Title I Part A program(s) that a student participates in or from which the student receives services. The association is a subclass of the GeneralStudentProgramAssociation specifically designed for Title I Part A programs.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentTitleIPartAProgramAssociation';


GO
PRINT N'Altering Extended Property [edfi].[StudentTitleIPartAProgramAssociationTitleIPartAProgramService].[BeginDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentTitleIPartAProgramAssociationTitleIPartAProgramService', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO
PRINT N'Altering Extended Property [edfi].[StudentTitleIPartAProgramAssociationTitleIPartAProgramService].[ServiceBeginDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'First date the Student was in this option for the current school year.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentTitleIPartAProgramAssociationTitleIPartAProgramService', @level2type = N'COLUMN', @level2name = N'ServiceBeginDate';


GO
PRINT N'Altering Extended Property [edfi].[StudentTitleIPartAProgramAssociationTitleIPartAProgramService].[ServiceEndDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'Last date the Student was in this option for the current school year.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentTitleIPartAProgramAssociationTitleIPartAProgramService', @level2type = N'COLUMN', @level2name = N'ServiceEndDate';


GO
PRINT N'Altering Extended Property [edfi].[SurveyResponse].[ResponseTime].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The amount of time in seconds it took for the respondent to complete the survey.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'SurveyResponse', @level2type = N'COLUMN', @level2name = N'ResponseTime';


GO
PRINT N'Altering Extended Property [tpdm].[CandidateAddressPeriod].[BeginDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The month, day, and year for the start of the period.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'tpdm', @level1type = N'TABLE', @level1name = N'CandidateAddressPeriod', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO
PRINT N'Altering Extended Property [tpdm].[CandidateAddressPeriod].[EndDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The month, day, and year for the end of the period.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'tpdm', @level1type = N'TABLE', @level1name = N'CandidateAddressPeriod', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
PRINT N'Altering Extended Property [tpdm].[CandidateEducatorPreparationProgramAssociation].[BeginDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The begin date for the association.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'tpdm', @level1type = N'TABLE', @level1name = N'CandidateEducatorPreparationProgramAssociation', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO
PRINT N'Altering Extended Property [tpdm].[CandidateEducatorPreparationProgramAssociation].[EndDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The end date for the association.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'tpdm', @level1type = N'TABLE', @level1name = N'CandidateEducatorPreparationProgramAssociation', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
PRINT N'Altering Extended Property [tpdm].[CandidateEducatorPreparationProgramAssociationCohortYear].[BeginDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The begin date for the association.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'tpdm', @level1type = N'TABLE', @level1name = N'CandidateEducatorPreparationProgramAssociationCohortYear', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO
PRINT N'Altering Extended Property [tpdm].[CandidateEducatorPreparationProgramAssociationDegreeSpecialization].[BeginDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The begin date for the association.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'tpdm', @level1type = N'TABLE', @level1name = N'CandidateEducatorPreparationProgramAssociationDegreeSpecialization', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO
PRINT N'Altering Extended Property [tpdm].[CandidateEducatorPreparationProgramAssociationDegreeSpecialization].[EndDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The month, day, and year on which the Teacher Candidate exited the declared specialization.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'tpdm', @level1type = N'TABLE', @level1name = N'CandidateEducatorPreparationProgramAssociationDegreeSpecialization', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
PRINT N'Altering Extended Property [tpdm].[FinancialAid].[BeginDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The date the award was designated.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'tpdm', @level1type = N'TABLE', @level1name = N'FinancialAid', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO
PRINT N'Altering Extended Property [tpdm].[FinancialAid].[EndDate].[MS_Description]...';


GO
EXECUTE sp_updateextendedproperty @name = N'MS_Description', @value = N'The date the award was removed.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'tpdm', @level1type = N'TABLE', @level1name = N'FinancialAid', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
PRINT N'Creating Extended Property [edfi].[AssessmentAdministration].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The anticipated administration of an assessment under the purview of an education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AssessmentAdministration';


GO
PRINT N'Creating Extended Property [edfi].[AssessmentAdministration].[AdministrationIdentifier].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The title or name of the assessment in the context of its administration.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AssessmentAdministration', @level2type = N'COLUMN', @level2name = N'AdministrationIdentifier';


GO
PRINT N'Creating Extended Property [edfi].[AssessmentAdministration].[AssessmentIdentifier].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique number or alphanumeric code assigned to an assessment.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AssessmentAdministration', @level2type = N'COLUMN', @level2name = N'AssessmentIdentifier';


GO
PRINT N'Creating Extended Property [edfi].[AssessmentAdministration].[AssigningEducationOrganizationId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to an education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AssessmentAdministration', @level2type = N'COLUMN', @level2name = N'AssigningEducationOrganizationId';


GO
PRINT N'Creating Extended Property [edfi].[AssessmentAdministration].[Namespace].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Namespace for the assessment.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AssessmentAdministration', @level2type = N'COLUMN', @level2name = N'Namespace';


GO
PRINT N'Creating Extended Property [edfi].[AssessmentAdministrationAssessmentBatteryPart].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A reference to the parts of the assessment battery that are offered in this administration of the assessment.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AssessmentAdministrationAssessmentBatteryPart';


GO
PRINT N'Creating Extended Property [edfi].[AssessmentAdministrationAssessmentBatteryPart].[AdministrationIdentifier].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The title or name of the assessment in the context of its administration.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AssessmentAdministrationAssessmentBatteryPart', @level2type = N'COLUMN', @level2name = N'AdministrationIdentifier';


GO
PRINT N'Creating Extended Property [edfi].[AssessmentAdministrationAssessmentBatteryPart].[AssessmentIdentifier].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique number or alphanumeric code assigned to an assessment.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AssessmentAdministrationAssessmentBatteryPart', @level2type = N'COLUMN', @level2name = N'AssessmentIdentifier';


GO
PRINT N'Creating Extended Property [edfi].[AssessmentAdministrationAssessmentBatteryPart].[AssigningEducationOrganizationId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to an education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AssessmentAdministrationAssessmentBatteryPart', @level2type = N'COLUMN', @level2name = N'AssigningEducationOrganizationId';


GO
PRINT N'Creating Extended Property [edfi].[AssessmentAdministrationAssessmentBatteryPart].[Namespace].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Namespace for the assessment.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AssessmentAdministrationAssessmentBatteryPart', @level2type = N'COLUMN', @level2name = N'Namespace';


GO
PRINT N'Creating Extended Property [edfi].[AssessmentAdministrationAssessmentBatteryPart].[AssessmentBatteryPartName].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The name of the part of an assessment battery.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AssessmentAdministrationAssessmentBatteryPart', @level2type = N'COLUMN', @level2name = N'AssessmentBatteryPartName';


GO
PRINT N'Creating Extended Property [edfi].[AssessmentAdministrationParticipation].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identifies the point of contact for the administration of an assessment under the purview of an education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AssessmentAdministrationParticipation';


GO
PRINT N'Creating Extended Property [edfi].[AssessmentAdministrationParticipation].[AdministrationIdentifier].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The title or name of the assessment in the context of its administration.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AssessmentAdministrationParticipation', @level2type = N'COLUMN', @level2name = N'AdministrationIdentifier';


GO
PRINT N'Creating Extended Property [edfi].[AssessmentAdministrationParticipation].[AssessmentIdentifier].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique number or alphanumeric code assigned to an assessment.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AssessmentAdministrationParticipation', @level2type = N'COLUMN', @level2name = N'AssessmentIdentifier';


GO
PRINT N'Creating Extended Property [edfi].[AssessmentAdministrationParticipation].[AssigningEducationOrganizationId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to an education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AssessmentAdministrationParticipation', @level2type = N'COLUMN', @level2name = N'AssigningEducationOrganizationId';


GO
PRINT N'Creating Extended Property [edfi].[AssessmentAdministrationParticipation].[Namespace].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Namespace for the assessment.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AssessmentAdministrationParticipation', @level2type = N'COLUMN', @level2name = N'Namespace';


GO
PRINT N'Creating Extended Property [edfi].[AssessmentAdministrationParticipation].[ParticipatingEducationOrganizationId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to an education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AssessmentAdministrationParticipation', @level2type = N'COLUMN', @level2name = N'ParticipatingEducationOrganizationId';


GO
PRINT N'Creating Extended Property [edfi].[AssessmentAdministrationParticipationAdministrationPointOfContact].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Pre-identified contacts for education organizations administering the assessment.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AssessmentAdministrationParticipationAdministrationPointOfContact';


GO
PRINT N'Creating Extended Property [edfi].[AssessmentAdministrationParticipationAdministrationPointOfContact].[AdministrationIdentifier].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The title or name of the assessment in the context of its administration.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AssessmentAdministrationParticipationAdministrationPointOfContact', @level2type = N'COLUMN', @level2name = N'AdministrationIdentifier';


GO
PRINT N'Creating Extended Property [edfi].[AssessmentAdministrationParticipationAdministrationPointOfContact].[AssessmentIdentifier].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique number or alphanumeric code assigned to an assessment.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AssessmentAdministrationParticipationAdministrationPointOfContact', @level2type = N'COLUMN', @level2name = N'AssessmentIdentifier';


GO
PRINT N'Creating Extended Property [edfi].[AssessmentAdministrationParticipationAdministrationPointOfContact].[AssigningEducationOrganizationId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to an education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AssessmentAdministrationParticipationAdministrationPointOfContact', @level2type = N'COLUMN', @level2name = N'AssigningEducationOrganizationId';


GO
PRINT N'Creating Extended Property [edfi].[AssessmentAdministrationParticipationAdministrationPointOfContact].[Namespace].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Namespace for the assessment.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AssessmentAdministrationParticipationAdministrationPointOfContact', @level2type = N'COLUMN', @level2name = N'Namespace';


GO
PRINT N'Creating Extended Property [edfi].[AssessmentAdministrationParticipationAdministrationPointOfContact].[ParticipatingEducationOrganizationId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to an education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AssessmentAdministrationParticipationAdministrationPointOfContact', @level2type = N'COLUMN', @level2name = N'ParticipatingEducationOrganizationId';


GO
PRINT N'Creating Extended Property [edfi].[AssessmentAdministrationParticipationAdministrationPointOfContact].[EducationOrganizationId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to an education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AssessmentAdministrationParticipationAdministrationPointOfContact', @level2type = N'COLUMN', @level2name = N'EducationOrganizationId';


GO
PRINT N'Creating Extended Property [edfi].[AssessmentAdministrationParticipationAdministrationPointOfContact].[ElectronicMailAddress].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The email address for the contact.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AssessmentAdministrationParticipationAdministrationPointOfContact', @level2type = N'COLUMN', @level2name = N'ElectronicMailAddress';


GO
PRINT N'Creating Extended Property [edfi].[AssessmentAdministrationParticipationAdministrationPointOfContact].[FirstName].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The contact''s first name.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AssessmentAdministrationParticipationAdministrationPointOfContact', @level2type = N'COLUMN', @level2name = N'FirstName';


GO
PRINT N'Creating Extended Property [edfi].[AssessmentAdministrationParticipationAdministrationPointOfContact].[LastSurname].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The contact''s last name.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AssessmentAdministrationParticipationAdministrationPointOfContact', @level2type = N'COLUMN', @level2name = N'LastSurname';


GO
PRINT N'Creating Extended Property [edfi].[AssessmentAdministrationParticipationAdministrationPointOfContact].[LoginId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The login ID for the user; used for security access control interface.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AssessmentAdministrationParticipationAdministrationPointOfContact', @level2type = N'COLUMN', @level2name = N'LoginId';


GO
PRINT N'Creating Extended Property [edfi].[AssessmentAdministrationPeriod].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The anticipated dates for the assessment or administration window.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AssessmentAdministrationPeriod';


GO
PRINT N'Creating Extended Property [edfi].[AssessmentAdministrationPeriod].[AdministrationIdentifier].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The title or name of the assessment in the context of its administration.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AssessmentAdministrationPeriod', @level2type = N'COLUMN', @level2name = N'AdministrationIdentifier';


GO
PRINT N'Creating Extended Property [edfi].[AssessmentAdministrationPeriod].[AssessmentIdentifier].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique number or alphanumeric code assigned to an assessment.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AssessmentAdministrationPeriod', @level2type = N'COLUMN', @level2name = N'AssessmentIdentifier';


GO
PRINT N'Creating Extended Property [edfi].[AssessmentAdministrationPeriod].[AssigningEducationOrganizationId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to an education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AssessmentAdministrationPeriod', @level2type = N'COLUMN', @level2name = N'AssigningEducationOrganizationId';


GO
PRINT N'Creating Extended Property [edfi].[AssessmentAdministrationPeriod].[Namespace].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Namespace for the assessment.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AssessmentAdministrationPeriod', @level2type = N'COLUMN', @level2name = N'Namespace';


GO
PRINT N'Creating Extended Property [edfi].[AssessmentAdministrationPeriod].[BeginDate].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The month, day, and year for the start of the period.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AssessmentAdministrationPeriod', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO
PRINT N'Creating Extended Property [edfi].[AssessmentAdministrationPeriod].[EndDate].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The month, day, and year for the end of the period.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AssessmentAdministrationPeriod', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
PRINT N'Creating Extended Property [edfi].[AssessmentBatteryPart].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The parts organized for administering an assessessment which together provide a comprehensive assessment of the students.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AssessmentBatteryPart';


GO
PRINT N'Creating Extended Property [edfi].[AssessmentBatteryPart].[AssessmentBatteryPartName].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The name of the part of an assessment battery.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AssessmentBatteryPart', @level2type = N'COLUMN', @level2name = N'AssessmentBatteryPartName';


GO
PRINT N'Creating Extended Property [edfi].[AssessmentBatteryPart].[AssessmentIdentifier].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique number or alphanumeric code assigned to an assessment.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AssessmentBatteryPart', @level2type = N'COLUMN', @level2name = N'AssessmentIdentifier';


GO
PRINT N'Creating Extended Property [edfi].[AssessmentBatteryPart].[Namespace].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Namespace for the assessment.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AssessmentBatteryPart', @level2type = N'COLUMN', @level2name = N'Namespace';


GO
PRINT N'Creating Extended Property [edfi].[AssessmentBatteryPartObjectiveAssessment].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A reference to the objective assessment(s) that are administered by the assessment battery part.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AssessmentBatteryPartObjectiveAssessment';


GO
PRINT N'Creating Extended Property [edfi].[AssessmentBatteryPartObjectiveAssessment].[AssessmentBatteryPartName].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The name of the part of an assessment battery.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AssessmentBatteryPartObjectiveAssessment', @level2type = N'COLUMN', @level2name = N'AssessmentBatteryPartName';


GO
PRINT N'Creating Extended Property [edfi].[AssessmentBatteryPartObjectiveAssessment].[AssessmentIdentifier].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique number or alphanumeric code assigned to an assessment.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AssessmentBatteryPartObjectiveAssessment', @level2type = N'COLUMN', @level2name = N'AssessmentIdentifier';


GO
PRINT N'Creating Extended Property [edfi].[AssessmentBatteryPartObjectiveAssessment].[Namespace].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Namespace for the assessment.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AssessmentBatteryPartObjectiveAssessment', @level2type = N'COLUMN', @level2name = N'Namespace';


GO
PRINT N'Creating Extended Property [edfi].[AssessmentBatteryPartObjectiveAssessment].[IdentificationCode].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique number or alphanumeric code assigned to an objective assessment by a school, school system, a state, or other agency or entity.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'AssessmentBatteryPartObjectiveAssessment', @level2type = N'COLUMN', @level2name = N'IdentificationCode';


GO
PRINT N'Creating Extended Property [edfi].[DualCreditInstitutionDescriptor].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Custom descriptor of college institutions or categories of institutions participating in the dual credit program.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'DualCreditInstitutionDescriptor';


GO
PRINT N'Creating Extended Property [edfi].[DualCreditInstitutionDescriptor].[DualCreditInstitutionDescriptorId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'DualCreditInstitutionDescriptor', @level2type = N'COLUMN', @level2name = N'DualCreditInstitutionDescriptorId';


GO
PRINT N'Creating Extended Property [edfi].[DualCreditTypeDescriptor].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Indicates the type of the dual credit program.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'DualCreditTypeDescriptor';


GO
PRINT N'Creating Extended Property [edfi].[DualCreditTypeDescriptor].[DualCreditTypeDescriptorId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'DualCreditTypeDescriptor', @level2type = N'COLUMN', @level2name = N'DualCreditTypeDescriptorId';


GO
PRINT N'Creating Extended Property [edfi].[Section504DisabilityDescriptor].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'This descriptor defines the reason(s) why student qualifies for Section 504 consideration.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'Section504DisabilityDescriptor';


GO
PRINT N'Creating Extended Property [edfi].[Section504DisabilityDescriptor].[Section504DisabilityDescriptorId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'Section504DisabilityDescriptor', @level2type = N'COLUMN', @level2name = N'Section504DisabilityDescriptorId';


GO
PRINT N'Creating Extended Property [edfi].[StudentAssessmentRegistration].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identifies an assessment registration that a student is expected to participate in including the testing organization, reporting organization and assessment delivery details.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentAssessmentRegistration';


GO
PRINT N'Creating Extended Property [edfi].[StudentAssessmentRegistration].[AdministrationIdentifier].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The title or name of the assessment in the context of its administration.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentAssessmentRegistration', @level2type = N'COLUMN', @level2name = N'AdministrationIdentifier';


GO
PRINT N'Creating Extended Property [edfi].[StudentAssessmentRegistration].[AssessmentIdentifier].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique number or alphanumeric code assigned to an assessment.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentAssessmentRegistration', @level2type = N'COLUMN', @level2name = N'AssessmentIdentifier';


GO
PRINT N'Creating Extended Property [edfi].[StudentAssessmentRegistration].[AssigningEducationOrganizationId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to an education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentAssessmentRegistration', @level2type = N'COLUMN', @level2name = N'AssigningEducationOrganizationId';


GO
PRINT N'Creating Extended Property [edfi].[StudentAssessmentRegistration].[EducationOrganizationId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to an education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentAssessmentRegistration', @level2type = N'COLUMN', @level2name = N'EducationOrganizationId';


GO
PRINT N'Creating Extended Property [edfi].[StudentAssessmentRegistration].[Namespace].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Namespace for the assessment.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentAssessmentRegistration', @level2type = N'COLUMN', @level2name = N'Namespace';


GO
PRINT N'Creating Extended Property [edfi].[StudentAssessmentRegistration].[StudentUSI].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique alphanumeric code assigned to a student.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentAssessmentRegistration', @level2type = N'COLUMN', @level2name = N'StudentUSI';


GO
PRINT N'Creating Extended Property [edfi].[StudentAssessmentRegistration].[AssessmentGradeLevelDescriptorId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The grade level or primary instructional level at which the student is to be assessed.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentAssessmentRegistration', @level2type = N'COLUMN', @level2name = N'AssessmentGradeLevelDescriptorId';


GO
PRINT N'Creating Extended Property [edfi].[StudentAssessmentRegistration].[EntryDate].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The month, day, and year on which an individual enters and begins to receive instructional services in a school for each school year. The EntryDate value should be the date the student enrolled, or when the student''s enrollment materially changed, such as with a grade promotion.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentAssessmentRegistration', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
PRINT N'Creating Extended Property [edfi].[StudentAssessmentRegistration].[PlatformTypeDescriptorId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The environment or format in which the assessment is expected to be administered.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentAssessmentRegistration', @level2type = N'COLUMN', @level2name = N'PlatformTypeDescriptorId';


GO
PRINT N'Creating Extended Property [edfi].[StudentAssessmentRegistration].[ReportingEducationOrganizationId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to an education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentAssessmentRegistration', @level2type = N'COLUMN', @level2name = N'ReportingEducationOrganizationId';


GO
PRINT N'Creating Extended Property [edfi].[StudentAssessmentRegistration].[ScheduledEducationOrganizationId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to an education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentAssessmentRegistration', @level2type = N'COLUMN', @level2name = N'ScheduledEducationOrganizationId';


GO
PRINT N'Creating Extended Property [edfi].[StudentAssessmentRegistration].[ScheduledStudentUSI].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique alphanumeric code assigned to a student.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentAssessmentRegistration', @level2type = N'COLUMN', @level2name = N'ScheduledStudentUSI';


GO
PRINT N'Creating Extended Property [edfi].[StudentAssessmentRegistration].[SchoolId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentAssessmentRegistration', @level2type = N'COLUMN', @level2name = N'SchoolId';


GO
PRINT N'Creating Extended Property [edfi].[StudentAssessmentRegistration].[TestingEducationOrganizationId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to an education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentAssessmentRegistration', @level2type = N'COLUMN', @level2name = N'TestingEducationOrganizationId';


GO
PRINT N'Creating Extended Property [edfi].[StudentAssessmentRegistrationAssessmentAccommodation].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The special variation(s) to be used in how assessments (in general) are presented, how it is administered, or how the test taker is allowed to respond. This generally refers to changes that do not substantially alter what the examination measures. The proper use of accommodations does not substantially change academic level or performance criteria.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentAssessmentRegistrationAssessmentAccommodation';


GO
PRINT N'Creating Extended Property [edfi].[StudentAssessmentRegistrationAssessmentAccommodation].[AdministrationIdentifier].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The title or name of the assessment in the context of its administration.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentAssessmentRegistrationAssessmentAccommodation', @level2type = N'COLUMN', @level2name = N'AdministrationIdentifier';


GO
PRINT N'Creating Extended Property [edfi].[StudentAssessmentRegistrationAssessmentAccommodation].[AssessmentIdentifier].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique number or alphanumeric code assigned to an assessment.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentAssessmentRegistrationAssessmentAccommodation', @level2type = N'COLUMN', @level2name = N'AssessmentIdentifier';


GO
PRINT N'Creating Extended Property [edfi].[StudentAssessmentRegistrationAssessmentAccommodation].[AssigningEducationOrganizationId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to an education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentAssessmentRegistrationAssessmentAccommodation', @level2type = N'COLUMN', @level2name = N'AssigningEducationOrganizationId';


GO
PRINT N'Creating Extended Property [edfi].[StudentAssessmentRegistrationAssessmentAccommodation].[EducationOrganizationId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to an education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentAssessmentRegistrationAssessmentAccommodation', @level2type = N'COLUMN', @level2name = N'EducationOrganizationId';


GO
PRINT N'Creating Extended Property [edfi].[StudentAssessmentRegistrationAssessmentAccommodation].[Namespace].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Namespace for the assessment.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentAssessmentRegistrationAssessmentAccommodation', @level2type = N'COLUMN', @level2name = N'Namespace';


GO
PRINT N'Creating Extended Property [edfi].[StudentAssessmentRegistrationAssessmentAccommodation].[StudentUSI].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique alphanumeric code assigned to a student.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentAssessmentRegistrationAssessmentAccommodation', @level2type = N'COLUMN', @level2name = N'StudentUSI';


GO
PRINT N'Creating Extended Property [edfi].[StudentAssessmentRegistrationAssessmentAccommodation].[AccommodationDescriptorId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The special variation(s) to be used in how assessments (in general) are presented, how it is administered, or how the test taker is allowed to respond. This generally refers to changes that do not substantially alter what the examination measures. The proper use of accommodations does not substantially change academic level or performance criteria.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentAssessmentRegistrationAssessmentAccommodation', @level2type = N'COLUMN', @level2name = N'AccommodationDescriptorId';


GO
PRINT N'Creating Extended Property [edfi].[StudentAssessmentRegistrationAssessmentCustomization].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Key/value pairs which may be used to facilitate customization of an assessment or to support vendor reporting/analysis.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentAssessmentRegistrationAssessmentCustomization';


GO
PRINT N'Creating Extended Property [edfi].[StudentAssessmentRegistrationAssessmentCustomization].[AdministrationIdentifier].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The title or name of the assessment in the context of its administration.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentAssessmentRegistrationAssessmentCustomization', @level2type = N'COLUMN', @level2name = N'AdministrationIdentifier';


GO
PRINT N'Creating Extended Property [edfi].[StudentAssessmentRegistrationAssessmentCustomization].[AssessmentIdentifier].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique number or alphanumeric code assigned to an assessment.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentAssessmentRegistrationAssessmentCustomization', @level2type = N'COLUMN', @level2name = N'AssessmentIdentifier';


GO
PRINT N'Creating Extended Property [edfi].[StudentAssessmentRegistrationAssessmentCustomization].[AssigningEducationOrganizationId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to an education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentAssessmentRegistrationAssessmentCustomization', @level2type = N'COLUMN', @level2name = N'AssigningEducationOrganizationId';


GO
PRINT N'Creating Extended Property [edfi].[StudentAssessmentRegistrationAssessmentCustomization].[EducationOrganizationId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to an education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentAssessmentRegistrationAssessmentCustomization', @level2type = N'COLUMN', @level2name = N'EducationOrganizationId';


GO
PRINT N'Creating Extended Property [edfi].[StudentAssessmentRegistrationAssessmentCustomization].[Namespace].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Namespace for the assessment.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentAssessmentRegistrationAssessmentCustomization', @level2type = N'COLUMN', @level2name = N'Namespace';


GO
PRINT N'Creating Extended Property [edfi].[StudentAssessmentRegistrationAssessmentCustomization].[StudentUSI].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique alphanumeric code assigned to a student.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentAssessmentRegistrationAssessmentCustomization', @level2type = N'COLUMN', @level2name = N'StudentUSI';


GO
PRINT N'Creating Extended Property [edfi].[StudentAssessmentRegistrationAssessmentCustomization].[CustomizationKey].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'An agreed upon identifier for the custom information.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentAssessmentRegistrationAssessmentCustomization', @level2type = N'COLUMN', @level2name = N'CustomizationKey';


GO
PRINT N'Creating Extended Property [edfi].[StudentAssessmentRegistrationAssessmentCustomization].[CustomizationValue].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Custom value for the indicated CustomizationKey.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentAssessmentRegistrationAssessmentCustomization', @level2type = N'COLUMN', @level2name = N'CustomizationValue';


GO
PRINT N'Creating Extended Property [edfi].[StudentAssessmentRegistrationBatteryPartAssociation].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The association to the part(s) of the assessment battery that the student is to be tested for this administration of the assessment.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentAssessmentRegistrationBatteryPartAssociation';


GO
PRINT N'Creating Extended Property [edfi].[StudentAssessmentRegistrationBatteryPartAssociation].[AdministrationIdentifier].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The title or name of the assessment in the context of its administration.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentAssessmentRegistrationBatteryPartAssociation', @level2type = N'COLUMN', @level2name = N'AdministrationIdentifier';


GO
PRINT N'Creating Extended Property [edfi].[StudentAssessmentRegistrationBatteryPartAssociation].[AssessmentBatteryPartName].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The name of the part of an assessment battery.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentAssessmentRegistrationBatteryPartAssociation', @level2type = N'COLUMN', @level2name = N'AssessmentBatteryPartName';


GO
PRINT N'Creating Extended Property [edfi].[StudentAssessmentRegistrationBatteryPartAssociation].[AssessmentIdentifier].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique number or alphanumeric code assigned to an assessment.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentAssessmentRegistrationBatteryPartAssociation', @level2type = N'COLUMN', @level2name = N'AssessmentIdentifier';


GO
PRINT N'Creating Extended Property [edfi].[StudentAssessmentRegistrationBatteryPartAssociation].[AssigningEducationOrganizationId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to an education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentAssessmentRegistrationBatteryPartAssociation', @level2type = N'COLUMN', @level2name = N'AssigningEducationOrganizationId';


GO
PRINT N'Creating Extended Property [edfi].[StudentAssessmentRegistrationBatteryPartAssociation].[EducationOrganizationId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to an education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentAssessmentRegistrationBatteryPartAssociation', @level2type = N'COLUMN', @level2name = N'EducationOrganizationId';


GO
PRINT N'Creating Extended Property [edfi].[StudentAssessmentRegistrationBatteryPartAssociation].[Namespace].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Namespace for the assessment.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentAssessmentRegistrationBatteryPartAssociation', @level2type = N'COLUMN', @level2name = N'Namespace';


GO
PRINT N'Creating Extended Property [edfi].[StudentAssessmentRegistrationBatteryPartAssociation].[StudentUSI].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique alphanumeric code assigned to a student.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentAssessmentRegistrationBatteryPartAssociation', @level2type = N'COLUMN', @level2name = N'StudentUSI';


GO
PRINT N'Creating Extended Property [edfi].[StudentAssessmentRegistrationBatteryPartAssociationAccommodation].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The special variation(s) to be used for the specific part of the assessment battery on how is presented, how it is administered, or how the test taker is allowed to respond.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentAssessmentRegistrationBatteryPartAssociationAccommodation';


GO
PRINT N'Creating Extended Property [edfi].[StudentAssessmentRegistrationBatteryPartAssociationAccommodation].[AdministrationIdentifier].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The title or name of the assessment in the context of its administration.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentAssessmentRegistrationBatteryPartAssociationAccommodation', @level2type = N'COLUMN', @level2name = N'AdministrationIdentifier';


GO
PRINT N'Creating Extended Property [edfi].[StudentAssessmentRegistrationBatteryPartAssociationAccommodation].[AssessmentBatteryPartName].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The name of the part of an assessment battery.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentAssessmentRegistrationBatteryPartAssociationAccommodation', @level2type = N'COLUMN', @level2name = N'AssessmentBatteryPartName';


GO
PRINT N'Creating Extended Property [edfi].[StudentAssessmentRegistrationBatteryPartAssociationAccommodation].[AssessmentIdentifier].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique number or alphanumeric code assigned to an assessment.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentAssessmentRegistrationBatteryPartAssociationAccommodation', @level2type = N'COLUMN', @level2name = N'AssessmentIdentifier';


GO
PRINT N'Creating Extended Property [edfi].[StudentAssessmentRegistrationBatteryPartAssociationAccommodation].[AssigningEducationOrganizationId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to an education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentAssessmentRegistrationBatteryPartAssociationAccommodation', @level2type = N'COLUMN', @level2name = N'AssigningEducationOrganizationId';


GO
PRINT N'Creating Extended Property [edfi].[StudentAssessmentRegistrationBatteryPartAssociationAccommodation].[EducationOrganizationId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to an education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentAssessmentRegistrationBatteryPartAssociationAccommodation', @level2type = N'COLUMN', @level2name = N'EducationOrganizationId';


GO
PRINT N'Creating Extended Property [edfi].[StudentAssessmentRegistrationBatteryPartAssociationAccommodation].[Namespace].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Namespace for the assessment.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentAssessmentRegistrationBatteryPartAssociationAccommodation', @level2type = N'COLUMN', @level2name = N'Namespace';


GO
PRINT N'Creating Extended Property [edfi].[StudentAssessmentRegistrationBatteryPartAssociationAccommodation].[StudentUSI].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique alphanumeric code assigned to a student.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentAssessmentRegistrationBatteryPartAssociationAccommodation', @level2type = N'COLUMN', @level2name = N'StudentUSI';


GO
PRINT N'Creating Extended Property [edfi].[StudentAssessmentRegistrationBatteryPartAssociationAccommodation].[AccommodationDescriptorId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The special variation(s) to be used for the specific part of the assessment battery on how is presented, how it is administered, or how the test taker is allowed to respond.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentAssessmentRegistrationBatteryPartAssociationAccommodation', @level2type = N'COLUMN', @level2name = N'AccommodationDescriptorId';


GO
PRINT N'Creating Extended Property [edfi].[StudentDisciplineIncidentBehaviorAssociationWeapon].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identifies the type(s) of weapon used by the student during a discipline incident. The Federal Gun-Free Schools Act requires states to report the number of students expelled for bringing firearms to school by type of firearm.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentDisciplineIncidentBehaviorAssociationWeapon';


GO
PRINT N'Creating Extended Property [edfi].[StudentDisciplineIncidentBehaviorAssociationWeapon].[BehaviorDescriptorId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Describes behavior by category.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentDisciplineIncidentBehaviorAssociationWeapon', @level2type = N'COLUMN', @level2name = N'BehaviorDescriptorId';


GO
PRINT N'Creating Extended Property [edfi].[StudentDisciplineIncidentBehaviorAssociationWeapon].[IncidentIdentifier].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A locally assigned unique identifier (within the school or school district) to identify each specific DisciplineIncident or occurrence. The same identifier should be used to document the entire discipline incident even if it included multiple offenses and multiple offenders.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentDisciplineIncidentBehaviorAssociationWeapon', @level2type = N'COLUMN', @level2name = N'IncidentIdentifier';


GO
PRINT N'Creating Extended Property [edfi].[StudentDisciplineIncidentBehaviorAssociationWeapon].[SchoolId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentDisciplineIncidentBehaviorAssociationWeapon', @level2type = N'COLUMN', @level2name = N'SchoolId';


GO
PRINT N'Creating Extended Property [edfi].[StudentDisciplineIncidentBehaviorAssociationWeapon].[StudentUSI].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique alphanumeric code assigned to a student.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentDisciplineIncidentBehaviorAssociationWeapon', @level2type = N'COLUMN', @level2name = N'StudentUSI';


GO
PRINT N'Creating Extended Property [edfi].[StudentDisciplineIncidentBehaviorAssociationWeapon].[WeaponDescriptorId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identifies the type(s) of weapon used by the student during a discipline incident. The Federal Gun-Free Schools Act requires states to report the number of students expelled for bringing firearms to school by type of firearm.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentDisciplineIncidentBehaviorAssociationWeapon', @level2type = N'COLUMN', @level2name = N'WeaponDescriptorId';


GO
PRINT N'Creating Extended Property [edfi].[StudentEducationOrganizationAssessmentAccommodation].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The accommodation(s) required or expected for administering assessments as determined by the education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationAssessmentAccommodation';


GO
PRINT N'Creating Extended Property [edfi].[StudentEducationOrganizationAssessmentAccommodation].[EducationOrganizationId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to an education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationAssessmentAccommodation', @level2type = N'COLUMN', @level2name = N'EducationOrganizationId';


GO
PRINT N'Creating Extended Property [edfi].[StudentEducationOrganizationAssessmentAccommodation].[StudentUSI].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique alphanumeric code assigned to a student.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationAssessmentAccommodation', @level2type = N'COLUMN', @level2name = N'StudentUSI';


GO
PRINT N'Creating Extended Property [edfi].[StudentEducationOrganizationAssessmentAccommodationGeneralAccommodation].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The special variation(s) to be used in how assessments (in general) are presented, how it is administered, or how the test taker is allowed to respond. This generally refers to changes that do not substantially alter what the examination measures. The proper use of accommodations does not substantially change academic level or performance criteria.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationAssessmentAccommodationGeneralAccommodation';


GO
PRINT N'Creating Extended Property [edfi].[StudentEducationOrganizationAssessmentAccommodationGeneralAccommodation].[EducationOrganizationId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to an education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationAssessmentAccommodationGeneralAccommodation', @level2type = N'COLUMN', @level2name = N'EducationOrganizationId';


GO
PRINT N'Creating Extended Property [edfi].[StudentEducationOrganizationAssessmentAccommodationGeneralAccommodation].[StudentUSI].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique alphanumeric code assigned to a student.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationAssessmentAccommodationGeneralAccommodation', @level2type = N'COLUMN', @level2name = N'StudentUSI';


GO
PRINT N'Creating Extended Property [edfi].[StudentEducationOrganizationAssessmentAccommodationGeneralAccommodation].[AccommodationDescriptorId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The special variation(s) to be used in how assessments (in general) are presented, how it is administered, or how the test taker is allowed to respond. This generally refers to changes that do not substantially alter what the examination measures. The proper use of accommodations does not substantially change academic level or performance criteria.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentEducationOrganizationAssessmentAccommodationGeneralAccommodation', @level2type = N'COLUMN', @level2name = N'AccommodationDescriptorId';


GO
PRINT N'Creating Extended Property [edfi].[StudentSection504ProgramAssociation].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'This association identifies student that qualifies for the Section 504 of the Rehabilitation Act of 1973.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSection504ProgramAssociation';


GO
PRINT N'Creating Extended Property [edfi].[StudentSection504ProgramAssociation].[BeginDate].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSection504ProgramAssociation', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO
PRINT N'Creating Extended Property [edfi].[StudentSection504ProgramAssociation].[EducationOrganizationId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to an education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSection504ProgramAssociation', @level2type = N'COLUMN', @level2name = N'EducationOrganizationId';


GO
PRINT N'Creating Extended Property [edfi].[StudentSection504ProgramAssociation].[ProgramEducationOrganizationId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The identifier assigned to an education organization.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSection504ProgramAssociation', @level2type = N'COLUMN', @level2name = N'ProgramEducationOrganizationId';


GO
PRINT N'Creating Extended Property [edfi].[StudentSection504ProgramAssociation].[ProgramName].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSection504ProgramAssociation', @level2type = N'COLUMN', @level2name = N'ProgramName';


GO
PRINT N'Creating Extended Property [edfi].[StudentSection504ProgramAssociation].[ProgramTypeDescriptorId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The type of program.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSection504ProgramAssociation', @level2type = N'COLUMN', @level2name = N'ProgramTypeDescriptorId';


GO
PRINT N'Creating Extended Property [edfi].[StudentSection504ProgramAssociation].[StudentUSI].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'A unique alphanumeric code assigned to a student.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSection504ProgramAssociation', @level2type = N'COLUMN', @level2name = N'StudentUSI';


GO
PRINT N'Creating Extended Property [edfi].[StudentSection504ProgramAssociation].[AccommodationPlan].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Indicates whether student has a Section 504 accommodation plan.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSection504ProgramAssociation', @level2type = N'COLUMN', @level2name = N'AccommodationPlan';


GO
PRINT N'Creating Extended Property [edfi].[StudentSection504ProgramAssociation].[Section504DisabilityDescriptorId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Defines one or more disabilities student has that qualifies them for a Section 504 plan.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSection504ProgramAssociation', @level2type = N'COLUMN', @level2name = N'Section504DisabilityDescriptorId';


GO
PRINT N'Creating Extended Property [edfi].[StudentSection504ProgramAssociation].[Section504Eligibility].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Indicates whether student has a disability, either temporary or permenant, that qualifies student for Section 504 consideration. Selection of FALSE for this boolean is equivalent to marking student as ''Did Not Qualify''.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSection504ProgramAssociation', @level2type = N'COLUMN', @level2name = N'Section504Eligibility';


GO
PRINT N'Creating Extended Property [edfi].[StudentSection504ProgramAssociation].[Section504EligibilityDecisionDate].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The month, day, and year on which the Section 504 eligibility decision is made.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSection504ProgramAssociation', @level2type = N'COLUMN', @level2name = N'Section504EligibilityDecisionDate';


GO
PRINT N'Creating Extended Property [edfi].[StudentSection504ProgramAssociation].[Section504MeetingDate].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The month, day, and year on which the meeting with student''s parent/guardian held to discuss the 504 eligibility of the student.', @level0type = N'SCHEMA', @level0name = N'edfi', @level1type = N'TABLE', @level1name = N'StudentSection504ProgramAssociation', @level2type = N'COLUMN', @level2name = N'Section504MeetingDate';


GO
PRINT N'Refreshing Procedure [edfi].[SetCurrentSchoolYear]...';


GO
EXECUTE sp_refreshsqlmodule N'[edfi].[SetCurrentSchoolYear]';


GO
PRINT N'Checking existing data against newly created constraints';


GO
ALTER TABLE [edfi].[RestraintEventProgram] WITH CHECK CHECK CONSTRAINT [FK_RestraintEventProgram_RestraintEvent];

ALTER TABLE [edfi].[RestraintEventReason] WITH CHECK CHECK CONSTRAINT [FK_RestraintEventReason_RestraintEvent];

ALTER TABLE [edfi].[RestraintEvent] WITH CHECK CHECK CONSTRAINT [FK_RestraintEvent_EducationalEnvironmentDescriptor];

ALTER TABLE [edfi].[RestraintEvent] WITH CHECK CHECK CONSTRAINT [FK_RestraintEvent_School];

ALTER TABLE [edfi].[RestraintEvent] WITH CHECK CHECK CONSTRAINT [FK_RestraintEvent_Student];

ALTER TABLE [edfi].[RestraintEvent] WITH CHECK CHECK CONSTRAINT [FK_RestraintEvent_DisciplineIncident];

ALTER TABLE [edfi].[StudentSectionAssociationProgram] WITH CHECK CHECK CONSTRAINT [FK_StudentSectionAssociationProgram_StudentSectionAssociation];

ALTER TABLE [edfi].[StudentCompetencyObjectiveStudentSectionAssociation] WITH CHECK CHECK CONSTRAINT [FK_StudentCompetencyObjectiveStudentSectionAssociation_StudentSectionAssociation];

ALTER TABLE [edfi].[StudentSectionAssociation] WITH CHECK CHECK CONSTRAINT [FK_StudentSectionAssociation_AttemptStatusDescriptor];

ALTER TABLE [edfi].[StudentSectionAssociation] WITH CHECK CHECK CONSTRAINT [FK_StudentSectionAssociation_RepeatIdentifierDescriptor];

ALTER TABLE [edfi].[StudentSectionAssociation] WITH CHECK CHECK CONSTRAINT [FK_StudentSectionAssociation_Section];

ALTER TABLE [edfi].[StudentSectionAssociation] WITH CHECK CHECK CONSTRAINT [FK_StudentSectionAssociation_Student];

ALTER TABLE [edfi].[Grade] WITH CHECK CHECK CONSTRAINT [FK_Grade_StudentSectionAssociation];

ALTER TABLE [edfi].[StudentSectionAssociation] WITH CHECK CHECK CONSTRAINT [FK_StudentSectionAssociation_DualCreditInstitutionDescriptor];

ALTER TABLE [edfi].[StudentSectionAssociation] WITH CHECK CHECK CONSTRAINT [FK_StudentSectionAssociation_DualCreditTypeDescriptor];

ALTER TABLE [edfi].[StudentSectionAssociation] WITH CHECK CHECK CONSTRAINT [FK_StudentSectionAssociation_EducationOrganization];

ALTER TABLE [edfi].[StudentSpecialEducationProgramAssociation] WITH CHECK CHECK CONSTRAINT [FK_StudentSpecialEducationProgramAssociation_GeneralStudentProgramAssociation];

ALTER TABLE [edfi].[StudentSpecialEducationProgramAssociation] WITH CHECK CHECK CONSTRAINT [FK_StudentSpecialEducationProgramAssociation_SpecialEducationExitReasonDescriptor];

ALTER TABLE [edfi].[StudentSpecialEducationProgramAssociation] WITH CHECK CHECK CONSTRAINT [FK_StudentSpecialEducationProgramAssociation_SpecialEducationSettingDescriptor];

ALTER TABLE [edfi].[StudentSpecialEducationProgramAssociationDisability] WITH CHECK CHECK CONSTRAINT [FK_StudentSpecialEducationProgramAssociationDisability_StudentSpecialEducationProgramAssociation];

ALTER TABLE [edfi].[StudentSpecialEducationProgramAssociationServiceProvider] WITH CHECK CHECK CONSTRAINT [FK_StudentSpecialEducationProgramAssociationServiceProvider_StudentSpecialEducationProgramAssociation];

ALTER TABLE [edfi].[StudentSpecialEducationProgramAssociationSpecialEducationProgramService] WITH CHECK CHECK CONSTRAINT [FK_StudentSpecialEducationProgramAssociationSpecialEducationProgramService_StudentSpecialEducationProgramAssociation];

ALTER TABLE [edfi].[StudentSpecialEducationProgramEligibilityAssociation] WITH CHECK CHECK CONSTRAINT [FK_StudentSpecialEducationProgramEligibilityAssociation_EducationOrganization];

ALTER TABLE [edfi].[StudentSpecialEducationProgramEligibilityAssociation] WITH CHECK CHECK CONSTRAINT [FK_StudentSpecialEducationProgramEligibilityAssociation_EligibilityDelayReasonDescriptor];

ALTER TABLE [edfi].[StudentSpecialEducationProgramEligibilityAssociation] WITH CHECK CHECK CONSTRAINT [FK_StudentSpecialEducationProgramEligibilityAssociation_EligibilityEvaluationTypeDescriptor];

ALTER TABLE [edfi].[StudentSpecialEducationProgramEligibilityAssociation] WITH CHECK CHECK CONSTRAINT [FK_StudentSpecialEducationProgramEligibilityAssociation_EvaluationDelayReasonDescriptor];

ALTER TABLE [edfi].[StudentSpecialEducationProgramEligibilityAssociation] WITH CHECK CHECK CONSTRAINT [FK_StudentSpecialEducationProgramEligibilityAssociation_IDEAPartDescriptor];

ALTER TABLE [edfi].[StudentSpecialEducationProgramEligibilityAssociation] WITH CHECK CHECK CONSTRAINT [FK_StudentSpecialEducationProgramEligibilityAssociation_Program];

ALTER TABLE [edfi].[StudentSpecialEducationProgramEligibilityAssociation] WITH CHECK CHECK CONSTRAINT [FK_StudentSpecialEducationProgramEligibilityAssociation_Student];

ALTER TABLE [tpdm].[Candidate] WITH CHECK CHECK CONSTRAINT [FK_Candidate_SexDescriptor];

ALTER TABLE [tpdm].[EvaluationRatingResult] WITH CHECK CHECK CONSTRAINT [FK_EvaluationRatingResult_EvaluationRating];

ALTER TABLE [tpdm].[EvaluationRatingReviewer] WITH CHECK CHECK CONSTRAINT [FK_EvaluationRatingReviewer_EvaluationRating];

ALTER TABLE [tpdm].[EvaluationObjectiveRating] WITH CHECK CHECK CONSTRAINT [FK_EvaluationObjectiveRating_EvaluationRating];

ALTER TABLE [tpdm].[EvaluationRating] WITH CHECK CHECK CONSTRAINT [FK_EvaluationRating_Evaluation];

ALTER TABLE [tpdm].[EvaluationRating] WITH CHECK CHECK CONSTRAINT [FK_EvaluationRating_EvaluationRatingLevelDescriptor];

ALTER TABLE [tpdm].[EvaluationRating] WITH CHECK CHECK CONSTRAINT [FK_EvaluationRating_EvaluationRatingStatusDescriptor];

ALTER TABLE [tpdm].[EvaluationRating] WITH CHECK CHECK CONSTRAINT [FK_EvaluationRating_PerformanceEvaluationRating];

ALTER TABLE [tpdm].[EvaluationRating] WITH CHECK CHECK CONSTRAINT [FK_EvaluationRating_Section];

ALTER TABLE [edfi].[AssessmentAdministration] WITH CHECK CHECK CONSTRAINT [FK_AssessmentAdministration_Assessment];

ALTER TABLE [edfi].[AssessmentAdministration] WITH CHECK CHECK CONSTRAINT [FK_AssessmentAdministration_EducationOrganization];

ALTER TABLE [edfi].[AssessmentAdministrationAssessmentBatteryPart] WITH CHECK CHECK CONSTRAINT [FK_AssessmentAdministrationAssessmentBatteryPart_AssessmentAdministration];

ALTER TABLE [edfi].[AssessmentAdministrationAssessmentBatteryPart] WITH CHECK CHECK CONSTRAINT [FK_AssessmentAdministrationAssessmentBatteryPart_AssessmentBatteryPart];

ALTER TABLE [edfi].[AssessmentAdministrationParticipation] WITH CHECK CHECK CONSTRAINT [FK_AssessmentAdministrationParticipation_AssessmentAdministration];

ALTER TABLE [edfi].[AssessmentAdministrationParticipation] WITH CHECK CHECK CONSTRAINT [FK_AssessmentAdministrationParticipation_EducationOrganization];

ALTER TABLE [edfi].[AssessmentAdministrationParticipationAdministrationPointOfContact] WITH CHECK CHECK CONSTRAINT [FK_AssessmentAdministrationParticipationAdministrationPointOfContact_AssessmentAdministrationParticipation];

ALTER TABLE [edfi].[AssessmentAdministrationParticipationAdministrationPointOfContact] WITH CHECK CHECK CONSTRAINT [FK_AssessmentAdministrationParticipationAdministrationPointOfContact_EducationOrganization];

ALTER TABLE [edfi].[AssessmentAdministrationPeriod] WITH CHECK CHECK CONSTRAINT [FK_AssessmentAdministrationPeriod_AssessmentAdministration];

ALTER TABLE [edfi].[AssessmentBatteryPart] WITH CHECK CHECK CONSTRAINT [FK_AssessmentBatteryPart_Assessment];

ALTER TABLE [edfi].[AssessmentBatteryPartObjectiveAssessment] WITH CHECK CHECK CONSTRAINT [FK_AssessmentBatteryPartObjectiveAssessment_AssessmentBatteryPart];

ALTER TABLE [edfi].[AssessmentBatteryPartObjectiveAssessment] WITH CHECK CHECK CONSTRAINT [FK_AssessmentBatteryPartObjectiveAssessment_ObjectiveAssessment];

ALTER TABLE [edfi].[DualCreditInstitutionDescriptor] WITH CHECK CHECK CONSTRAINT [FK_DualCreditInstitutionDescriptor_Descriptor];

ALTER TABLE [edfi].[DualCreditTypeDescriptor] WITH CHECK CHECK CONSTRAINT [FK_DualCreditTypeDescriptor_Descriptor];

ALTER TABLE [edfi].[Section504DisabilityDescriptor] WITH CHECK CHECK CONSTRAINT [FK_Section504DisabilityDescriptor_Descriptor];

ALTER TABLE [edfi].[StudentAssessmentRegistration] WITH CHECK CHECK CONSTRAINT [FK_StudentAssessmentRegistration_AssessmentAdministration];

ALTER TABLE [edfi].[StudentAssessmentRegistration] WITH CHECK CHECK CONSTRAINT [FK_StudentAssessmentRegistration_EducationOrganization];

ALTER TABLE [edfi].[StudentAssessmentRegistration] WITH CHECK CHECK CONSTRAINT [FK_StudentAssessmentRegistration_EducationOrganization1];

ALTER TABLE [edfi].[StudentAssessmentRegistration] WITH CHECK CHECK CONSTRAINT [FK_StudentAssessmentRegistration_GradeLevelDescriptor];

ALTER TABLE [edfi].[StudentAssessmentRegistration] WITH CHECK CHECK CONSTRAINT [FK_StudentAssessmentRegistration_PlatformTypeDescriptor];

ALTER TABLE [edfi].[StudentAssessmentRegistration] WITH CHECK CHECK CONSTRAINT [FK_StudentAssessmentRegistration_StudentEducationOrganizationAssessmentAccommodation];

ALTER TABLE [edfi].[StudentAssessmentRegistration] WITH CHECK CHECK CONSTRAINT [FK_StudentAssessmentRegistration_StudentEducationOrganizationAssociation];

ALTER TABLE [edfi].[StudentAssessmentRegistration] WITH CHECK CHECK CONSTRAINT [FK_StudentAssessmentRegistration_StudentSchoolAssociation];

ALTER TABLE [edfi].[StudentAssessmentRegistrationAssessmentAccommodation] WITH CHECK CHECK CONSTRAINT [FK_StudentAssessmentRegistrationAssessmentAccommodation_AccommodationDescriptor];

ALTER TABLE [edfi].[StudentAssessmentRegistrationAssessmentAccommodation] WITH CHECK CHECK CONSTRAINT [FK_StudentAssessmentRegistrationAssessmentAccommodation_StudentAssessmentRegistration];

ALTER TABLE [edfi].[StudentAssessmentRegistrationAssessmentCustomization] WITH CHECK CHECK CONSTRAINT [FK_StudentAssessmentRegistrationAssessmentCustomization_StudentAssessmentRegistration];

ALTER TABLE [edfi].[StudentAssessmentRegistrationBatteryPartAssociation] WITH CHECK CHECK CONSTRAINT [FK_StudentAssessmentRegistrationBatteryPartAssociation_AssessmentBatteryPart];

ALTER TABLE [edfi].[StudentAssessmentRegistrationBatteryPartAssociation] WITH CHECK CHECK CONSTRAINT [FK_StudentAssessmentRegistrationBatteryPartAssociation_StudentAssessmentRegistration];

ALTER TABLE [edfi].[StudentAssessmentRegistrationBatteryPartAssociationAccommodation] WITH CHECK CHECK CONSTRAINT [FK_StudentAssessmentRegistrationBatteryPartAssociationAccommodation_AccommodationDescriptor];

ALTER TABLE [edfi].[StudentAssessmentRegistrationBatteryPartAssociationAccommodation] WITH CHECK CHECK CONSTRAINT [FK_StudentAssessmentRegistrationBatteryPartAssociationAccommodation_StudentAssessmentRegistrationBatteryPartAssociation];

ALTER TABLE [edfi].[StudentDisciplineIncidentBehaviorAssociationWeapon] WITH CHECK CHECK CONSTRAINT [FK_StudentDisciplineIncidentBehaviorAssociationWeapon_StudentDisciplineIncidentBehaviorAssociation];

ALTER TABLE [edfi].[StudentDisciplineIncidentBehaviorAssociationWeapon] WITH CHECK CHECK CONSTRAINT [FK_StudentDisciplineIncidentBehaviorAssociationWeapon_WeaponDescriptor];

ALTER TABLE [edfi].[StudentEducationOrganizationAssessmentAccommodation] WITH CHECK CHECK CONSTRAINT [FK_StudentEducationOrganizationAssessmentAccommodation_Student];

ALTER TABLE [edfi].[StudentEducationOrganizationAssessmentAccommodation] WITH CHECK CHECK CONSTRAINT [FK_StudentEducationOrganizationAssessmentAccommodation_EducationOrganization];

ALTER TABLE [edfi].[StudentEducationOrganizationAssessmentAccommodationGeneralAccommodation] WITH CHECK CHECK CONSTRAINT [FK_StudentEducationOrganizationAssessmentAccommodationGeneralAccommodation_AccommodationDescriptor];

ALTER TABLE [edfi].[StudentEducationOrganizationAssessmentAccommodationGeneralAccommodation] WITH CHECK CHECK CONSTRAINT [FK_StudentEducationOrganizationAssessmentAccommodationGeneralAccommodation_StudentEducationOrganizationAssessmentAccommodation];

ALTER TABLE [edfi].[StudentSection504ProgramAssociation] WITH CHECK CHECK CONSTRAINT [FK_StudentSection504ProgramAssociation_GeneralStudentProgramAssociation];

ALTER TABLE [edfi].[StudentSection504ProgramAssociation] WITH CHECK CHECK CONSTRAINT [FK_StudentSection504ProgramAssociation_Section504DisabilityDescriptor];


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
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (1, N'EdFi.Ods.Standard.Standard.5.2.0.Artifacts.MsSql.Structure.Ods.0010-Schemas.sql', CAST(N'2024-11-27 04:39:10.487' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (2, N'EdFi.Ods.Standard.Standard.5.2.0.Artifacts.MsSql.Structure.Ods.0020-Tables.sql', CAST(N'2024-11-27 04:39:12.330' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (3, N'EdFi.Ods.Standard.Standard.5.2.0.Artifacts.MsSql.Structure.Ods.0030-ForeignKeys.sql', CAST(N'2024-11-27 04:39:14.627' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (4, N'EdFi.Ods.Standard.Standard.5.2.0.Artifacts.MsSql.Structure.Ods.0040-IdColumnUniqueIndexes.sql', CAST(N'2024-11-27 04:39:15.180' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (5, N'EdFi.Ods.Standard.Standard.5.2.0.Artifacts.MsSql.Structure.Ods.0050-ExtendedProperties.sql', CAST(N'2024-11-27 04:39:18.553' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (6, N'EdFi.Ods.Standard.Standard.5.2.0.Artifacts.MsSql.Structure.Ods.1002-AuthViews.sql', CAST(N'2024-11-27 04:39:18.597' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (7, N'EdFi.Ods.Standard.Standard.5.2.0.Artifacts.MsSql.Structure.Ods.1003-CompositesHierarchicalViews.sql', CAST(N'2024-11-27 04:39:18.637' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (8, N'EdFi.Ods.Standard.Standard.5.2.0.Artifacts.MsSql.Structure.Ods.1004-ViewIndexes.sql', CAST(N'2024-11-27 04:39:18.673' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (9, N'EdFi.Ods.Standard.Standard.5.2.0.Artifacts.MsSql.Structure.Ods.1005-AddSQLTypes.sql', CAST(N'2024-11-27 04:39:18.677' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (10, N'EdFi.Ods.Standard.Standard.5.2.0.Artifacts.MsSql.Structure.Ods.1006-AddSQLTypes-BigInt.sql', CAST(N'2024-11-27 04:39:18.680' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (11, N'EdFi.Ods.Standard.Standard.5.2.0.Artifacts.MsSql.Structure.Ods.1020-Interoperability-Extension.sql', CAST(N'2024-11-27 04:39:18.717' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (12, N'EdFi.Ods.Standard.Standard.5.2.0.Artifacts.MsSql.Structure.Ods.1021-OperationalContextView.sql', CAST(N'2024-11-27 04:39:18.730' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (13, N'EdFi.Ods.Standard.Standard.5.2.0.Artifacts.MsSql.Structure.Ods.1022-SetVersion.sql', CAST(N'2024-11-27 04:39:18.733' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (14, N'EdFi.Ods.Standard.Standard.5.2.0.Artifacts.MsSql.Structure.Ods.1030-AddSessionCascadeSupport.sql', CAST(N'2024-11-27 04:39:18.850' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (15, N'EdFi.Ods.Standard.Standard.5.2.0.Artifacts.MsSql.Structure.Ods.1031-Create-SetSchoolYear-stored-procedure.sql', CAST(N'2024-11-27 04:39:18.857' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (16, N'EdFi.Ods.Standard.Standard.5.2.0.Artifacts.MsSql.Structure.Ods.1034-RemoveDatesFromAuthViews.sql', CAST(N'2024-11-27 04:39:18.930' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (17, N'EdFi.Ods.Standard.Standard.5.2.0.Artifacts.MsSql.Structure.Ods.1035-UpdateViewsToGoThroughStudendEdOrgResponsibiltyAssociation.sql', CAST(N'2024-11-27 04:39:18.933' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (18, N'EdFi.Ods.Standard.Standard.5.2.0.Artifacts.MsSql.Structure.Ods.1070-RemoveDatesFromAuthViews.sql', CAST(N'2024-11-27 04:39:19.000' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (19, N'EdFi.Ods.Standard.Standard.5.2.0.Artifacts.MsSql.Structure.Ods.1080-UpdateViewsToGoThroughStudendEdOrgResponsibiltyAssociation.sql', CAST(N'2024-11-27 04:39:19.007' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (20, N'EdFi.Ods.Standard.Standard.5.2.0.Artifacts.MsSql.Structure.Ods.1090-MissingSecurityViews.sql', CAST(N'2024-11-27 04:39:19.010' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (21, N'EdFi.Ods.Standard.Standard.5.2.0.Artifacts.MsSql.Structure.Ods.1100-AddMoreContextToEducationIdentifiersView.sql', CAST(N'2024-11-27 04:39:19.013' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (22, N'EdFi.Ods.Standard.Standard.5.2.0.Artifacts.MsSql.Structure.Ods.1100-CorrectCommunityOrganizationAuthViews.sql', CAST(N'2024-11-27 04:39:19.020' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (23, N'EdFi.Ods.Standard.Standard.5.2.0.Artifacts.MsSql.Structure.Ods.1120-RemoveCompositesHierarchicalViews.sql', CAST(N'2024-11-27 04:39:19.040' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (24, N'EdFi.Ods.Standard.Standard.5.2.0.Artifacts.MsSql.Structure.Ods.1150-UpdatedAuthViewsToPreventDuplicatesFromStaffEdOrgAssignmentsAndEmployments.sql', CAST(N'2024-11-27 04:39:19.047' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (25, N'EdFi.Ods.Standard.Standard.5.2.0.Artifacts.MsSql.Structure.Ods.1160-UpdateVersionTo510.sql', CAST(N'2024-11-27 04:39:19.050' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (26, N'EdFi.Ods.Standard.Standard.5.2.0.Artifacts.MsSql.Structure.Ods.1170-UpdatedAuthViewsToRemoveJoin.sql', CAST(N'2024-11-27 04:39:19.053' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (27, N'EdFi.Ods.Standard.Standard.5.2.0.Artifacts.MsSql.Structure.Ods.1180-Add-OrgDeptId-to-EdOrgIdentifiers.sql', CAST(N'2024-11-27 04:39:19.060' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (28, N'EdFi.Ods.Standard.Standard.5.2.0.Artifacts.MsSql.Structure.Ods.1190-UpdateVersionTo520.sql', CAST(N'2024-11-27 04:39:19.063' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (29, N'EdFi.Ods.Standard.Standard.5.2.0.Artifacts.MsSql.Structure.Ods.1200-AuthViewsSupportOrgDeptId.sql', CAST(N'2024-11-27 04:39:19.077' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (30, N'EdFi.Ods.Standard.Standard.5.2.0.Artifacts.MsSql.Structure.Ods.1290-RemoveAllUnusedAuthorizationViews.sql', CAST(N'2024-11-27 04:39:19.200' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (31, N'EdFi.Ods.Standard.Standard.5.2.0.Artifacts.MsSql.Structure.Ods.1300-CreateEdOrgToEdOrgTable.sql', CAST(N'2024-11-27 04:39:19.203' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (32, N'EdFi.Ods.Standard.Standard.5.2.0.Artifacts.MsSql.Structure.Ods.1302-CreateEdOrgToEdOrgTriggers.sql', CAST(N'2024-11-27 04:39:19.250' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (33, N'EdFi.Ods.Standard.Standard.5.2.0.Artifacts.MsSql.Structure.Ods.1303-AuthViewEducationOrganizationIdToStudentUSI.sql', CAST(N'2024-11-27 04:39:19.250' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (34, N'EdFi.Ods.Standard.Standard.5.2.0.Artifacts.MsSql.Structure.Ods.1304-AuthViewEducationOrganizationIdToContactUSI.sql', CAST(N'2024-11-27 04:39:19.253' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (35, N'EdFi.Ods.Standard.Standard.5.2.0.Artifacts.MsSql.Structure.Ods.1305-AuthViewsEducationOrganizationIdToStaffUSI.sql', CAST(N'2024-11-27 04:39:19.257' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (36, N'EdFi.Ods.Standard.Standard.5.2.0.Artifacts.MsSql.Structure.Ods.1306-AuthViewEducationOrganizationIdToStudentUSIThroughResponsibility.sql', CAST(N'2024-11-27 04:39:19.260' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (37, N'EdFi.Ods.Standard.Standard.5.2.0.Artifacts.MsSql.Structure.Ods.1320-UpdateVersionTo53.sql', CAST(N'2024-11-27 04:39:19.263' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (38, N'EdFi.Ods.Standard.Standard.5.2.0.Artifacts.MsSql.Structure.Ods.1340-AuthViewIndexedEducationOrganizationIdToStudentUSI.sql', CAST(N'2024-11-27 04:39:19.270' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (39, N'EdFi.Ods.Standard.Standard.5.2.0.Artifacts.MsSql.Structure.Ods.1350-AuthViewIndexedEducationOrganizationIdToContactUSI.sql', CAST(N'2024-11-27 04:39:19.277' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (40, N'EdFi.Ods.Standard.Standard.5.2.0.Artifacts.MsSql.Structure.Ods.1360-UpdateVersionTo60.sql', CAST(N'2024-11-27 04:39:19.280' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (41, N'EdFi.Ods.Standard.Standard.5.2.0.Artifacts.MsSql.Structure.Ods.1370-AddEducationOrganizationIdToEducationOrganizationIdIndex.sql', CAST(N'2024-11-27 04:39:19.283' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (42, N'EdFi.Ods.Standard.Standard.5.2.0.Artifacts.MsSql.Structure.Ods.1380-UpdateVersionTo61.sql', CAST(N'2024-11-27 04:39:19.287' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (43, N'EdFi.Ods.Standard.Standard.5.2.0.Artifacts.MsSql.Structure.Ods.1390-UpdateVersionTo70.sql', CAST(N'2024-11-27 04:39:19.290' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (44, N'EdFi.Ods.Standard.Standard.5.2.0.Artifacts.MsSql.Structure.Ods.1400-Alter-EducationOrganizationId-to-bigint.sql', CAST(N'2024-11-27 04:39:19.340' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (45, N'EdFi.Ods.Standard.Standard.5.2.0.Artifacts.MsSql.Structure.Ods.1410-CreateIndex-EdOrgIdsRelationship-AuthPerformance.sql', CAST(N'2024-11-27 04:39:19.717' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (46, N'EdFi.Ods.Standard.Standard.5.2.0.Artifacts.MsSql.Structure.Ods.1420-UpdateEdFiStandardVersionTo50.sql', CAST(N'2024-11-27 04:39:19.720' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (47, N'EdFi.Ods.Standard.Standard.5.2.0.Artifacts.MsSql.Structure.Ods.1430-UpdateVersionTo71.sql', CAST(N'2024-11-27 04:39:19.727' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (48, N'EdFi.Ods.Standard.Standard.5.2.0.Artifacts.MsSql.Structure.Ods.1440-UpdateEdFiStandardVersionTo51.sql', CAST(N'2024-11-27 04:39:19.730' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (49, N'EdFi.Ods.Standard.Standard.5.2.0.Artifacts.MsSql.Structure.Ods.1450-UpdateVersionTo72.sql', CAST(N'2024-11-27 04:39:19.733' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (50, N'EdFi.Ods.Standard.Standard.5.2.0.Artifacts.MsSql.Structure.Ods.1460-AggregateIdColumns.sql', CAST(N'2024-11-27 04:39:20.070' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (51, N'EdFi.Ods.Standard.Standard.5.2.0.Artifacts.MsSql.Structure.Ods.1465-UpdateIndex-EdOrgIdsRelationship-AuthPerformance.sql', CAST(N'2024-11-27 04:39:20.447' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (52, N'EdFi.Ods.Standard.Standard.5.2.0.Artifacts.MsSql.Structure.Ods.1470-UpdateVersionTo73.sql', CAST(N'2024-11-27 04:39:20.450' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (53, N'EdFi.Ods.Standard.Standard.5.2.0.Artifacts.MsSql.Structure.Ods.1480-UpdateEdFiStandardVersionTo52.sql', CAST(N'2024-11-27 04:39:20.453' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (54, N'EdFi.Ods.Standard.Standard.5.2.0.Artifacts.MsSql.Structure.Ods.1490-RemoveClusteredIndexesFromAuthView.sql', CAST(N'2024-11-27 04:39:20.473' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (55, N'EdFi.Ods.Standard.Standard.5.2.0.Artifacts.MsSql.Data.Ods.0020-SchoolYears.sql', CAST(N'2024-11-27 04:39:20.547' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (56, N'Extensions.TPDM.1.1.0.Standard.5.2.0.Artifacts.MsSql.Structure.Ods.0010-EXTENSION-TPDM-Schemas.sql', CAST(N'2024-11-27 04:49:49.310' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (57, N'Extensions.TPDM.1.1.0.Standard.5.2.0.Artifacts.MsSql.Structure.Ods.0020-EXTENSION-TPDM-Tables.sql', CAST(N'2024-11-27 04:49:49.587' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (58, N'Extensions.TPDM.1.1.0.Standard.5.2.0.Artifacts.MsSql.Structure.Ods.0030-EXTENSION-TPDM-ForeignKeys.sql', CAST(N'2024-11-27 04:49:50.030' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (59, N'Extensions.TPDM.1.1.0.Standard.5.2.0.Artifacts.MsSql.Structure.Ods.0040-EXTENSION-TPDM-IdColumnUniqueIndexes.sql', CAST(N'2024-11-27 04:49:50.120' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (60, N'Extensions.TPDM.1.1.0.Standard.5.2.0.Artifacts.MsSql.Structure.Ods.0050-EXTENSION-TPDM-ExtendedProperties.sql', CAST(N'2024-11-27 04:49:50.697' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (61, N'Extensions.TPDM.1.1.0.Standard.5.2.0.Artifacts.MsSql.Structure.Ods.1410-EXTENSION-TPDM-CreateIndex-EdOrgIdsRelationship-AuthPerformance.sql', CAST(N'2024-11-27 04:49:50.767' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (62, N'Extensions.TPDM.1.1.0.Standard.5.2.0.Artifacts.MsSql.Structure.Ods.1460-EXTENSION-TPDM-AggregateIdColumns.sql', CAST(N'2024-11-27 04:49:50.817' AS DateTime))
GO
INSERT [dbo].[DeployJournal] ([Id], [ScriptName], [Applied]) VALUES (63, N'Extensions.TPDM.1.1.0.Standard.5.2.0.Artifacts.MsSql.Structure.Ods.1465-EXTENSION-TPDM-UpdateIndex-EdOrgIdsRelationship-AuthPerformance.sql', CAST(N'2024-11-27 04:49:50.853' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[DeployJournal] OFF 
GO

PRINT N'Update complete.';
GO


