-- Show all books
SELECT * FROM Books;

-- Show all members
SELECT * FROM Members;

-- Show all borrowed books
SELECT * FROM BorrowedBooks;

-- List all programming books
SELECT *
FROM Books
WHERE Category = 'Programming';

-- Count books in each category
SELECT Category, COUNT(*)
FROM Books
GROUP BY Category;

-- Show all borrowed books with member names
SELECT
    Members.Name,
    BorrowedBooks.BookID,
    BorrowedBooks.BorrowDate
FROM BorrowedBooks
INNER JOIN Members
ON BorrowedBooks.MemberID = Members.MemberID;

-- Show borrowed book titles with member names
SELECT
    Books.Title,
    Members.Name,
    BorrowedBooks.BorrowDate
FROM BorrowedBooks
INNER JOIN Books
ON BorrowedBooks.BookID = Books.BookID
INNER JOIN Members
ON BorrowedBooks.MemberID = Members.MemberID;

-- Number of books borrowed by each member
SELECT
    Members.Name,
    COUNT(*) AS BooksBorrowed
FROM BorrowedBooks
INNER JOIN Members
ON BorrowedBooks.MemberID = Members.MemberID
GROUP BY Members.Name;

-- Sort borrowed books by date
SELECT *
FROM BorrowedBooks
ORDER BY BorrowDate DESC;
