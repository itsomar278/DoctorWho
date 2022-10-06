CREATE VIEW [viewEpisodes] AS 
SELECT A.AutorName AS AuthorName , 
       D.DoctorName AS DoctorName , 
	   dbo.fnCompanions(E.EpisodeId) AS Companions , 
	   dbo.fnEnemies(E.EpisodeId) AS Enemies 
	   FROM tblEpisode E 
	   INNER JOIN tblDoctor D 
	   ON D.DoctorId = E.DoctorID
	   INNER JOIN tblAuthor A 
	   ON E.AuthorId = A.AuthorId