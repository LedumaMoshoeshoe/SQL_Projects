SELECT Contact
FROM Supplier
WHERE SupplierID IN (SELECT SupplierID FROM Product WHERE Price > 500000);
