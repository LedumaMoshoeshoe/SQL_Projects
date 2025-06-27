USE garagemanagementsystem;
GO

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(100),
    Address VARCHAR(255),
    PhoneNumber VARCHAR(15),
    LoyaltyTier VARCHAR(10),
    ContactPreference VARCHAR(10)
);

CREATE TABLE Vehicles (
    VehicleID INT PRIMARY KEY,
    CustomerID INT,
    LicensePlate VARCHAR(20),
    Make VARCHAR(50),
    Model VARCHAR(50),
    Year INT,
    VINNumber VARCHAR(50),
    Mileage INT,
    FuelType VARCHAR(20),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE Services (
    ServiceID INT PRIMARY KEY,
    Description VARCHAR(255),
    Price DECIMAL(10, 2),
    LabourHrs DECIMAL(5, 2),
    WarrantyMonths INT
);

CREATE TABLE Invoices (
    InvoiceID INT PRIMARY KEY,
    CustomerID INT,
    VehicleID INT,
    ServiceID INT,
    Date DATE,
    PaymentMethod VARCHAR(20),
    Total DECIMAL(10, 2),
    Technician VARCHAR(100),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (VehicleID) REFERENCES Vehicles(VehicleID),
    FOREIGN KEY (ServiceID) REFERENCES Services(ServiceID)
);
