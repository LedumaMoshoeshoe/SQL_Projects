CREATE VIEW Cars2022WithSupplier AS
SELECT p.Make, p.Model, p.Year, s.SupplierName
FROM Product p
JOIN Supplier s ON p.SupplierID = s.SupplierID
WHERE p.Year = 2022;
