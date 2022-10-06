CREATE Function fnEnemies (@EpisodeId INT)
RETURNS @Enemies TABLE 
(
EnemyName VARCHAR(255)
)
As
BEGIN
    INSERT INTO @Enemies
     SELECT EnemyName 
	 FROM tblEnemy E
	 INNER JOIN tblEpisodeEnemy AS EE
	 ON E.EnemyId = EE.EnemyId
	 WHERE @EpisodeId = EE.EpisodeId
RETURN; 
END;

