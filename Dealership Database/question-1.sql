CREATE DATABASE dealership;

CREATE TABLE Supplier (
    SupplierID VARCHAR(2) PRIMARY KEY,
    SupplierName VARCHAR(50),
    Country VARCHAR(50),
    Contact VARCHAR(50),
    PhoneNumber VARCHAR(15)
);

CREATE TABLE Product (
    StockNumber VARCHAR(5) PRIMARY KEY,
    Make VARCHAR(50),
    Model VARCHAR(50),
    Year INT,
    Color VARCHAR(50),
    Mileage INT,
    Transmission VARCHAR(50),
    Price DECIMAL(10, 2),
    SupplierID VARCHAR(2),
    FOREIGN KEY (SupplierID) REFERENCES Supplier(SupplierID) ON DELETE NO ACTION
);

-- Insert into the Supplier table
INSERT INTO Supplier (SupplierID, SupplierName, Country, Contact, PhoneNumber)
VALUES
    ('S1', 'American Autos', 'USA', 'John Smith', '555-1234'),
    ('S2', 'Asian Car Masters', 'Japan', 'Yuki Tanaka', '555-5678'),
    ('S3', 'Electric Innovations', 'USA', 'Emily Johnson', '555-9101'),
    ('S4', 'European Luxury', 'Germany', 'Hans Müller', '555-1122');

-- Insert into the Product table
INSERT INTO Product (StockNumber, Make, Model, Year, Color, Mileage, Transmission, Price, SupplierID)
VALUES
    ('001', 'Ford', 'F-150', 2022, 'Blue', 0, 'Automatic', 5000.00, 'S1'),
    ('002', 'Toyota', 'Camry', 2021, 'Black', 12000, 'Manual', 2800.00, 'S2'),
    ('003', 'Tesla', 'Model 3', 2023, 'White', 0, 'Automatic', 4500.00, 'S3'),
    ('004', 'Chevrolet', 'Silverado', 2020, 'Red', 30000, 'Automatic', 3500.00, 'S1'),
    ('005', 'Honda', 'Civic', 2019, 'Silver', 20000, 'Manual', 1800.00, 'S2'),
    ('006', 'BMW', '3 Series', 2022, 'Black', 0, 'Automatic', 5500.00, 'S4'),
    ('007', 'Audi', 'A4', 2021, 'White', 5000, 'Automatic', 4000.00, 'S4'),
    ('008', 'Nissan', 'Altima', 2018, 'Blue', 50000, 'Manual', 1500.00, 'S2'),
    ('009', 'Mercedes', 'C-Class', 2022, 'Grey', 0, 'Automatic', 6000.00, 'S4'),
    ('010', 'Subaru', 'Outback', 2020, 'Green', 25000, 'Manual', 2700.00, 'S1');
