USE [PremierLeague]
GO

-- Insert the first row
INSERT INTO [dbo].[Games]
           ([GameID]
           ,[DatePlayed]
           ,[HomeClubID]
           ,[AwayClubID]
           ,[HomeClubScore]
           ,[AwayClubScore])
     VALUES
           (1,
           '2023-09-10',
           1,
           2,
           2,
           1);

-- Insert the second row
INSERT INTO [dbo].[Games]
           ([GameID]
           ,[DatePlayed]
           ,[HomeClubID]
           ,[AwayClubID]
           ,[HomeClubScore]
           ,[AwayClubScore])
     VALUES
           (2,
           '2023-09-11',
           3,
           4,
           0,
           1);
