-- functions were drop and recreated cause return type isnt the same so we cannot alter them 
-- i hate dealing with string in sql :)
DROP FUNCTION fnCompanions ;

CREATE FUNCTION fnCompanions(@EpisodeId INT)
RETURNS VARCHAR(MAX)
AS
BEGIN
Declare @output AS VARCHAR(MAX)
     SELECT @output = CONCAT( 'Companion No ' ,
	                          CAST(ROW_NUMBER() OVER(order by C.CompanionId) AS varchar ) 
							  , ' : '
							 , C.CompanionName 
							 , ' , '
							 , @output)
	 FROM tblCompanion C
	 INNER JOIN tblEpisodeCompanion AS EC
	 ON c.CompanionId = EC.CompanionId
	 WHERE @EpisodeId = EC.EpisodeId
RETURN @Output; 
END;