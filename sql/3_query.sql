-- =====================================================
-- LIBRARY MANAGEMENT SYSTEM - BASIC QUERIES
-- =====================================================

-- =====================
-- 1. SELECT QUERIES
-- =====================

-- List all books
SELECT * FROM book;

-- List all members
SELECT * FROM member;

-- List all librarians
SELECT * FROM librarian;

-- List all authors
SELECT * FROM author;

-- List all categories
SELECT * FROM category;

-- =====================
-- 2. INSERT QUERIES
-- =====================

-- Add a new member
INSERT INTO member (name, email, phone, address, membership_date)
VALUES ('David Green', 'david@example.com', '7778889999', '321 Elm St', '2025-10-03');

-- Add a new book
INSERT INTO book (title, ISBN, publisher, publication_year, category_id, total_copies, available_copies)
VALUES ('The Hobbit', '9780007458424', 'Allen & Unwin', 1937, 3, 8, 8);

-- Add a new author
INSERT INTO author (name, birthdate, country_id)
VALUES ('J.R.R. Tolkien', '1892-01-03', 2);

-- =====================
-- 3. UPDATE QUERIES
-- =====================

-- Update available copies after a loan
UPDATE book
SET available_copies = available_copies - 1
WHERE book_id = 1;

-- Mark a loan as returned
UPDATE loan
SET status = 'Returned', return_date = CURDATE()
WHERE loan_id = 2;

-- Update fine status
UPDATE fine
SET status = 'Paid'
WHERE fine_id = 3;
