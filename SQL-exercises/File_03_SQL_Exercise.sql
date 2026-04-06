/* =====================================================
   FILE 04: ADVANCED FILTERING (LIKE, BETWEEN, IN)
   ===================================================== */


/* Q1: Show customers whose name starts with 'A' */
SELECT * 
FROM customers
WHERE customer_name LIKE 'A%';

/* Q2: Show customers whose name ends with 'n' */
SELECT * 
FROM customers
WHERE customer_name LIKE '%n';

/* Q3: Show customers whose name contains 'ar' */
SELECT * 
FROM customers
WHERE customer_name LIKE '%ar%';

/* Q4: Show products with price between 100 and 500 */
SELECT * 
FROM products
WHERE unit_price BETWEEN 100 AND 500;

/* Q5: Show orders placed between '2023-01-01' and '2023-12-31' */
SELECT * 
FROM orders
WHERE order_date BETWEEN '2023-01-01' AND '2023-12-31';

/* Q6: Show customers from India, USA, or UK */
SELECT * 
FROM customers
WHERE country IN ('India', 'USA', 'UK');

/* Q7: Show customers NOT from India, USA, or UK */
SELECT * 
FROM customers
WHERE country NOT IN ('India', 'USA', 'UK');

/* Q8: Show products with price not between 200 and 400 */
SELECT * 
FROM products
WHERE unit_price NOT BETWEEN 200 AND 400;

/* Q9: Show customers whose name has exactly 5 characters */
SELECT * 
FROM customers
WHERE customer_name LIKE '_____';

/* Q10: Show customers whose name starts with 'A' and ends with 'n' */
SELECT * 
FROM customers
WHERE customer_name LIKE 'A%n';

/* Q11: Show customers whose name does not contain 'a' */
SELECT * 
FROM customers
WHERE customer_name NOT LIKE '%a%';

/* Q12: Show products with price in (100, 200, 300) */
SELECT * 
FROM products
WHERE unit_price IN (100, 200, 300);
