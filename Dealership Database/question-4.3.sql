SELECT DISTINCT P1.Make, P1.Model
FROM Product P1
INNER JOIN Product P2 ON P1.Make = P2.Make AND P1.Model = P2.Model
WHERE P1.SupplierID = 'S1' AND P2.Transmission = 'Automatic';
