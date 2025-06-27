SELECT Make, Model, Year, Transmission
FROM Product
WHERE Transmission = 'Automatic'
UNION
SELECT Make, Model, Year, Transmission
FROM Product
WHERE Year = 2022;
