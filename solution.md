Session A:
Begin;
update books set title = 'Bla1' where id = 1;
Session B:
Begin;
update books set title = 'Bla2' where id = 2;
update books set title = 'Bla1' where id = 1; -- this is block by session 1
Session A:
update books set title = 'Bla2' where id = 2; -- this is blocked by session 2 ----> DEADLOCK

