BookStore DataBase Project(MySQL)

OverView
This project is about creating a MySQL database for a bookstore. It includes tasks like designing how the database will be organised, creating tables, adding data, managing who can access the database, and running searches to find information.

Goal
Build a database to keep track of all the important information a bookstore needs, like books, authors, customers, orders, shipping, and more.

Tools Used
-  MySQL
To build and manage the database
- Draw.io
To design the entity relationship diagram (ERD)
-  SQL
To create tables, add data, and run queries

Key Features
-  Organised database with related tables
-  Supports many to many relationships(like books written by more than one author)
-  Sample data for testing and running reports
-  Manages different users and their roles


Tables in the Database
Table Name -----------------	What It Stores
book	                  -     Book info like price, ISBN, and language
book_author	            -     Connects books to their authors
author	                -     Names of authors
book_language           -	    List of book languages
publisher	              -     Info about publishers
customer	              -     Customer details
customer_address	      _     Links customers to their addresses and if they’re                                 current or old
address_status	        -     Tells if an address is current or old
address	                -     Address details and country
country	                -     List of countries
cust_order	            -     Orders made by customers
order_line	            -     Which books are in each order
shipping_method	        -     Ways to ship books
order_history	          -     Order status history
order_status	          -     Current stage of each order (like pending, shipped)

In this Bookstore Database, all the tables are linked together in a way that helps keep the information clear, organised, and easy to work with. Books are connected to authors using a table called book_author. This is because one book can be written by more than one author, and one author can write many books. So, instead of storing all author names in the book table, we connect them through a separate table.

Each book is also linked to a publisher. The publisher’s information is stored in the publisher table, and the connection is made using publisher_id. Books are also written in different languages, and we keep a list of those in the book_language table. Each book is linked to one language through language_id.

Customers can have more than one address for example, a home address and a delivery address. These are managed through a table called customer_address, which links each customer to their addresses. We also use a table called address_status to show whether an address is current or old.

Customers can have more than one address for example, a home address and a delivery address. These are managed through a table called customer_address, which links each customer to their addresses. We also use a table called address_status to show whether an address is current or old.

To show which books are included in each order, we use the order_line table. This table lists the books in the order, how many copies of each book were ordered, and the price.

We also track the progress of each order over time in the order_history table. This helps us see when an order was placed, when it was shipped, and when it was delivered.

Overall, the tables work together to help the bookstore keep track of its books, customers, orders, deliveries, and more all in an organised and efficient way.
