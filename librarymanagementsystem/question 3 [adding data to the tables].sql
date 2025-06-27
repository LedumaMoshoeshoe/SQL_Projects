
-- Inserting sample data into tables
INSERT INTO Authors (AuthorID, AuthorName) VALUES
(1, 'J.K. Rowling'),
(2, 'George Orwell'),
(3, 'Harper Lee'),
(4, 'J.R.R. Tolkien');

INSERT INTO Books (BookID, Title, AuthorID, ISBN, Genre) VALUES
(1, 'Harry Potter and the Philosopher''s Stone', 1, '9780747532743', 'Fantasy'),
(2, '1984', 2, '9780451524935', 'Dystopian'),
(3, 'To Kill a Mockingbird', 3, '9780061120084', 'Classic'),
(4, 'The Lord of the Rings', 4, '9780261102385', 'Fantasy');

INSERT INTO Borrowers (BorrowerID, BorrowerName, ContactNumber) VALUES
(1, 'Leduma Moshoeshoe', '079 903 1269'),
(2, 'Degrotias Phiri', '068 206 2799');

INSERT INTO Loans (LoanID, BookID, BorrowerID, LoanDate, DueDate, Returned) VALUES
(1, 1, 1, '2024-04-01', '2024-04-15', 0),
(2, 2, 2, '2024-03-15', '2024-03-29', 1),
(3, 3, 1, '2024-04-05', '2024-04-19', 0);


-- Inserting sample data into tables for Library Management System

-- Inserting authors with conditional check to avoid duplicates
IF NOT EXISTS (SELECT 1 FROM Authors WHERE AuthorID = 4)
    INSERT INTO Authors (AuthorID, AuthorName) VALUES (4, 'James Clear');

IF NOT EXISTS (SELECT 1 FROM Authors WHERE AuthorID = 5)
    INSERT INTO Authors (AuthorID, AuthorName) VALUES (5, 'Trevor Noah');

-- Inserting books with conditional check to avoid duplicates
IF NOT EXISTS (SELECT 1 FROM Books WHERE BookID = 4)
    INSERT INTO Books (BookID, Title, AuthorID, ISBN, Genre) VALUES (4, 'Atomic Habits', 4, '9780735211292', 'Self-Help');

IF NOT EXISTS (SELECT 1 FROM Books WHERE BookID = 5)
    INSERT INTO Books (BookID, Title, AuthorID, ISBN, Genre) VALUES (5, 'Born a Crime', 5, '9780399588198', 'Autobiography');

-- Inserting borrowers with conditional check to avoid duplicates
IF NOT EXISTS (SELECT 1 FROM Borrowers WHERE BorrowerID = 4)
    INSERT INTO Borrowers (BorrowerID, BorrowerName, ContactNumber) VALUES (4, 'Oscar Mbongeni', '074 554 5877');

IF NOT EXISTS (SELECT 1 FROM Borrowers WHERE BorrowerID = 5)
    INSERT INTO Borrowers (BorrowerID, BorrowerName, ContactNumber) VALUES (5, 'Noxolo Mshegu', '078 855 7477');

-- Inserting loans (assuming LoanID is unique)
INSERT INTO Loans (LoanID, BookID, BorrowerID, LoanDate, DueDate, Returned) VALUES
(4, 4, 4, '2024-04-01', '2024-04-15', 0),
(5, 5, 5, '2024-03-15', '2024-03-29', 0);
