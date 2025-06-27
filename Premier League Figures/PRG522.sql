USE PremierLeague
GO

CREATE TABLE Clubs (
    ClubID INT PRIMARY KEY,
    ClubName VARCHAR(255) NOT NULL,
    FoundedYear INT,
    StadiumName VARCHAR(255)
);

CREATE TABLE Players (
    PlayerID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    ClubID INT,
    MarketValue DECIMAL(10, 2),
    FOREIGN KEY (ClubID) REFERENCES Clubs(ClubID)
);

CREATE TABLE Games (
    GameID INT PRIMARY KEY,
    DatePlayed DATE NOT NULL,
    HomeClubID INT,
    AwayClubID INT,
    HomeClubScore INT,
    AwayClubScore INT,
    FOREIGN KEY (HomeClubID) REFERENCES Clubs(ClubID),
    FOREIGN KEY (AwayClubID) REFERENCES Clubs(ClubID)
);

CREATE TABLE GameResults (
    ResultID INT PRIMARY KEY,
    GameID INT,
    PlayerID INT,
    GoalsScored INT,
    FOREIGN KEY (GameID) REFERENCES Games(GameID),
    FOREIGN KEY (PlayerID) REFERENCES Players(PlayerID)
);
