CREATE PROCEDURE GenerateInvoice (
    @customer_id INT,
    @vehicle_id INT,
    @service_id INT,
    @payment_method VARCHAR(100),
    @technician VARCHAR(100)
)
AS
BEGIN
    DECLARE @total DECIMAL(10, 2);
    
    -- Calculate total based on service price
    SELECT @total = Price FROM Services WHERE ServiceID = @service_id;
    
    -- Insert invoice into Invoices table
    INSERT INTO Invoices (CustomerID, VehicleID, ServiceID, Date, PaymentMethod, Total, Technician)
    VALUES (@customer_id, @vehicle_id, @service_id, GETDATE(), @payment_method, @total, @technician);
    
    -- Output success message
    SELECT SCOPE_IDENTITY() AS InvoiceID;
END;
