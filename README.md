# Library Management SQL

A beginner-friendly SQL project built with SQLite to practice relational database design using multiple tables using 'PRIMARY KEY', 'FOREIGN KEY' and `INNER JOIN`.

## Tech Stack

* SQL
* SQLite
* DB Browser for SQLite
* Git & GitHub

## Features

* Create a relational database
* Design multiple related tables
* Use 'PRIMARY KEY' and 'FOREIGN KEY'
* Insert sample library data
* Retrieve data using `INNER JOIN`
* Perform basic filtering and aggregation

## Database Schema

* **Books** – Stores book information
* **Members** – Stores library member details
* **BorrowedBooks** – Tracks which member borrowed which book

## Project Structure

```text
library-management-sql/
├── README.md
├── library_database.db
├── schema.sql
├── data.sql
├── queries.sql
└── screenshots/
```

## Sample Queries

```sql
-- Show all books
SELECT * FROM Books;

-- Show all members
SELECT * FROM Members;

-- List all programming books
SELECT *
FROM Books
WHERE Category = 'Programming';

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
```

## Learning Outcomes

* Relational database design
* Primary Keys & Foreign Keys
* One-to-many relationships
* `INNER JOIN`
* Data filtering and aggregation
* SQL query writing
