CREATE PROCEDURE spSummariseEpisodes   
   @HighestEnemies VARCHAR(MAX) OUTPUT,  
   @HighestCompanions VARCHAR(MAX) OUTPUT  
AS  
BEGIN  
Select TOP 3 @HighestEnemies = CONCAT(E.EnemyName , '   ,   ' ,@HighestEnemies)
FROM tblEpisodeEnemy EE
INNER JOIN tblEnemy E
ON E.EnemyId = EE.EnemyId
GROUP BY E.EnemyName
Order BY COUNT(EE.EnemyId) DESC
Select TOP 3 @HighestCompanions = CONCAT(C.CompanionName , '   ,   ' ,@HighestCompanions)
FROM tblCompanion C
INNER JOIN tblEpisodeCompanion EC
ON C.CompanionId = EC.CompanionId
GROUP BY C.CompanionName
Order BY COUNT(EC.CompanionId) DESC
END

