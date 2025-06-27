SET IDENTITY_INSERT Invoices ON;

INSERT INTO Customers (CustomerID, Name, Address, PhoneNumber, LoyaltyTier, ContactPreference)
VALUES
    (1, 'John Doe', '123 Main St, Pretoria', '555-1234', 'Silver', 'Email'),
    (2, 'Jane Smith', '456 Elm St, Centurion', '555-5678', 'Gold', 'SMS'),
    (3, 'Bob Jones', '789 Maple Dr, Johannesburg', '555-9012', 'Bronze', 'Both');

INSERT INTO Vehicles (VehicleID, CustomerID, LicensePlate, Make, Model, Year, VINNumber, Mileage, FuelType)
VALUES
    (1, 1, 'ABC123', 'Toyota', 'Camry', 2018, 'JTDBE41E7K3000001', 50000, 'Petrol'),
    (2, 2, 'DEF456', 'Honda', 'Civic', 2020, 'JHMEGK7A3J0000002', 30000, 'Diesel'),
    (3, 3, 'GHI789', 'Ford', 'F-150', 2022, '3FTJWLR33K2MDOO693', 10000, 'Petrol');

INSERT INTO Services (ServiceID, Description, Price, LabourHrs, WarrantyMonths)
VALUES
    (1, 'Oil Change', 450.00, 1, 3),
    (2, 'Tire Rotation', 300.00, 0.5, 1),
    (3, 'Brake Pad Replacement', 800.00, 2, 6);

INSERT INTO Invoices (InvoiceID, CustomerID, VehicleID, ServiceID, Date, PaymentMethod, Total, Technician)
VALUES
    (1, 1, 1, 1, '2023-11-21', 'Credit Card', 540.00, 'John Smith'),
    (2, 2, 2, 2, '2023-12-15', 'Cash', 360.00, NULL);

SET IDENTITY_INSERT Invoices OFF;
