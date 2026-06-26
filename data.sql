-- Insert books
INSERT INTO Books (Title, Author, Category)
VALUES
('Clean Code', 'Robert C. Martin', 'Programming'),
('Atomic Habits', 'James Clear', 'Self Help'),
('The Pragmatic Programmer', 'Andrew Hunt', 'Programming'),
('Deep Work', 'Cal Newport', 'Productivity'),
('Rich Dad Poor Dad', 'Robert Kiyosaki', 'Finance');

-- Insert members
INSERT INTO Members (Name, City)
VALUES
('Alice', 'Chennai'),
('Bob', 'Bangalore'),
('Charlie', 'Hyderabad'),
('David', 'Mumbai'),
('Eva', 'Delhi');

-- Insert borrowed books
INSERT INTO BorrowedBooks (BookID, MemberID, BorrowDate)
VALUES
(1, 1, '2025-07-01'),
(2, 2, '2025-07-03'),
(4, 3, '2025-07-05'),
(3, 1, '2025-07-10'),
(5, 4, '2025-07-12');
