
USE alx_book_store;

-- Create author table
CREATE TABLE IF NOT EXISTS author (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    author_name VARCHAR(215) NOT NULL
);

-- Create book table
CREATE TABLE IF NOT EXISTS book (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(130) NOT NULL,
    author_id INT NOT NULL,
    price DOUBLE NOT NULL,
    publication_date DATE,
    FOREIGN KEY (author_id) REFERENCES author(author_id)
);

-- Create customer table
CREATE TABLE IF NOT EXISTS customer (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(215) NOT NULL,
    email VARCHAR(215) UNIQUE NOT NULL,
    address TEXT
);

-- Create order_table (since "order" is a reserved keyword in MySQL)
CREATE TABLE IF NOT EXISTS order_table (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    order_date DATE NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

-- Create order_detail table
CREATE TABLE IF NOT EXISTS order_detail (
    orderdetailid INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT NOT NULL,
    book_id INT NOT NULL,
    quantity DOUBLE NOT NULL,
    FOREIGN KEY (order_id) REFERENCES order_table(order_id),
    FOREIGN KEY (book_id) REFERENCES book(book_id)
);