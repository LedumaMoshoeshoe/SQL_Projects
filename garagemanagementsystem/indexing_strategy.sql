-- Indexes for frequently used columns
CREATE INDEX idx_CustomerID ON Customers (CustomerID);
CREATE INDEX idx_VehicleID ON Vehicles (VehicleID);
CREATE INDEX idx_ServiceID ON Services (ServiceID);
CREATE INDEX idx_Date ON Invoices (Date);
CREATE INDEX idx_LicensePlate ON Vehicles (LicensePlate);
