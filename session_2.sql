-- Start a transaction in Session 2
BEGIN;

-- Update book 1 in Session 2
UPDATE books SET title = 'SQL Basics (Updated by Librarian 2)', last_updated = NOW(), updated_by = 2 WHERE id = 1;
-- Session 2 now tries to update the same book that Session 1 is holding a lock on

-- Now, let's try to update book 2 in Session 2 as well (to create a deadlock)
UPDATE books SET title = 'Advanced SQL (Updated by Librarian 2)', last_updated = NOW(), updated_by = 2 WHERE id = 2;
-- Session 2 now holds a lock on book 2

-- Session 2 also simulates a delay by not committing the transaction
-- At this point, Session 2 holds locks on books 1 and 2
