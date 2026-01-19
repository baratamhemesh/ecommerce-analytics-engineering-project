USE ecommerce_db;
GO

-- Dimension tables
SELECT customer_id, city, signup_date
INTO analytics.dim_customers
FROM raw.customers;

SELECT product_id, product_name, category
INTO analytics.dim_products
FROM raw.products;

SELECT DISTINCT
    order_date AS date,
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    DATENAME(month, order_date) AS month_name,
    DATEPART(quarter, order_date) AS quarter
INTO analytics.dim_date
FROM raw.orders;

-- Fact table
SELECT 
    o.order_id,
    o.customer_id,
    oi.product_id,
    o.order_date,
    oi.quantity,
    (oi.quantity * oi.price) AS revenue
INTO analytics.fact_orders
FROM raw.orders o
LEFT JOIN raw.order_items oi
ON o.order_id = oi.order_id;
