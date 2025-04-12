CREATE ROLE 'bookstore_admin';
CREATE ROLE 'bookkeeper';
CREATE ROLE 'reader';

CREATE USER 'Alice'@'localhost' IDENTIFIED BY 'adminpass';
CREATE USER 'Peterson'@'localhost' IDENTIFIED BY 'bookkeeperpass';
CREATE USER 'Stephen'@'localhost' IDENTIFIED BY 'readerpass';

GRANT ALL PRIVILEGES ON bookstoredb.* TO 'Alice'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON bookstoredb.* TO 'Peterson'@'localhost';
GRANT SELECT ON bookstoredb.* TO 'Stephen'@'localhost';

GRANT 'bookstore_admin' TO 'Alice'@'localhost';
GRANT 'bookkeeper' TO 'Peterson'@'localhost';
GRANT 'reader' TO 'Stephen'@'localhost';


SET DEFAULT ROLE 'bookstore_admin' TO 'Alice'@'localhost';
SET DEFAULT ROLE 'bookkeeper' TO 'Peterson'@'localhost';
SET DEFAULT ROLE 'reader' TO 'Stephen'@'localhost';


