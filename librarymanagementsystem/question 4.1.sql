DECLARE @currentDate DATE = GETDATE();
DECLARE @overdueFineRate DECIMAL(10, 2) = 0.05; 

SELECT
    l.LoanID,  -- Correcting the column reference with table alias 'l'
    CASE
        WHEN @currentDate > l.DueDate THEN DATEDIFF(day, l.DueDate, @currentDate) * @overdueFineRate
        ELSE 0
    END AS overdue_fine
FROM
    loans l
WHERE
    l.Returned IS NULL OR l.Returned = '';

