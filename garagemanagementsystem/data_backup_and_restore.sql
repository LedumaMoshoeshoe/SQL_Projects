DECLARE @DB_NAME NVARCHAR(100) = 'garagemanagementsystem'
DECLARE @BACKUP_DIR NVARCHAR(500) = 'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\Backup' -- Update this path with the correct directory
DECLARE @BACKUP_FILE NVARCHAR(500)

DECLARE @TimeStamp NVARCHAR(50)
SET @TimeStamp = REPLACE(REPLACE(REPLACE(CONVERT(NVARCHAR(30), GETDATE(), 120), '-', ''), ' ', '_'), ':', '')

SET @BACKUP_FILE = @BACKUP_DIR + '\backup_' + @TimeStamp + '.bak'

BACKUP DATABASE @DB_NAME TO DISK = @BACKUP_FILE

IF @@ERROR = 0
    PRINT 'Backup successful: ' + @BACKUP_FILE
ELSE
    PRINT 'Backup failed'
