CREATE DATABASE LibraryManagementSystem;
GO

USE LibraryManagementSystem;
GO

CREATE TABLE Authors (
    AuthorID INT PRIMARY KEY,
    AuthorName VARCHAR(100)
);

CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    Title VARCHAR(200),
    AuthorID INT,
    ISBN VARCHAR(20),
    Genre VARCHAR(50),
    CONSTRAINT FK_Authors_Books FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
);

CREATE TABLE Borrowers (
    BorrowerID INT PRIMARY KEY,
    BorrowerName VARCHAR(100),
    ContactNumber VARCHAR(15)
);

-- Create a Transactions table
CREATE TABLE Transactions (
    TransactionID INT PRIMARY KEY,
    BookID INT,
    TransactionType VARCHAR(20),
    CONSTRAINT FK_Transactions_Books FOREIGN KEY (BookID) REFERENCES Books(BookID)
);

CREATE TABLE Loans (
    LoanID INT PRIMARY KEY,
    BookID INT,
    BorrowerID INT,
    LoanDate DATE,
    DueDate DATE,
    Returned BIT,
    CONSTRAINT FK_Books_Loans FOREIGN KEY (BookID) REFERENCES Books(BookID),
    CONSTRAINT FK_Borrowers_Loans FOREIGN KEY (BorrowerID) REFERENCES Borrowers(BorrowerID)
);
