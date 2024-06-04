-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

ALTER TABLE samplealternativeeducationprogram.AlternativeEducationEligibilityReasonDescriptor ADD CONSTRAINT FK_683552_Descriptor FOREIGN KEY (AlternativeEducationEligibilityReasonDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE samplealternativeeducationprogram.StudentAlternativeEducationProgramAssociation ADD CONSTRAINT FK_62b8bf_AlternativeEducationEligibilityReasonDescriptor FOREIGN KEY (AlternativeEducationEligibilityReasonDescriptorId)
REFERENCES samplealternativeeducationprogram.AlternativeEducationEligibilityReasonDescriptor (AlternativeEducationEligibilityReasonDescriptorId)
;

CREATE INDEX FK_62b8bf_AlternativeEducationEligibilityReasonDescriptor
ON samplealternativeeducationprogram.StudentAlternativeEducationProgramAssociation (AlternativeEducationEligibilityReasonDescriptorId ASC);

ALTER TABLE samplealternativeeducationprogram.StudentAlternativeEducationProgramAssociation ADD CONSTRAINT FK_62b8bf_GeneralStudentProgramAssociation FOREIGN KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
REFERENCES edfi.GeneralStudentProgramAssociation (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE samplealternativeeducationprogram.StudentAlternativeEducationProgramAssociationMeetingTime ADD CONSTRAINT FK_a93d0b_StudentAlternativeEducationProgramAssociation FOREIGN KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
REFERENCES samplealternativeeducationprogram.StudentAlternativeEducationProgramAssociation (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
ON DELETE CASCADE
;
