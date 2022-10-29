SELECT *
FROM orders
WHERE ship_country LIKE 'U%';

SELECT order_id, customer_id, ship_country, freight
FROM orders
WHERE ship_country LIKE 'N%'
ORDER BY freight DESC
LIMIT 10;

SELECT first_name, last_name, home_phone, region
FROM employees
WHERE region IS NULL;

SELECT COUNT(company_name)
FROM customers
WHERE region IS NOT NULL;

SELECT COUNT(company_name), country
FROM suppliers
GROUP BY country
ORDER BY COUNT(country) DESC;

SELECT ship_country, SUM(freight)
FROM orders
WHERE ship_region IS NOT NULL
GROUP BY ship_country
HAVING SUM(freight) > 2750
ORDER BY SUM(freight) DESC;

SELECT country
FROM suppliers
UNION
SELECT country
from customers
ORDER BY country;

SELECT country
FROM suppliers
INTERSECT
SELECT country
from customers
INTERSECT
SELECT country
FROM employees;

SELECT country
FROM suppliers
INTERSECT
SELECT country
from customers
EXCEPT
SELECT country
FROM employees;



