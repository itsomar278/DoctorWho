USE DoctorWho ;

-- removing not null constraint from DoctorID column in tblEpisode table : 
ALTER TABLE tblEpisode
ALTER COLUMN  DoctorID INT ;
-- Adding data that applies to the update query
INSERT INTO tblEpisode(SeriesNumber,EpisodeNumber,EpisodeType,Title,EpisodeDate,AuthorId,DoctorID,Notes)
VALUES
    (6,1,'horror','E1S1','1-1-1999',1,NULL,'none');
--The Update Query
UPDATE tblEpisode
SET Title = Title + '_CANCELLED '
WHERE DoctorId IS NULL ;