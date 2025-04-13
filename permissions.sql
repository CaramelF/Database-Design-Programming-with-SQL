-- Create admin user with full privileges
CREATE USER 'bookstore_admin'@'localhost' IDENTIFIED BY 'admin_password';
GRANT ALL PRIVILEGES ON bookstore.* TO 'bookstore_admin'@'localhost';

-- Create staff user with read/write access but no structural changes
CREATE USER 'bookstore_staff'@'localhost' IDENTIFIED BY 'staff_password';
GRANT SELECT, INSERT, UPDATE, DELETE ON bookstore.* TO 'bookstore_staff'@'localhost';

-- Create reporting user with read-only access
CREATE USER 'bookstore_reports'@'localhost' IDENTIFIED BY 'reports_password';
GRANT SELECT ON bookstore.* TO 'bookstore_reports'@'localhost';

-- Create API user with specific table access
CREATE USER 'bookstore_api'@'%' IDENTIFIED BY 'api_password';
GRANT SELECT ON bookstore.book TO 'bookstore_api'@'%';
GRANT SELECT ON bookstore.author TO 'bookstore_api'@'%';
GRANT SELECT ON bookstore.book_author TO 'bookstore_api'@'%';
GRANT SELECT ON bookstore.publisher TO 'bookstore_api'@'%';
GRANT SELECT ON bookstore.book_language TO 'bookstore_api'@'%';

-- Apply changes
FLUSH PRIVILEGES;