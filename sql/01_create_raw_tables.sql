USE ecommerce_db;
GO

CREATE SCHEMA raw;

CREATE TABLE raw.customers (
    customer_id INT,
    name VARCHAR(100),
    city VARCHAR(50),
    signup_date DATE
);

CREATE TABLE raw.orders (
    order_id INT,
    customer_id INT,
    order_date DATE,
    total_amount INT
);

CREATE TABLE raw.order_items (
    order_id INT,
    product_id INT,
    quantity INT,
    price INT
);

CREATE TABLE raw.products (
    product_id INT,
    product_name VARCHAR(100),
    category VARCHAR(50)
);
