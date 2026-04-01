/* =====================================================
   FILE 01: SQL BASICS
   TOPICS: SELECT, DISTINCT, ALIASES, EXPRESSIONS
   DATABASE: ECOMMERCE
   ===================================================== */


/* -------------------- EASY LEVEL -------------------- */

-- Q1: Show all product names
SELECT product_name 
FROM products;

-- Q2: Show product name and price
SELECT product_name, unit_price 
FROM products;

-- Q3: Show all columns from customers
SELECT * 
FROM customers;

-- Q4: Show unique countries from customers
SELECT DISTINCT country 
FROM customers;


/* -------------------- MEDIUM LEVEL -------------------- */

-- Q5: Show product names with alias 'name'
SELECT product_name AS name 
FROM products;

-- Q6: Show product name and price with alias 'price'
SELECT product_name, unit_price AS price 
FROM products;

-- Q7: Show product name and doubled price
SELECT product_name, unit_price * 2 AS double_price 
FROM products;

-- Q8: Show unique product IDs from order_items
SELECT DISTINCT product_id 
FROM order_items;


/* -------------------- INTERVIEW LEVEL -------------------- */

-- Q9: Show product name and price with 18% tax
SELECT product_name, unit_price * 1.18 AS price_with_tax
FROM products;

-- Q10: Show unique combinations of customer_id and order_date
SELECT DISTINCT customer_id, order_date
FROM orders;

-- Q11: Show product name and adjusted price (1.5x)
SELECT product_name, unit_price * 1.5 AS adjusted_price 
FROM products;

-- Q12: Show all countries in uppercase
SELECT UPPER(country) AS country_upper
FROM customers;



