--Inserting new authors into the Authors table
INSERT INTO Authors (AuthorID) VALUES
(6),
(7),
(8),
(9),
(10);

-- Inserting new records into Books table
INSERT INTO Books (BookID, Title, AuthorID, ISBN, Genre) VALUES
(6, 'The Hobbit', 6, '9780547928227', 'Fantasy'),
(7, 'Animal Farm', 7, '9780451526342', 'Satire'),
(8, 'The Catcher in the Rye', 8, '9780316769488', 'Coming-of-age'),
(9, 'Pride and Prejudice', 9, '9780141199078', 'Romance'),
(10, 'Brave New World', 10, '9780060850524', 'Science Fiction');
