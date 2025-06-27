SELECT Price
FROM Product
WHERE SupplierID IN (SELECT SupplierID FROM Supplier WHERE Country = 'USA');
