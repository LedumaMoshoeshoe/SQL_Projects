SELECT PhoneNumber
FROM Supplier
WHERE SupplierID IN (
    SELECT SupplierID
    FROM Product
    GROUP BY SupplierID
    HAVING COUNT(*) = SUM(CASE WHEN Mileage = 0 THEN 1 ELSE 0 END)
);
