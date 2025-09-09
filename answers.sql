-- Question 1 
-- Get firstName, lastName, email, and officeCode for all employees
-- Using INNER JOIN on employees.officeCode = offices.officeCode
SELECT
  e.firstName,
  e.lastName,
  e.email,
  e.officeCode
FROM employees AS e
INNER JOIN offices AS o
  ON e.officeCode = o.officeCode;

-- Question 2
-- Get productName, productVendor, productLine from products
-- Using LEFT JOIN to include products even if no matching product line record
SELECT
  p.productName,
  p.productVendor,
  p.productLine
FROM products AS p
LEFT JOIN productlines AS pl
  ON p.productLine = pl.productLine;

-- Question 3
-- Retrieve orderDate, shippedDate, status, customerNumber for the first 10 orders
-- RIGHT JOIN so all orders show even if a customer row is missing
SELECT
  o.orderDate,
  o.shippedDate,
  o.status,
  o.customerNumber
FROM customers AS c
RIGHT JOIN orders AS o
  ON c.customerNumber = o.customerNumber
ORDER BY o.orderDate
LIMIT 10;
