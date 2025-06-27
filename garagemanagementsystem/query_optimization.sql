SELECT c.Name, c.Address, i.Date, i.Total
FROM Customers c
JOIN Invoices i ON c.CustomerID = i.CustomerID
WHERE i.Date = (SELECT MAX(Date) FROM Invoices WHERE CustomerID = c.CustomerID);

SELECT c.Name, c.Address, i.Date, i.Total
FROM Customers c
JOIN (
    SELECT CustomerID, MAX(Date) AS MaxDate
    FROM Invoices
    GROUP BY CustomerID
) AS latest_invoice ON c.CustomerID = latest_invoice.CustomerID
JOIN Invoices i ON latest_invoice.CustomerID = i.CustomerID AND latest_invoice.MaxDate = i.Date;
