CREATE Function fnCompanions(@EpisodeId INT)
RETURNS @Companion TABLE 
(
CompanionName VARCHAR(255)
)
As
BEGIN
    INSERT INTO @Companion
     SELECT CompanionName 
	 FROM tblCompanion C
	 INNER JOIN tblEpisodeCompanion AS EC
	 ON c.CompanionId = EC.CompanionId
	 WHERE @EpisodeId = EC.EpisodeId
RETURN; 
END;
