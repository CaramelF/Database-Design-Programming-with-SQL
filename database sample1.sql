-- Insert sample data into COUNTRY
INSERT INTO country (country_name, country_code) VALUES
('South Africa', 'SA'),
('Lesotho', 'L'),
('Swaziland', 'SW'),
('Australia', 'AU');

-- Insert sample data into ADDRESS_STATUS
INSERT INTO address_status (status_name) VALUES
('Primary'),
('Billing'),
('Shipping'),
('Former');

-- Insert sample data into BOOK_LANGUAGE
INSERT INTO book_language (language_name) VALUES
('isiZulu'),
('SeSotho'),
('isiXhosa'),
('TshiVenda'),
('English');

-- Insert sample data into PUBLISHER
INSERT INTO publisher (name, email, phone) VALUES
('Penguin Random House', 'info@penguinrandomhouse.com', '021-875-9870'),
('HarperCollins', 'contact@harpercollins.com', '127-675-8943'),
('Simon & Schuster', 'info@simonschuster.com', '076-654-9812'),
('Macmillan Publishers', 'contact@macmillan.com', '087-546-1245');

-- Insert sample data into AUTHOR
INSERT INTO author (first_name, last_name, biography) VALUES
('Stephen', 'King', 'Stephen King is an American author of horror, supernatural fiction, suspense, crime, science-fiction, and fantasy novels.'),
('J.K.', 'Rowling', 'J.K. Rowling is a British author, philanthropist, film producer, and screenwriter, best known for writing the Harry Potter fantasy series.'),
('Zandile', 'Patterson', 'Zandile Patterson is an South African author and philanthropist.'),
('Kary', 'Williams', 'Kary Williams is an South African attorney and author from 2009 to 2017.');

-- Insert sample data into BOOK
INSERT INTO book (title, publisher_id, language_id, isbn, price, publication_date, description) VALUES
('The Shining', 1, 1, '9780307743657', 119.99, '1977-01-28', 'The Shining is a horror novel by American author Stephen King.'),
('Harry Potter and the Philosopher''s Stone', 2, 1, '9780747532743', 129.99, '1997-06-26', 'The first novel in the Harry Potter series.'),
('Along Came a Spider', 3, 1, '9780446364195', 159.99, '1993-02-01', 'First book in the Alex Cross series.'),
('Becoming', 4, 1, '9781524763138', 159.99, '2018-11-13', 'Memoir of former First Lady of the United States Michelle Obama.');

-- Insert sample data into BOOK_AUTHOR
INSERT INTO book_author (book_id, author_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4);

-- Insert sample data into ORDER_STATUS
INSERT INTO order_status (status_name) VALUES
('Pending'),
('Processing'),
('Shipped'),
('Delivered'),
('Cancelled');

-- Insert sample data into SHIPPING_METHOD
INSERT INTO shipping_method (method_name, cost) VALUES
('Standard Shipping', 99.99),
('Express Shipping', 129.99),
('Next Day Delivery', 139.99),
('Store Pickup', 0.00);

-- Insert sample data into CUSTOMER
INSERT INTO customer (first_name, last_name, email, phone, registration_date) VALUES
('John', 'Doe', 'john.doe@example.com', '078 574 9987', '2022-01-15'),
('Jane', 'Smith', 'jane.smith@example.com', '079 456 2312', '2022-02-20'),
('Michael', 'Johnson', 'michael.johnson@example.com', '067 456 3321', '2022-03-10'),
('Emily', 'Williams', 'emily.williams@example.com', '086 114 2651', '2022-04-05');

-- Insert sample data into ADDRESS
INSERT INTO address (street_number, street_name, city, state, postal_code, country_id) VALUES
('123', 'Main St', 'Mbabane', 'M', '10001', 1),
('456', 'Maple St', 'Maseru', 'ON', 'M5V 2H1', 2),
('789', 'Oxford St', 'Johannesburg', NULL, 'W1D 1BS', 3),
('101', 'Elizabeth St', 'Sydney', 'NSW', '2000', 4),
('202', 'Forest St', 'Nhlangano', 'N', '10012', 1);

-- Insert sample data into CUSTOMER_ADDRESS
INSERT INTO customer_address (customer_id, address_id, address_status_id) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(1, 5, 3);

-- Insert sample data into CUST_ORDER
INSERT INTO cust_order (customer_id, shipping_method_id, order_status_id, order_total, shipping_address_id) VALUES
(1, 1, 3, 44.98, 1),
(2, 2, 2, 34.98, 2),
(3, 3, 1, 52.49, 3),
(4, 1, 4, 37.49, 4);

-- Insert sample data into ORDER_LINE
INSERT INTO order_line (order_id, book_id, quantity, price) VALUES
(1, 1, 1, 99.99),
(1, 2, 1, 89.99),
(2, 3, 1, 119.99),
(2, 4, 1, 159.99),
(3, 2, 1, 99.99),
(3, 3, 1, 59.99),
(4, 1, 1, 39.99),
(4, 3, 1, 49.99);

-- Insert sample data into ORDER_HISTORY
INSERT INTO order_history (order_id, order_status_id, notes) VALUES
(1, 1, 'Order placed'),
(1, 2, 'Payment confirmed'),
(1, 3, 'Order shipped via Courier Guy'),
(2, 1, 'Order placed'),
(2, 2, 'Processing for shipment'),
(3, 1, 'Awaiting payment confirmation'),
(4, 1, 'Order placed'),
(4, 2, 'Payment confirmed'),
(4, 3, 'Order shipped via Courier Guy'),
(4, 4, 'Delivered to customer');