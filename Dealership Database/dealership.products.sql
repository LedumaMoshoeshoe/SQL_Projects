CREATE TABLE Products (
    StockNumber CHAR(3) PRIMARY KEY,
    Make CHAR(50),
    Model CHAR(50),
    Year INT(4),
    Color CHAR(20),
    Mileage INT(10), 
    Transmission CHAR(20),
    Price_R DECIMAL(10, 2), 
    SupplierID CHAR(2),
    FOREIGN KEY (SupplierID) REFERENCES Supplier(SupplierID) ON DELETE NO ACTION
);
