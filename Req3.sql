USE DoctorWho ;

--forget to add PK for tblEpisodeCompanion here is the sol  : 
--DROP TABLE tbleEpisodeCompanion;
--CREATE TABLE tblEpisodeCompanion ( 
--EpisodeId INT NOT NULL FOREIGN KEY REFERENCES tblEpisode (EpisodeId) , 
--CompanionId INT NOT NULL FOREIGN KEY REFERENCES tblCompanion(CompanionId),
--PRIMARY KEY (EpisodeId,CompanionId)
--);

INSERT INTO tblAuthor(AutorName)
VALUES 
	('author1'),
    ('author2'),
    ('author3'),
	('author4'),
	('author5');

INSERT INTO tblCompanion(CompanionName, WhoPayed)
Values 
    ('companion1','payer1'),
    ('companion2','payer2'),
    ('companion3','payer3'),
	('companion4','payer4'),
	('companion5','payer5');

INSERT INTO tblDoctor(DoctorNumber, DoctorName, BirthDate, FirstEpisodeDate, LastEpisodeDate)
VALUES 
    (11,'doctor1','1-1-1999','1-1-2000','1-1-2010'),
	(22,'doctor2','2-2-1999','2-2-2000','2-2-2010'),
	(33 ,'doctor3','3-3-1999','3-3-2000','3-3-2010'),
	(44 ,'doctor4','4-4-1999','4-4-2000','4-4-2010'),
	(55 ,'doctor5','5-5-1999','5-5-2000','5-5-2010');

INSERT INTO tblEnemy(EnemyName , Descreption)
VALUES 
	('enemy1' , 'evil' ) , 
	('enemy2' , 'evill' ) , 
	('enemy3' , 'evilll' ) , 
	('enemy4' , 'evillll' ) , 
	('enemy5' , 'evilllll' ) ;

INSERT INTO tblEpisode(SeriesNumber,EpisodeNumber,EpisodeType,Title,EpisodeDate,AuthorId,DoctorID,Notes)
VALUES 
    (1,1,'horror','E1S1','1-1-1999',1,1,'none'),
	(2,1,'comedy','E1S1','2-2-1999',2,2,'none'),
	(3,1,'action','E1S1','3-3-1999',3,3,'none'),
	(4,1,'romance','E1S1','4-4-1999',4,4,'none'),
	(5,1,'Sci-Fi','E1S1','5-5-1999',5,5,'none');

INSERT INTO tblEpisodeEnemy(EnemyId,EpisodeId)
VALUES 
    (1,1),
	(2,2),
	(3,3),
	(4,4),
	(5,5);

INSERT INTO tblEpisodeCompanion(EpisodeId,CompanionId)
VALUES 
    (1,1),
	(2,2),
	(3,3),
	(4,4),
	(5,5);