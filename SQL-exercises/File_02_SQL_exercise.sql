/* =====================================================
   FILE 02: WHERE, OPERATORS, AND/OR/NOT
   ===================================================== */


/* Q1: Show all products with price greater than 100 */
SELECT * 
FROM products 
WHERE unit_price > 100;

/* Q2: Show all customers from 'India' */
SELECT * 
FROM customers 
WHERE country = 'India';

/* Q3: Show all orders with customer_id = 1 */
SELECT * 
FROM orders 
WHERE customer_id = 1;

/* Q4: Show products with price <= 500 */
SELECT * 
FROM products
WHERE unit_price <= 500;

/* Q5: Show products with price between 100 and 500 */
SELECT * 
FROM products
WHERE unit_price BETWEEN 100 AND 500;

/* Q6: Show customers NOT from India */
SELECT * 
FROM customers
WHERE country != 'India';

/* Q7: Show orders where customer_id > 5 */
SELECT * 
FROM orders
WHERE customer_id > 5;

/* Q8: Show products where price is not 200 */
SELECT * 
FROM products 
WHERE unit_price != 200;

/* Q9: Show customers from India OR USA */
SELECT * 
FROM customers
WHERE country IN ('India', 'USA');

/* Q10: Show products with price between 100 and 1000 */
SELECT * 
FROM products
WHERE unit_price > 100 AND unit_price < 1000;

/* Q11: Show orders where customer_id is not 3 */
SELECT * 
FROM orders
WHERE customer_id != 3;

/* Q12: Show customers not from India and not from USA */
SELECT * 
FROM customers
WHERE country != 'India' 
  AND country != 'USA';

/* Q13: Show products with price greater than 100 OR less than 50 */
SELECT * 
FROM products
WHERE unit_price > 100 
   OR unit_price < 50;

/* Q14: Show customers from India or USA with customer_id > 2 */
SELECT * 
FROM customers 
WHERE country IN ('India', 'USA') 
  AND customer_id > 2;
