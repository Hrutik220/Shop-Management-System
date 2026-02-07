USE shop_db;

-- Insert Products
INSERT INTO products (product_name, price, stock) VALUES
('Laptop', 55000.00, 10),
('Mobile', 20000.00, 25),
('Headphones', 1500.00, 50),
('Keyboard', 800.00, 40),
('Mouse', 500.00, 60);

-- Insert Customers
INSERT INTO customers (name, phone, city) VALUES
('Rahul Sharma', '9876543210', 'Mumbai'),
('Sneha Patil', '9123456780', 'Pune'),
('Amit Joshi', '9988776655', 'Nagpur');

-- Insert Orders
INSERT INTO orders (customer_id, order_date, total_amount) VALUES
(1, '2026-02-01', 56500.00),
(2, '2026-02-03', 20000.00),
(3, '2026-02-05', 2300.00);

-- Insert Order Items
INSERT INTO order_items (order_id, product_id, quantity) VALUES
(1, 1, 1),
(1, 5, 1),
(2, 2, 1),
(3, 3, 1),
(3, 4, 1);
