-- Start a transaction in Session 1
BEGIN;

-- Update book 1 in Session 1
UPDATE books SET title = 'SQL Basics (Updated by Librarian 1)', last_updated = NOW(), updated_by = 1 WHERE id = 1;
-- Session 1 now holds a lock on book 1

-- Now, let's simulate a delay to hold the lock
-- You can do this by not committing the transaction in Session 1 for a while

-- In the meantime, let's start Session 2

