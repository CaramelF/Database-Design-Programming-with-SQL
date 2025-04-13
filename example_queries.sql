-- 1. Find all books by a specific author
SELECT b.book_id, b.title, b.isbn, b.price
FROM book b
JOIN book_author ba ON b.book_id = ba.book_id
JOIN author a ON ba.author_id = a.author_id
WHERE a.last_name = 'King';

-- 2. Get total sales by book
SELECT b.title, SUM(ol.quantity) AS total_sold, SUM(ol.quantity * ol.price) AS total_revenue
FROM book b
JOIN order_line ol ON b.book_id = ol.book_id
GROUP BY b.book_id, b.title
ORDER BY total_revenue DESC;

-- 3. Find customers who have spent more than $50
SELECT c.customer_id, c.first_name, c.last_name, SUM(co.order_total) AS total_spent
FROM customer c
JOIN cust_order co ON c.customer_id = co.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
HAVING total_spent > 50
ORDER BY total_spent DESC;

-- 4. Get order history with status changes
SELECT co.order_id, c.first_name, c.last_name, os.status_name, oh.status_date
FROM cust_order co
JOIN customer c ON co.customer_id = c.customer_id
JOIN order_history oh ON co.order_id = oh.order_id
JOIN order_status os ON oh.order_status_id = os.order_status_id
ORDER BY co.order_id, oh.status_date;

-- 5. Find books that haven't been ordered yet
SELECT b.book_id, b.title
FROM book b
LEFT JOIN order_line ol ON b.book_id = ol.book_id
WHERE ol.order_id IS NULL;

-- 6. Get shipping addresses for all orders
SELECT co.order_id, CONCAT(a.street_number, ' ', a.street_name, ', ', a.city, ', ', a.state, ' ', a.postal_code) AS shipping_address,
       co.order_date, os.status_name
FROM cust_order co
JOIN address a ON co.shipping_address_id = a.address_id
JOIN order_status os ON co.order_status_id = os.order_status_id;

-- 7. Create a view for book details with authors
CREATE VIEW book_details AS
SELECT b.book_id, b.title, b.isbn, b.price, b.publication_date,
       GROUP_CONCAT(CONCAT(a.first_name, ' ', a.last_name) SEPARATOR ', ') AS authors,
       p.name AS publisher, bl.language_name
FROM book b
JOIN book_author ba ON b.book_id = ba.book_id
JOIN author a ON ba.author_id = a.author_id
JOIN publisher p ON b.publisher_id = p.publisher_id
JOIN book_language bl ON b.language_id = bl.language_id
GROUP BY b.book_id, b.title, b.isbn, b.price, b.publication_date, p.name, bl.language_name;

-- 8. Query the view
SELECT * FROM book_details;