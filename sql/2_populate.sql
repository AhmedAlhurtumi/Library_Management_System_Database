-- Insert into country
INSERT INTO country (name) VALUES
('United States'),
('United Kingdom'),
('France'),
('Japan');

-- Insert into author
INSERT INTO author (name, birthdate, country_id) VALUES
('J.K. Rowling', '1965-07-31', 2),
('George Orwell', '1903-06-25', 2),
('Haruki Murakami', '1949-01-12', 4),
('Ernest Hemingway', '1899-07-21', 1);

-- Insert into category
INSERT INTO category (name) VALUES
('Fiction'),
('Science Fiction'),
('Fantasy'),
('History'),
('Mystery');

-- Insert into book
INSERT INTO book (title, ISBN, publisher, publication_year, category_id, total_copies, available_copies) VALUES
('Harry Potter and the Philosopher''s Stone', '9780747532699', 'Bloomsbury', 1997, 3, 10, 8),
('1984', '9780451524935', 'Secker & Warburg', 1949, 2, 7, 5),
('Kafka on the Shore', '9781400079278', 'Shinchosha', 2002, 1, 6, 4),
('The Old Man and the Sea', '9780684801223', 'Charles Scribner''s Sons', 1952, 1, 5, 5);

-- Insert into book_author
INSERT INTO book_author (book_id, author_id) VALUES
(1, 1), -- Harry Potter - Rowling
(2, 2), -- 1984 - Orwell
(3, 3), -- Kafka on the Shore - Murakami
(4, 4); -- Old Man and the Sea - Hemingway

-- Insert into member
INSERT INTO member (name, email, phone, address, membership_date) VALUES
('Alice Johnson', 'alice@example.com', '1234567890', '123 Main St', '2023-01-15'),
('Bob Smith', 'bob@example.com', '9876543210', '456 Oak Ave', '2023-02-20'),
('Charlie Brown', 'charlie@example.com', '5551234567', '789 Pine Rd', '2023-03-10');

-- Insert into librarian
INSERT INTO librarian (name, email, phone, hire_date) VALUES
('Emma Davis', 'emma.librarian@example.com', '1112223333', '2021-06-01'),
('James Wilson', 'james.librarian@example.com', '4445556666', '2022-09-15');

-- Insert into loan
INSERT INTO loan (loan_date, due_date, return_date, status, member_id, book_id, librarian_id) VALUES
('2023-04-01', '2023-04-15', '2023-04-14', 'Returned', 1, 1, 1),
('2023-05-05', '2023-05-19', NULL, 'Borrowed', 2, 2, 2),
('2023-06-10', '2023-06-24', '2023-06-26', 'Overdue Returned', 3, 3, 1);

-- Insert into fine
INSERT INTO fine (amount, issue_date, due_date, status, loan_id) VALUES
(0.00, '2023-04-15', '2023-04-15', 'Paid', 1),
(0.00, '2023-05-19', '2023-05-19', 'None', 2),
(5.00, '2023-06-24', '2023-07-01', 'Unpaid', 3);
