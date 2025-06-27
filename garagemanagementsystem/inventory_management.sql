IF OBJECT_ID('dbo.InventoryTransactions', 'U') IS NOT NULL 
    AND OBJECT_ID('dbo.Inventory', 'U') IS NOT NULL 
    AND OBJECT_ID('dbo.PurchaseOrders', 'U') IS NOT NULL
BEGIN
    -- Drop the trigger if it already exists
    IF EXISTS (SELECT * FROM sys.triggers WHERE name = 'TrackInventory' AND parent_id = OBJECT_ID('dbo.InventoryTransactions'))
    BEGIN
        DROP TRIGGER dbo.TrackInventory;
    END;

    -- Create the trigger
    EXEC('
    CREATE TRIGGER dbo.TrackInventory
    ON dbo.InventoryTransactions
    AFTER INSERT
    AS
    BEGIN
        SET NOCOUNT ON;

        DECLARE @current_stock INT;
        
        -- Your trigger logic here
        
    END;
    ');
END
ELSE
BEGIN
    PRINT 'One or more required tables do not exist';
END;
