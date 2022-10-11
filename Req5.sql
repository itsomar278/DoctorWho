USE DoctorWho;
--Adding data that applies to the delete query 
INSERT INTO tblCompanion(CompanionName, WhoPayed)
Values 
    ('companion0000','payer00000');
--The Delete query with joins
delete C
from tblCompanion C
left join tblEpisodeCompanion EC 
ON C.CompanionId = EC.CompanionId
where EC.CompanionId is null

