/* =====================================================
   DAY 3: LIKE, IN, BETWEEN, NULL
   DATABASE: ECOMMERCE
   STATUS: FINAL (CORRECTED)
   ===================================================== */


/* -------------------- EASY LEVEL -------------------- */

/* Q1: Show products whose name starts with 'S' */
SELECT * FROM products
WHERE product_name LIKE 'S%';

/* Q2: Show customers from India or USA using IN */
SELECT * FROM customers
WHERE country IN ('India', 'USA');

/* Q3: Show products with price between 200 and 800 */
SELECT * FROM products
WHERE unit_price BETWEEN 200 AND 800;

/* Q4: Show customers where country is NULL */
SELECT * FROM customers 
WHERE country IS NULL;


/* -------------------- MEDIUM LEVEL -------------------- */

/* Q5: Show products whose name ends with 'e' */
SELECT * FROM products 
WHERE product_name LIKE '%e';

/* Q6: Show products whose name contains 'pro' */
SELECT * FROM products
WHERE product_name LIKE '%pro%';

/* Q7: Show customers NOT from India, USA, UK */
SELECT * FROM customers 
WHERE country NOT IN ('India','USA','UK');

/* Q8: Show products with price NOT between 100 and 500 */
SELECT * FROM products
WHERE unit_price NOT BETWEEN 100 AND 500;


/* -------------------- INTERVIEW LEVEL -------------------- */

/* Q9: Show products where name has 'a' as second character */
SELECT * FROM products
WHERE product_name LIKE '_a%';

/* Q10: Show customers where country is NOT NULL */
SELECT * FROM customers
WHERE country IS NOT NULL;

/* Q11: Show products with price between 100 and 500 AND name starts with 'A' */
SELECT * FROM products
WHERE unit_price BETWEEN 100 AND 500 
  AND product_name LIKE 'A%';

/* Q12: Show customers whose country is India, USA OR NULL */
SELECT * FROM customers
WHERE country IN ('India', 'USA')
   OR country IS NULL;

/* Q13: Show products whose name starts with 'S' OR ends with 'n' */
SELECT * FROM products 
WHERE product_name LIKE 'S%' 
   OR product_name LIKE '%n';

/* Q14: Show products whose name has exactly 5 characters */
SELECT * FROM products
WHERE product_name LIKE '_____';


/* =====================================================
   DAY 3 LEARNINGS (REVISE BEFORE INTERVIEW)
   ===================================================== */

/*
1. LIKE Patterns:
   'A%'   → starts with A
   '%A'   → ends with A
   '%A%'  → contains A
   '_'    → exactly one character
   '_____' → exactly 5 characters

2. IN vs OR:
   Avoid:
     country = 'India' OR country = 'USA'
   Prefer:
     country IN ('India', 'USA')

3. BETWEEN:
   unit_price BETWEEN 100 AND 500
   = unit_price >= 100 AND unit_price <= 500

4. NOT BETWEEN:
   unit_price < 100 OR unit_price > 500

5. NULL Handling (CRITICAL):
   WRONG:
     country = NULL
   CORRECT:
     country IS NULL
     country IS NOT NULL

6. Combining NULL with conditions:
   country IN ('India','USA') OR country IS NULL

7. Interview Tip:
   NULL is NOT equal to anything (even another NULL)

8. Clean SQL Writing:
   - Use IN instead of multiple OR
   - Avoid unnecessary parentheses
   - Format queries properly
*/
