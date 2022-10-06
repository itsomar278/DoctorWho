USE DoctorWho;
--Adding data that applies to the delete query 
INSERT INTO tblCompanion(CompanionName, WhoPayed)
Values 
    ('companion0000','payer00000');
--The Delete query
DELETE FROM tblCompanion
 WHERE CompanionId NOT IN (SELECT EC.CompanionId
                            FROM tblEpisodeCompanion EC);