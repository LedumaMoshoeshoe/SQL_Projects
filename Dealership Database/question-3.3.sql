CREATE VIEW AmericanAutosCars AS
SELECT p.*
FROM Product p
JOIN Supplier s ON p.SupplierID = s.SupplierID
WHERE s.SupplierName = 'American Autos';
