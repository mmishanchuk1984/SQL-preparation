SELECT *
FROM orders
WHERE ship_country IN ('Austria', 'Spain', 'France');

SELECT *
FROM orders
ORDER BY required_date DESC, shipped_date ASC;

SELECT product_name, units_in_stock
FROM products
WHERE units_in_stock > 30
ORDER BY units_in_stock ASC
LIMIT 1;

SELECT product_name, units_in_stock
FROM products
WHERE units_in_stock > 30
ORDER BY units_in_stock DESC
LIMIT 1;

SELECT AVG (shipped_date - order_date) AS avg_days
FROM orders
WHERE ship_country =  'USA';

SELECT SUM (unit_price * units_in_stock )
FROM products
WHERE discontinued != 1;

