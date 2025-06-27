USE [PremierLeague]
GO

INSERT INTO [dbo].[Players]
           ([PlayerID]
           ,[FirstName]
           ,[LastName]
           ,[ClubID]
           ,[MarketValue])
     VALUES
           (1
           ,'Cristiano'
           ,'Ronaldo'
           ,1
           ,100000000.00),
           (2
           ,'Mohamed'
           ,'Salah'
           ,2
           ,90000000.00),
           (3
           ,'N''Golo'
           ,'Kanté'
           ,3
           ,80000000.00)
GO
