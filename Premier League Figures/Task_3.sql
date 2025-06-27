SELECT TOP 10
    P.FirstName,
    P.LastName,
    C.ClubName,
    P.MarketValue
FROM
    Players P
INNER JOIN
    Clubs C ON P.ClubID = C.ClubID
ORDER BY
    P.MarketValue DESC;
