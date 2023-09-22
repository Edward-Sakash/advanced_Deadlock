In a library management system:
When two librarians try to update the details of the same book at the same time, they shouldn't interfere with each other's updates.
Use the following table and Data:

CREATE TABLE books (
    id INT PRIMARY KEY,
    title VARCHAR(100),
    last_updated TIMESTAMP,
    updated_by INT
);

-- Sample data
INSERT INTO books (id, title, last_updated, updated_by)
VALUES 
(1, 'SQL Basics', NOW(), NULL),
(2, 'Advanced SQL', NOW(), NULL);


Use two sessions to confirm, that an operation has to wait for the other operation. Which Lock is used?
Create a Deadlock here. Use two sessions here. start each operation with an transaction.