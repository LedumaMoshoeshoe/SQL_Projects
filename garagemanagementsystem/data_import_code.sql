-- Connect to the SQL Server database
USE garagemanagementsystem;
GO

-- Create a temporary table to hold the Excel data
CREATE TABLE TempExcelData (
    Name NVARCHAR(MAX),
    Address NVARCHAR(MAX),
    Phone_Number NVARCHAR(MAX),
    Loyalty_Tier NVARCHAR(MAX),
    Contact_Preference NVARCHAR(MAX),
    License_Plate NVARCHAR(MAX),
    Make NVARCHAR(MAX),
    Model NVARCHAR(MAX),
    Year NVARCHAR(MAX),
    VIN_Number NVARCHAR(MAX),
    Mileage NVARCHAR(MAX),
    Fuel_Type NVARCHAR(MAX)
);

-- Assuming the Excel data is loaded into the temporary table
-- Start transaction
BEGIN TRANSACTION;

-- Declare variables
DECLARE @customer_id INT;
DECLARE @row_count INT;
DECLARE @current_row INT = 1;

-- Get the total row count
SELECT @row_count = COUNT(*) FROM TempExcelData;

-- Loop through each row in #TempExcelData
WHILE @current_row <= @row_count
BEGIN
    BEGIN TRY
        -- Insert into Customers table
        INSERT INTO Customers (Name, Address, PhoneNumber, LoyaltyTier, ContactPreference) 
        SELECT Name, Address, Phone_Number, Loyalty_Tier, Contact_Preference
        FROM TempExcelData
        WHERE ROW_NUMBER = @current_row;
                
        -- Get the auto-generated CustomerID
        SET @customer_id = SCOPE_IDENTITY();
        
        -- Insert into Vehicles table
        INSERT INTO Vehicles (CustomerID, LicensePlate, Make, Model, Year, VINNumber, Mileage, FuelType) 
        SELECT @customer_id, License_Plate, Make, Model, Year, VIN_Number, Mileage, Fuel_Type
        FROM TempExcelData
        WHERE ROW_NUMBER = @current_row;
                
        SET @current_row = @current_row + 1;
    END TRY
    BEGIN CATCH
        -- Rollback the transaction if an error occurs
        IF @@TRANCOUNT > 0
            ROLLBACK TRANSACTION;

        -- Print the error message
        PRINT 'Error inserting data: ' + ERROR_MESSAGE();

        -- Exit the loop
        BREAK;
    END CATCH;
END;

-- Commit the transaction
IF @@TRANCOUNT > 0
    COMMIT TRANSACTION;

-- Drop the temporary table
DROP TABLE TempExcelData;
