-- functions were drop and recreated cause return type isnt the same so we cannot alter them 
-- i hate dealing with string in sql :)
DROP FUNCTION fnEnemies ;
CREATE FUNCTION fnEnemies (@EpisodeId INT)
RETURNS VARCHAR(MAX)
AS
BEGIN
Declare @output AS VARCHAR(MAX)
    SELECT @output = CONCAT( 'Enemy No ' ,
	                          CAST(ROW_NUMBER() OVER(order by E.EnemyId) AS varchar ) 
							  , ' : '
							 , E.EnemyName
							 , ' , '
							 , @output)
	 FROM tblEnemy E
	 INNER JOIN tblEpisodeEnemy AS EE
	 ON E.EnemyId = EE.EnemyId
	 WHERE @EpisodeId = EE.EpisodeId
RETURN @Output; 
END;


