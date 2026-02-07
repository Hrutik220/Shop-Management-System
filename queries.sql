USE shop_db;

-- 1️⃣ Show all customers with their orders
SELECT customers.name, orders.order_id, orders.order_date, orders.total_amount
FROM customers
JOIN orders ON customers.customer_id = orders.customer_id;

-- 2️⃣ Show product details in each order
SELECT orders.order_id, products.product_name, order_items.quantity
FROM order_items
JOIN products ON order_items.product_id = products.product_id
JOIN orders ON order_items.order_id = orders.order_id;

-- 3️⃣ Total quantity sold per product
SELECT products.product_name, SUM(order_items.quantity) AS total_sold
FROM order_items
JOIN products ON order_items.product_id = products.product_id
GROUP BY products.product_name;

-- 4️⃣ Show total spending by each customer
SELECT customers.name, SUM(orders.total_amount) AS total_spent
FROM customers
JOIN orders ON customers.customer_id = orders.customer_id
GROUP BY customers.name;

-- 5️⃣ Find the most expensive product
SELECT product_name, price
FROM products
ORDER BY price DESC
LIMIT 1;
