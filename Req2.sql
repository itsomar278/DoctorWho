USE DoctorWho ;
CREATE TABLE tblCompanion (
CompanionId INT IDENTITY(1,1) PRIMARY KEY ,
CompanionName VARCHAR(255) NOT NULL ,
WhoPayed VARCHAR(255) NOT NULL 
);

CREATE TABLE tblDoctor (
DoctorId INT IDENTITY(1,1) PRIMARY KEY , 
DoctorNumber INT NOT NULL ,
DoctorName VARCHAR(255) NOT NULL , 
BirthDate Date , 
FirstEpisodeDate Date , 
LastEpisodeDate Date 
);

CREATE TABLE tblAuthor (
AuthorId INT IDENTITY(1,1) PRIMARY KEY ,
AutorName VARCHAR(255) NOT NULL 
);

CREATE TABLE tblEnemy ( 
EnemyId INT IDENTITY(1,1) PRIMARY KEY ,
EnemyName VARCHAR(255) NOT NULL , 
Descreption VARCHAR(MAX) ,
);

Create Table tblEpisode 
(
EpisodeId INT IDENTITY(1,1) PRIMARY KEY,
SeriesNumber INT NOT NULL UNIQUE ,
EpisodeNumber INT NOT NULL , 
EpisodeType VARCHAR(255) , 
Title VARCHAR(255) , 
EpisodeDate DATE NOT NULL , 
AuthorId INT NOT NULL FOREIGN KEY REFERENCES tblAuthor (AuthorId) ,
DoctorID INT NOT NULL FOREIGN KEY REFERENCES tblDoctor (DoctorId) , 
Notes VARCHAR(MAX) 
);

CREATE TABLE tblEpisodeEnemy (
EpisodeId INT NOT NULL FOREIGN KEY REFERENCES tblEpisode (EpisodeId) , 
EnemyId INT NOT NULL FOREIGN KEY REFERENCES tblEnemy (EnemyId) , 
PRIMARY KEY (EpisodeId,EnemyId) 
);

CREATE TABLE tbleEpisodeCompanion ( 
EpisodeId INT NOT NULL FOREIGN KEY REFERENCES tblEpisode (EpisodeId) , 
CompanionId INT NOT NULL FOREIGN KEY REFERENCES tblCompanion(CompanionId)
);