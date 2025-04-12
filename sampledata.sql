
-- book_language
INSERT INTO book_language (language_name) VALUES
('English'),
('French'),
('Spanish'),
('German'),
('Swahili');

-- publisher
INSERT INTO publisher (publisher_name, address, email) VALUES
('Pearson Publishing', '221B Baker Street, London', 'contact@pearson.com'),
('Penguin Random House', 'New York, NY', 'info@penguinrandomhouse.com'),
('O’Reilly Media', 'Sebastopol, CA', 'support@oreilly.com'),
('Longhorn Publishers', 'Kijabe Street, Nairobi', 'info@longhorn.co.ke'),
('Oxford University Press', 'Great Clarendon St, Oxford', 'oxford@oup.com');

-- author
INSERT INTO author (first_name, last_name, bio) VALUES
('George', 'Orwell', 'Wrote 1984 and Animal Farm.'),
('Jane', 'Austen', 'English novelist known for romantic fiction.'),
('Haruki', 'Murakami', 'Magical realism master from Japan.'),
('Chinua', 'Achebe', 'Wrote Things Fall Apart.'),
('Ngugi', 'wa Thiong'o', 'Kenyan writer and academic.');

-- country
INSERT INTO country (country_name) VALUES
('Kenya'),
('USA'),
('UK'),
('Japan'),
('Germany');

-- address_status
INSERT INTO address_status (status_name) VALUES
('current'),
('old'),
('billing'),
('shipping'),
('temporary');

-- shipping_method
INSERT INTO shipping_method (method_name) VALUES
('Standard'),
('Express'),
('Same-day'),
('Pickup'),
('Overnight');

-- order_status
INSERT INTO order_status (status_name) VALUES
('Pending'),
('Shipped'),
('Delivered'),
('Cancelled'),
('Returned');

-- book
INSERT INTO book (title, author, isbn, genre, publication_date, price, stock_quantity, language, publisher) VALUES
('1984', 'George Orwell', '9780451524935', 'Dystopian', '1949-06-08', 14.99, 100, 'English', 'Penguin Random House'),
('Pride and Prejudice', 'Jane Austen', '9780141439518', 'Romance', '1813-01-28', 12.50, 80, 'English', 'Penguin Random House'),
('Kafka on the Shore', 'Haruki Murakami', '9781400079278', 'Fiction', '2002-09-12', 18.00, 50, 'English', 'O’Reilly Media'),
('Things Fall Apart', 'Chinua Achebe', '9780385474542', 'Historical Fiction', '1958-05-01', 11.99, 70, 'English', 'Longhorn Publishers'),
('Petals of Blood', 'Ngugi wa Thiong'o', '9780435908442', 'Political Fiction', '1977-01-01', 15.75, 60, 'Swahili', 'Longhorn Publishers');

-- book_author
INSERT INTO book_author (book_id, author_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- customers
INSERT INTO customers (first_name, last_name, email, phone) VALUES
('Alice', 'Wanjiku', 'alice@example.com', '0712345678'),
('John', 'Doe', 'john@example.com', '0722334455'),
('Sarah', 'Kamau', 'sarah.k@example.com', '0700001111'),
('James', 'Mwangi', 'jmwangi@gmail.com', '0799002233'),
('Linda', 'Okello', 'linda.okello@example.com', '0788123456');

-- addresses
INSERT INTO addresses (street, city, state, country) VALUES
('123 Moi Avenue', 'Nairobi', 'Nairobi', 'Kenya'),
('456 Kenyatta Road', 'Mombasa', 'Coast', 'Kenya'),
('789 Ngong Lane', 'Nairobi', 'Nairobi', 'Kenya'),
('101 First Street', 'Eldoret', 'Rift Valley', 'Kenya'),
('Central Business Park', 'Kisumu', 'Nyanza', 'Kenya');

-- customer_address
INSERT INTO customer_address (customer_id, address_id, status_id) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1);

-- cust_order
INSERT INTO cust_order (customer_id, shipping_method_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- order_line
INSERT INTO order_line (order_id, book_id, quantity, price) VALUES
(1, 1, 2, 29.98),
(1, 2, 1, 12.50),
(2, 3, 1, 18.00),
(3, 4, 3, 35.97),
(4, 5, 2, 31.50);

-- order_history
INSERT INTO order_history (order_id, status_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 1),
(5, 4);
